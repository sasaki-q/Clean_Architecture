// ignore_for_file: avoid_function_literals_in_foreach_calls

import 'package:clean/data/base_connect.dart';
import 'package:clean/domain/models/todo/todo.dart';
import 'package:clean/domain/repositories/todo_repository.dart';
import 'package:dio/dio.dart';

class TodoRepositoryImpl extends BaseConnect implements TodoRepository {
  @override
  Future<List<Todo>> getTodos() async {
    try {
      List<Todo> todos = [];
      Response<dynamic> res = await http.get('todos');
      res.data.forEach((elm) => todos.add(Todo.fromJson(elm)));
      return todos;
    } catch (err) {
      throw Error();
    }
  }

  @override
  Future<Todo> getTodo({required int id}) async {
    try {
      Response<dynamic> res = await http.get(
        'todos/$id',
      );
      return Todo.fromJson(res.data);
    } catch (err) {
      throw Error();
    }
  }
}
