function foo(x: int): int {
  if (x == 0) {
    return 1;
  } else {
    return x * foo(x - 1);
  }
}

function bar(): void {
  echo foo(5);
}

This function will cause stack overflow error when you call it with a large number. This is because the function calls itself recursively without a base case.