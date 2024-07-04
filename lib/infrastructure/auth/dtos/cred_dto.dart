import 'package:hive/hive.dart';
import 'package:task/domain/auth/value/value_objects.dart';

import '../../../domain/auth/entities/cred.dart';

part 'cred_dto.g.dart';

@HiveType(typeId: 1)
class CredDto {
  CredDto({required this.email, required this.password});

  @HiveField(0)
  final String email;
  @HiveField(1)
  final String password;

  Cred toDomain() {
    return Cred(
      email: EmailAddress(email),
      password: Password.login(password),
    );
  }
}
