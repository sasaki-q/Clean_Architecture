// ignore_for_file: must_be_immutable

import 'package:clean/domain/models/todo/todo.dart';
import 'package:clean/presentation/providers/todo_provider.dart';
import 'package:clean/presentation/widgets/dialog.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TodoScreen extends HookConsumerWidget {
  TodoScreen({Key? key}) : super(key: key);
  late TodoNotifier _todoNotifier;
  late List<Todo> state;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _todoNotifier = ref.watch(todoProvider.notifier);
    state = ref.watch(todoProvider);
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
          centerTitle: true,
          title: const Text("todo"),
          automaticallyImplyLeading: false,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.8,
              child: ListView.builder(
                itemCount: state.length,
                itemBuilder: (BuildContext context, int i) {
                  return GestureDetector(
                    onTap: () async {
                      await showCupertinoDialog(
                        id: state[i].id,
                        title: state[i].title,
                        notifier: _todoNotifier,
                      );
                    },
                    child: ListTile(
                      leading: Icon(
                        state[i].isDone ? Icons.done : Icons.not_accessible,
                        color: state[i].isDone ? Colors.blue : Colors.red,
                      ),
                      title: Text(state[i].title),
                      subtitle: Text('ID: ${state[i].id}'),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
        floatingActionButton: IconButton(
          icon: const Icon(
            Icons.arrow_forward_ios_outlined,
          ),
          onPressed: () async {
            await _todoNotifier.pushPage();
          },
        ),
      ),
    );
  }
}
