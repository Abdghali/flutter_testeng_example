import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:testingexample1/widget.dart/scroll_view.dart';

main() {
  group("ScrollViewTestingWidget", () {
    testWidgets("should not scroll with less items",
        (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(
        home: CustomeScrollViewWidget(
          bookTitle: List.generate(5, (index) => "Book $index"),
        ),
      ));

      await tester.drag(find.byType(ListView), const Offset(0, -300));
      await tester.pump();

      final firstbookFinder = find.text('Book 0');
      expect(firstbookFinder, findsOneWidget);
    });

    testWidgets("should scroll with a lot of items",
        (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(
        home: CustomeScrollViewWidget(
          bookTitle: List.generate(300, (index) => "Book $index"),
        ),
      ));

      await tester.drag(find.byType(ListView), const Offset(0, -300));
      await tester.pump();

      final firstbookFinder = find.text('Book 0');
      final elavenbookFinder = find.text('Book 11');
      final listTileFinder = find.byType(ListTile);
      expect(firstbookFinder, findsNothing);
      expect(elavenbookFinder, findsOneWidget);
      expect(listTileFinder, findsNWidgets(11));
    });

    testWidgets("should show only 2 on small screen size",
        (WidgetTester tester) async {
      tester.binding.window.physicalSizeTestValue = Size(320, 350);
      await tester.pumpWidget(MaterialApp(
        home: CustomeScrollViewWidget(
          bookTitle: List.generate(2, (index) => "Book $index"),
        ),
      ));
      await tester.drag(find.byType(ListView), const Offset(0, -300));
      await tester.pump();
      final listTileFinder = find.byType(ListTile);

      expect(listTileFinder, findsNWidgets(2));
    });

    testWidgets("should throw error if empty list is provided",
        (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(
        home: CustomeScrollViewWidget(
          bookTitle:[],
        ),
      ));

      expect(tester.takeException(), null);
    });
  });
}
