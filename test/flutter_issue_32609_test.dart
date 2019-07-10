import 'package:flutter/material.dart';
import 'package:flutter_issue_32609/screen.dart';
import 'package:flutter_test/flutter_test.dart';

Widget buildTestableWidget(Widget widget) {
  return MediaQuery(data: MediaQueryData(), child: MaterialApp(home: widget));
}

void main() {
  var widget;
  Screen screen;

  setUp(() async {
    screen = Screen();
    widget = buildTestableWidget(screen);
  });

  /// Just run this test with [flutter test] and then with
  /// [flutter test --no-test-assets] to see the diference.

  group('Screen tests', () {
    testWidgets('When creating widget, bind() is called in presenter',
        (WidgetTester tester) async {
      await (tester.pumpWidget(widget));
    });
  });
}
