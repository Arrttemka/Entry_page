import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import 'data/repositories/navigation_repository_impl.dart';
import 'domain/repositories/navigation_repository.dart';
import 'domain/usecases/navigation_usecases.dart';

final sl = GetIt.instance;

void init() {
  final navigatorKey = GlobalKey<NavigatorState>();
  sl.registerLazySingleton(() => navigatorKey);

  sl.registerLazySingleton(() => NavigateToAuthUseCase(sl()));
  sl.registerLazySingleton(() => CheckFirstLaunchUseCase(sl()));

  sl.registerLazySingleton<NavigationRepository>(
        () => NavigationRepositoryImpl(navigatorKey: sl()),
  );
}