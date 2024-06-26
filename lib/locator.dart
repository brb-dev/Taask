import 'package:get_it/get_it.dart';

import 'application/auth/auth_bloc.dart';
import 'application/auth/login/login_form_bloc.dart';
import 'application/auth/register/register_form_bloc.dart';
import 'application/auth/user/user_bloc.dart';
import 'application/task/manage_task/manage_task_bloc.dart';
import 'application/task/task_bloc.dart';
import 'application/task/task_filter/task_filter_bloc.dart';
import 'config.dart';
import 'domain/core/error/exception_handler.dart';
import 'infrastructure/auth/datasources/auth_local.dart';
import 'infrastructure/auth/datasources/auth_remote.dart';
import 'infrastructure/auth/repositories/auth_repository.dart';
import 'infrastructure/core/local_storage/secure_storage.dart';
import 'infrastructure/core/local_storage/uid_storage.dart';
import 'infrastructure/task/datasources/task_local.dart';
import 'infrastructure/task/datasources/task_remote.dart';
import 'infrastructure/task/repositories/task_repository.dart';
import 'presentation/core/router/app_router.dart';
import 'presentation/core/router/app_router_observer.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => Config());
  locator.registerLazySingleton(() => AppRouter());
  locator.registerLazySingleton(() => AppRouterObserver());

  locator.registerLazySingleton(() => SecureStorage());
  locator.registerLazySingleton(
    () => UidStorage(secureStorage: locator<SecureStorage>()),
  );

  locator.registerLazySingleton(() => DataSourceExceptionHandler());
  locator.registerLazySingleton(() => AuthLocalDataSource());
  locator.registerLazySingleton(
    () => AuthRemoteDataSource(
      dataSourceExceptionHandler: locator<DataSourceExceptionHandler>(),
      config: locator<Config>(),
    ),
  );
  locator.registerLazySingleton(
    () => AuthRepository(
      config: locator<Config>(),
      remoteDataSource: locator<AuthRemoteDataSource>(),
      localDataSource: locator<AuthLocalDataSource>(),
      uidStorage: locator<UidStorage>(),
    ),
  );
  locator.registerLazySingleton(
    () => AuthBloc(
      authRepository: locator<AuthRepository>(),
      config: locator<Config>(),
    ),
  );
  locator.registerLazySingleton(
    () => LoginFormBloc(
      authRepository: locator<AuthRepository>(),
    ),
  );
  locator.registerLazySingleton(
    () => RegisterFormBloc(
      authRepository: locator<AuthRepository>(),
    ),
  );
  locator.registerLazySingleton(
    () => UserBloc(
      repository: locator<AuthRepository>(),
    ),
  );
  locator.registerLazySingleton(() => TaskLocalDataSource());
  locator.registerLazySingleton(
    () => TaskRemoteDataSource(
      dataSourceExceptionHandler: locator<DataSourceExceptionHandler>(),
      config: locator<Config>(),
    ),
  );
  locator.registerLazySingleton(
    () => TaskRepository(
      config: locator<Config>(),
      remoteDataSource: locator<TaskRemoteDataSource>(),
      localDataSource: locator<TaskLocalDataSource>(),
    ),
  );
  locator.registerLazySingleton(
    () => TaskBloc(
      repository: locator<TaskRepository>(),
      config: locator<Config>(),
    ),
  );
  locator.registerLazySingleton(
    () => TaskFilterBloc(),
  );
  locator.registerLazySingleton(
    () => ManageTaskBloc(
      repository: locator<TaskRepository>(),
    ),
  );
}
