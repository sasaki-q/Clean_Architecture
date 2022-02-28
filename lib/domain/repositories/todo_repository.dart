import 'package:clean/domain/models/todo/todo.dart';

abstract class TodoRepository {
  Future<List<Todo>> getTodos();
}
