import 'package:flutter_tes/app/widgets/text_account.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TextAccount t;
  t = const TextAccount(
    account: 'test',
    textButton: 'test',
    onPressed: null,
  );

  test('test text account', () {
    expect(t.account, 'test');
    expect(t.textButton, 'test');
    expect(t.onPressed, null);
  });
}
