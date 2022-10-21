import 'dart:convert';

import 'package:alkademi_latihan/models/todo_item.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class HttpPage extends StatelessWidget {
  const HttpPage({super.key});

  Future<List<TodoItem>> getTodos() async {
    Response res =
        await get(Uri.http('jsonplaceholder.typicode.com', '/todos'));

    if (res.statusCode == 200) {
      List<dynamic> body = jsonDecode(res.body);
      List<TodoItem> todos = body.map((item) {
        return TodoItem(title: item['title'], completed: item['completed'] as bool);
      }).toList();
      return todos;
    } else {
      return [];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("HTTP example")),
      body: FutureBuilder(future: getTodos(),
      builder: (BuildContext context, AsyncSnapshot<List<TodoItem>> snapshot) {
        if(snapshot.hasData)
        {
          List<TodoItem> todos = snapshot.data!;
          return ListView.builder(
            itemCount: todos.length,
            itemBuilder: ((context, index) {
              return Card(
                child: ListTile(leading: todos[index].completed ? const Icon(Icons.check_box) : const Icon(Icons.check_box_outline_blank),title: Text(todos[index].title),),
              );
            }));
        }else{
          return const Center(child: CircularProgressIndicator());
        }
      })
    );
  }
}
