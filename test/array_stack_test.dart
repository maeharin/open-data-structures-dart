import 'package:open_data_structure_dart/array_stack.dart';
import 'package:test/test.dart';

void main() {
  test('array stack', () {
    final stack = ArrayStack.craete(10);
    expect(stack.size(), 0);

    stack.add(1, 'one');
    expect(stack.get(1), 'one');
  });
}