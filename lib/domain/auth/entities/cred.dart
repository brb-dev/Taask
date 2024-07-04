import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:task/domain/auth/value/value_objects.dart';

part 'cred.freezed.dart';

@freezed
class Cred with _$Cred {
  const Cred._();

  const factory Cred({
    required EmailAddress email,
    required Password password,
  }) = _Cred;

  factory Cred.empty() => Cred(
        email: EmailAddress(''),
        password: Password.login(''),
      );
}
