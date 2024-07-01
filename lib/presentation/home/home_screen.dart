import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/auth/user/user_bloc.dart';
import '../../application/task/manage_task/manage_task_bloc.dart';
import '../../application/task/task_bloc.dart';
import '../../application/task/task_filter/task_filter_bloc.dart';
import '../../domain/core/utils/error_utils.dart';
import '../../domain/core/value/value_objects.dart';
import '../../domain/task/entities/task_entity.dart';
import '../../domain/task/entities/task_filter_entity.dart';
import '../core/router/app_router.gr.dart';
import '../core/router/route_name.dart';
import '../core/theme/app_color.dart';
import '../core/utils/widget_keys.dart';
import '../core/widgets/button/scale_button.dart';
import '../core/widgets/list/scroll_list.dart';
import '../core/widgets/loading_shimmer/loading_shimmer.dart';
import '../core/widgets/no_record_found.dart';
import '../core/widgets/search_bar/custom_search_bar.dart';
import '../core/widgets/slidable/custom_slidable.dart';
import '../core/widgets/tile/custom_tile.dart';

part 'widgets/task_search_bar.dart';
part 'widgets/task_filter.dart';
part 'widgets/task_filter_sheet.dart';
part 'widgets/filter_app_bar.dart';
part 'widgets/task_status_picker.dart';
part 'widgets/filter_reset_button.dart';
part 'widgets/filter_apply_button.dart';
part 'widgets/task_item.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _controller = ScrollController();
  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Task List'),
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        elevation: 4,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(60),
          child: Padding(
            padding: const EdgeInsets.only(
              left: 16,
              right: 16,
            ),
            child: Row(
              children: [
                const _TaskSearchBar(),
                _TaskFilter(),
              ],
            ),
          ),
        ),
      ),
      body: BlocConsumer<TaskBloc, TaskState>(
        listenWhen: (previous, current) =>
            previous.authFailureOrSuccessOption !=
            current.authFailureOrSuccessOption,
        listener: (context, state) {
          state.authFailureOrSuccessOption.fold(
            () {},
            (either) => either.fold(
              (failure) {
                ErrorUtils.handleApiFailure(context, failure);
              },
              (success) {},
            ),
          );
        },
        buildWhen: (previous, current) =>
            previous.isFetching != current.isFetching,
        builder: (context, state) {
          return ScrollList<TaskEntity>(
            isLoading: state.isFetching,
            itemBuilder: (context, index, item) => _TaskItem(item: item),
            items: state.taskList,
            noRecordFoundWidget: const NoRecordFound(
              title: 'There is no new recent items',
              subTitle: '',
            ),
            onLoadingMore: () => context
                .read<TaskBloc>()
                .add(const TaskEvent.loadMoreTaskItem()),
            onRefresh: () => context.read<TaskBloc>().add(
                  TaskEvent.fetchTaskList(
                    user: context.read<UserBloc>().state.user,
                    searchKey: context.read<TaskBloc>().state.searchKey,
                    filter: context.read<TaskBloc>().state.appliedFilter,
                  ),
                ),
            controller: _controller,
          );
        },
      ),
      floatingActionButton: ScaleButton(
        icon: Icons.add,
        label: 'New task',
        onPress: () => context.router.pushNamed(RouteNames.addTask),
        scrollController: _controller,
      ),
    );
  }
}
