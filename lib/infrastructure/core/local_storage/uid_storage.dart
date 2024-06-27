import 'dart:convert';

import 'package:hive_flutter/hive_flutter.dart';

import '../../../domain/core/error/exception.dart';
import '../../auth/dtos/uid_dto.dart';
import 'secure_storage.dart';

class UidStorage {
  static const _boxName = 'taask_uid_box';
  static const _uidKey = 'taask_uid_token';
  static const _secureKey = 'taask_uid_secure';

  late Box _encryptedBox;
  SecureStorage secureStorage;

  UidStorage({required this.secureStorage});

  Future<void> init() async {
    await Hive.initFlutter();
    Hive.registerAdapter(UIDDtoAdapter());
    final encryprionKey = await secureStorage.read(key: _secureKey);
    if (encryprionKey.isEmpty) {
      final key = Hive.generateSecureKey();
      await secureStorage.write(key: _secureKey, value: base64UrlEncode(key));
    }
    final key = await secureStorage.read(key: _secureKey);
    final encryptionKey = base64Url.decode(key);
    _encryptedBox = await Hive.openBox(
      _boxName,
      encryptionCipher: HiveAesCipher(encryptionKey),
    );
  }

  Future<UIDDto> get() async {
    try {
      return await _encryptedBox.get(
        _uidKey,
        defaultValue: UIDDto(uid: ''),
      );
    } catch (e) {
      throw CacheException(message: e.toString());
    }
  }

  Future<void> set(UIDDto uidDto) async {
    try {
      await _encryptedBox.put(_uidKey, uidDto);
    } catch (e) {
      throw CacheException(message: e.toString());
    }
  }

  Future<void> clear() async {
    try {
      await _encryptedBox.clear();
    } catch (e) {
      throw CacheException(message: e.toString());
    }
  }
}
