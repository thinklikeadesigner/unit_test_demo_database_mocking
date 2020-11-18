import 'package:database_mocking_tests/controllers/list_controller.dart';
import 'package:database_mocking_tests/models/todo.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test("initializes with empty", () {
    ListController _listController = ListController();
    expect(_listController.todoList.length, 0);
  });

  test("todo Added", () {
    ListController _listController = ListController();

    _listController.addTodo(TodoModel("Get Groceries", false));

    expect(_listController.todoList.length, 1);
  });

  test("add numbers", () {
    ListController _listController = ListController();
    _listController.addtwonumbers(5, 5);

    expect(_listController.addtwonumbers(5, 5), 10);
  });

  test("divide numbers", () {
    ListController _listController = ListController();
    _listController.dividetwonumbers(10, 5);

    expect(_listController.dividetwonumbers(10, 5), 2);
  });

  test("multiply numbers", () {
    ListController _listController = ListController();
    _listController.multiplytwonumbers(10, 5);

    expect(_listController.multiplytwonumbers(10, 5), 50);
  });
}
