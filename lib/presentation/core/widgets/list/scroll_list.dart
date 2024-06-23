import 'dart:async';

import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

import '../../theme/app_color.dart';
import '../loading_shimmer/loading_shimmer.dart';

class ScrollList<T> extends StatefulWidget {
  final VoidCallback? onRefresh;
  final VoidCallback? onLoadingMore;
  final bool isLoading;
  final List<T> items;
  final Widget noRecordFoundWidget;
  final Widget header;
  final ScrollController controller;
  final Widget Function(BuildContext context, int index, T item) itemBuilder;
  const ScrollList({
    super.key,
    required this.isLoading,
    required this.itemBuilder,
    required this.items,
    required this.noRecordFoundWidget,
    required this.controller,
    this.header = const SizedBox.shrink(),
    this.onRefresh,
    this.onLoadingMore,
  });

  @override
  State<ScrollList<T>> createState() => _ScrollListState<T>();
}

class _ScrollListState<T> extends State<ScrollList<T>> {
  late ScrollController _controller;

  @override
  void initState() {
    _controller = widget.controller;
    _controller.addListener(
      () {
        if ((_controller.position.pixels >=
                _controller.position.maxScrollExtent) &&
            widget.items.isNotEmpty) {
          widget.onLoadingMore?.call();
        }
      },
    );
    super.initState();
  }

  @override
  void dispose() {
    if (_controller.hasClients) {
      _controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return widget.isLoading && widget.items.isEmpty
        ? Center(
            child: LoadingShimmer.logo(
                //key: WidgetKeys.loaderImage,
                ),
          )
        : RefreshIndicator(
            color: Theme.of(context).primaryColor,
            onRefresh: () async => widget.onRefresh?.call(),
            child: CustomScrollView(
              //key: WidgetKeys.scrollList,
              controller: _controller,
              physics: const AlwaysScrollableScrollPhysics(),
              slivers: [
                SliverToBoxAdapter(
                  child: widget.header,
                ),
                widget.items.isEmpty && !widget.isLoading
                    ? SliverToBoxAdapter(
                        child: widget.noRecordFoundWidget,
                      )
                    : SliverList(
                        delegate: SliverChildBuilderDelegate(
                          (context, index) {
                            final item = widget.items[index];

                            return widget.itemBuilder(context, index, item);
                          },
                          childCount: widget.items.length,
                        ),
                      ),
                if (widget.isLoading)
                  SliverToBoxAdapter(
                    //key: WidgetKeys.loadMoreLoader,
                    child: _LoadingMoreIndicator(
                      controller: _controller,
                    ),
                  ),
              ],
            ),
          );
  }
}

class _LoadingMoreIndicator extends StatelessWidget {
  const _LoadingMoreIndicator({
    super.key,
    required this.controller,
  });

  final ScrollController controller;

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        Timer(
          const Duration(milliseconds: 50),
          () {
            if (controller.hasClients) {
              controller.jumpTo(controller.position.maxScrollExtent);
            }
          },
        );

        return Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(
            vertical: 10,
          ),
          child: LoadingAnimationWidget.discreteCircle(
            color: Theme.of(context).primaryColor,
            secondRingColor: AppColor.orangeSalmon90,
            thirdRingColor: AppColor.dusk90,
            size: 30,
          ),
        );
      },
    );
  }
}
