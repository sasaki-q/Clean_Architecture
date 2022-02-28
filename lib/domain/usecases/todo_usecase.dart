import 'package:clean/domain/models/todo/todo.dart';
import 'package:clean/domain/repositories/todo_repository.dart';
import 'package:clean/helper/service_locator.dart';

class TodoUseCase {
  late TodoRepository _todoRep;

  TodoUseCase() {
    _todoRep = locator.get<TodoRepository>();
  }

  Future<List<Todo>> getTodos() async {
    return await _todoRep.getTodos();
  }

  Future<Todo> getTodo({required int id}) async {
    return await _todoRep.getTodo(id: id);
  }
}
