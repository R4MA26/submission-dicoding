// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:flutter_tes/app/widgets/widgets.dart';
// import 'package:flutter_test/flutter_test.dart';
// import 'package:get/get.dart';

// void main() {
//   // Define a test. The TestWidgets function also provides a WidgetTester
//   // to work with. The WidgetTester allows building and interacting
//   // with widgets in the test environment.
//   testWidgets("Flutter Widget Test", (WidgetTester tester) async {
//     await tester.pumpWidget(const TextAccount(
//       textButton: 'test',
//       account: 'test',
//     ));
//     var text = find.text('test');
//     var text2 = find.text('test');

//     expect(text, findsOneWidget);
//     expect(text2, findsOneWidget);
//   });
// }

// // class MyWidget extends StatelessWidget {
// //   const MyWidget({
// //     Key? key,
// //     required this.title,
// //     required this.message,
// //   }) : super(key: key);

// //   final String title;
// //   final String message;

// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       title: 'Flutter Demo',
// //       home: Scaffold(
// //         appBar: AppBar(
// //           title: Text(title),
// //         ),
// //         body: Center(
// //           child: Text(message),
// //         ),
// //       ),
// //     );
// //   }
// // }
