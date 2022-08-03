import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:workflow_test/widget/submit_button.dart';

void main() {
  group('GoldenBuilder', () {
    testGoldens('Submit Button', (tester) async {
      final builder = GoldenBuilder.grid(
        columns: 2,
        widthToHeightRatio: 1,
      )
        ..addScenarioBuilder("Red Color", (context) {
          return const SubmitButton(
            color: Colors.red,
            size: 10,
          );
        })
        ..addScenarioBuilder("Green Color", (context) {
          return const SubmitButton(
            color: Colors.green,
            size: 10,
          );
        })
        ..addScenarioBuilder("Size 30", (context) {
          return const SubmitButton(
            color: Colors.red,
            size: 30,
          );
        })
        ..addScenarioBuilder("Size 50", (context) {
          return const SubmitButton(
            color: Colors.red,
            size: 50,
          );
        });

      await tester.pumpWidgetBuilder(builder.build());
      await screenMatchesGolden(tester, 'golden_builder_submit');
    });
  });
}
