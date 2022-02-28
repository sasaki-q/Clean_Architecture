import 'package:clean/data/todo_repository_impl.dart';
import 'package:clean/domain/repositories/todo_repository.dart';
import 'package:clean/domain/usecases/todo_usecase.dart';
import 'package:clean/helper/pagination.dart';
import 'package:get_it/get_it.dart';

final GetIt locator = GetIt.I;

class ServiceLocator {
  ServiceLocator() {
    locator.registerLazySingleton<Pagination>(
      () => Pagination(),
    );
    locator.registerLazySingleton<TodoUseCase>(
      () => TodoUseCase(),
    );
    locator.registerLazySingleton<TodoRepository>(
      () => TodoRepositoryImpl(),
    );
  }
}
