import 'package:database_mocking_tests/controllers/list_controller.dart';
import 'package:database_mocking_tests/math.dart';
import 'package:database_mocking_tests/models/todo.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test("add numbers", () {
    Math _math = Math();
    _math.addtwonumbers(5, 5);

    expect(_math.addtwonumbers(5, 5), 10);
  });
  group("TodoController", () {
    test("initializes with empty", () {
      ListController _listController = ListController();
      expect(_listController.todoList.length, 0);
    });

    test("todo Added", () {
      ListController _listController = ListController();

      _listController.addTodo(TodoModel("Get Groceries", false));
      _listController.addTodo(TodoModel("Get Hamburgers", false));
      _listController.addTodo(TodoModel("Get Hamburgers", true));

      expect(_listController.todoList.length, 3);
      expect(_listController.todoList[0].content, "Get Groceries");
      expect(_listController.todoList[0].done, false);
      expect(_listController.todoList[1].content, "Get Hamburgers");
      expect(_listController.todoList[1].done, false);
      expect(_listController.todoList[2].content, "Get Hamburgers");
      expect(_listController.todoList[2].done, true);
    });
  });

  group("TodoController", () {
    test("initializes with empty", () {
      ListController _listController = ListController();
      expect(_listController.todoList.length, 0);
    });

    test("todo Added", () {
      ListController _listController = ListController();

      _listController.addTodo(TodoModel("Get Groceries", false));
      _listController.addTodo(TodoModel("Get Hamburgers", false));
      _listController.addTodo(TodoModel("Get Hamburgers", true));

      expect(_listController.todoList.length, 3);
      expect(_listController.todoList[0].content, "Get Groceries");
      expect(_listController.todoList[0].done, false);
      expect(_listController.todoList[1].content, "Get Hamburgers");
      expect(_listController.todoList[1].done, false);
      expect(_listController.todoList[2].content, "Get Hamburgers");
      expect(_listController.todoList[2].done, true);
    });
  });
}
