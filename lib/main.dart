import 'package:flutter/material.dart';
import 'package:myfx_1/pages/convert_page.dart';

import 'package:myfx_1/theme/theme_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => ThemeProvider(),
    child: const MainApp(),
  ));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'myfx_1',
      theme: Provider.of<ThemeProvider>(context).themeData,
      home: const ConvertPage(),
    );
  }
}
