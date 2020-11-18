import 'package:database_mocking_tests/models/todo.dart';
import 'package:database_mocking_tests/services/database.dart';

class ListController {
  final Database database;
  List<TodoModel> todoList = List();

  ListController({this.database});

  void addTodo(TodoModel todo) {
    todoList.add(todo);
  }

  void checkboxSelected(bool newValue, int index) {
    todoList[index].done = newValue;
  }

  void clear() {
    todoList.clear();
  }

  Future<void> loadFromDatabase() async {
    todoList.add(await database.loadDatabase());
    print("load from Database Done");
  }

  addtwonumbers(a, b) {
    return a + b;
  }

  dividetwonumbers(a, b) {
    return a / b;
  }

  multiplytwonumbers(a, b) {
    return a * b;
  }
}
