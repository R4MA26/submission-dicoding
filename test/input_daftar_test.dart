import 'package:flutter_tes/app/widgets/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
// ignore: avoid_relative_lib_imports
import '../lib/app/modules/login/controllers/login_controller.dart'
    as login_controller;

void main() {
  InputDaftar i;
  var controller = login_controller.LoginController();
  i = InputDaftar(
    hint: 'test',
    label: 'test',
    controller: controller.usernameC,
  );

  test('test input', () {
    expect(i.hint, 'test');
    expect(i.label, 'test');
    expect(i.controller, controller.usernameC);
  });
}
