import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_pattern/src/providers/counter_provider.dart';

import 'src/pages/home_page.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: CounterProvider(),
        ),
      ],
      child: const MaterialApp(
        title: 'Provider Pattern',
        home: HomePage(),
      ),
    ),
  );
}
