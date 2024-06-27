import 'package:hive/hive.dart';

import '../../../domain/core/value/value_objects.dart';

part 'uid_dto.g.dart';

@HiveType(typeId: 0)
class UIDDto {
  UIDDto({required this.uid});

  @HiveField(0)
  final String uid;

  factory UIDDto.fromDomain(UID uid) {
    return UIDDto(
      uid: uid.getOrCrash(),
    );
  }

  UID toDomain() {
    return UID(uid);
  }
}
