class ArrayStack {
  List<String> a;
  int n;
  ArrayStack({this.a, this.n});

  factory ArrayStack.craete(int length) {
    final a = List<String>(length);
    return ArrayStack(a: a, n: 0);
  }

  add(int i, String value) {
    for (var j = i; j < a.length - 1; j++) {
      a[j+1] = a[j];
    }
    a[i] = value;
    n++;
  }

  String remove(int i) {
    final v = a[i];

    for (var j = i; j < n - 1; j++) {
      a[j] = a[j+1];
    }

    n--;

    return v;
  }

  String get(int i)  {
    return a[i];
  }

  int size() {
    return n;
  }
}

void main() {
  final stack = ArrayStack.craete(5);
  print('array: ${stack.a}, n: ${stack.n}');

  stack.add(0, 'a');
  stack.add(1, 'b');
  stack.add(2, 'c');
  print('array: ${stack.a}, n: ${stack.n}');

  stack.remove(1);
  print('array: ${stack.a}, n: ${stack.n}');
}