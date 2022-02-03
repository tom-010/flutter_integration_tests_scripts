import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'package:feature/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('end-to-end test', () {
    testWidgets('tab on the floating action button, verify counter',
        (WidgetTester tester) async {
          app.main();
          await tester.pumpAndSettle();

          // Verify the counter starts at 0.
          expect(find.text('0'), findsOneWidget);

          // Finds the floating action buton to tap on.
          final Finder fab = find.byTooltip('Increment');

          // Emulate a tap on the floating action button.
          await tester.tap(fab);

          // Trigger a frame
          await tester.pumpAndSettle();

          // Verify the counter increment by 1.
          expect(find.text('1'), findsOneWidget);
        });
  });
}
