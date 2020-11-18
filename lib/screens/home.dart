import 'package:database_mocking_tests/controllers/list_controller.dart';
import 'package:database_mocking_tests/models/todo.dart';
import 'package:database_mocking_tests/services/database.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final TextEditingController _todoController = TextEditingController();
  ListController listController = ListController(database: Database());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List App"),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
          Text(
            "Add Todo Here:",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Card(
            margin: EdgeInsets.all(20),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Expanded(
                    child: TextFormField(controller: _todoController),
                  ),
                  IconButton(
                    icon: Icon(Icons.add),
                    onPressed: () {
                      if (_todoController.text != "") {
                        listController
                            .addTodo(TodoModel(_todoController.text, false));
                        //Database
                        //.addTodo(_todoController.text, controller.user.uid);
                        _todoController.clear();
                        setState(() {});
                      }
                    },
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          RaisedButton(
            child: Text("Load Todo From Database"),
            onPressed: () {
              listController.loadFromDatabase();
            },
          )
        ],
      ),
    );
  }
}
