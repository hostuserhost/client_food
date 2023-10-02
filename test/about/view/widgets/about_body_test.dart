// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:client_food/features/about/about.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('AboutBody', () {
    testWidgets('renders Text', (tester) async { 
      await tester.pumpWidget(
        BlocProvider(
          create: (context) => AboutBloc(),
          child: MaterialApp(home: AboutBody()),
        ),
      );

      expect(find.byType(Text), findsOneWidget);
    });
  });
}
