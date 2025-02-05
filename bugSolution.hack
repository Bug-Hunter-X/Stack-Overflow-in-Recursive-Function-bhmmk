function foo(x: int, maxDepth: int): int {
  if (x == 0) {
    return 1;
  } else if (maxDepth == 0){
    throw new Exception("Maximum recursion depth exceeded");
  } else {
    return x * foo(x - 1, maxDepth -1);
  }
}

function bar(): void {
  try {
    echo foo(5, 1000);
  } catch (Exception e) {
    echo e->getMessage();
  }
}

This improved version adds a maximum recursion depth parameter. The function checks if it has reached the maximum recursion depth and throws an exception if it has.