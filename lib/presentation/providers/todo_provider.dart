import 'package:clean/domain/models/todo/todo.dart';
import 'package:clean/domain/usecases/todo_usecase.dart';
import 'package:clean/helper/service_locator.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final todoProvider = StateNotifierProvider<TodoNotifier, List<Todo>>(
  (ref) => TodoNotifier(),
);

class TodoNotifier extends StateNotifier<List<Todo>> {
  late TodoUseCase _todoUseCase;

  TodoNotifier() : super([]) {
    _todoUseCase = locator.get<TodoUseCase>();
    Future(
      () async {
        state = await getTodos();
      },
    );
  }

  Future<List<Todo>> getTodos() async {
    return await _todoUseCase.getTodos();
  }
}
