import 'package:flutter_tes/app/widgets/button.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  Button b;
  b = const Button(
    name: 'login',
    onPressed: null,
  );

  test('test button', () {
    expect(b.name, 'login');
    expect(b.onPressed, null);
  });
}
