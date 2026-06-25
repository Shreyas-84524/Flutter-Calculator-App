import 'package:flutter/material.dart';
import 'Calscreen2.dart';
import 'theme_data.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await loadSavedTheme();
  runApp(const MyWidget());
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<AppTheme>(
      valueListenable: themeNotifier,
      builder: (context, theme, child) {
        return MaterialApp(
          theme: ThemeData(
            useMaterial3: true,
          ),
          home: const Calscreen(),
        );
      },
    );
  }
}
