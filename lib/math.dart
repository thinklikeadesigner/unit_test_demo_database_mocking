class Math {
  addtwonumbers(a, b) {
    return a + b;
  }

  dividetwonumbers(a, b) {
    return a / b;
  }

  multiplytwonumbers(a, b) {
    return a * b;
  }

  factorial() {
    var num = 5;
    var factorial = 1;

    for (var i = num; i >= 1; i--) {
      factorial *= i;
    }
    return (factorial);
  }
}
