import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_tutorial/provider/theme_change_provider.dart';

class DarkThemePage extends StatefulWidget {
  const DarkThemePage({super.key});

  @override
  State<DarkThemePage> createState() => _DarkThemePageState();
}

class _DarkThemePageState extends State<DarkThemePage> {
  @override
  Widget build(BuildContext context) {
    final themeChanger = Provider.of<ThemeChangerProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Subscribe'),
      ),
      body: Column(
        children: [
          RadioListTile(
            title: Text('Light Mode'),
            value: ThemeMode.light,
            groupValue: themeChanger.themeMode,
            onChanged: themeChanger.setTheme,
          ),
          RadioListTile(
            title: Text('Dark Mode'),
            value: ThemeMode.dark,
            groupValue: themeChanger.themeMode,
            onChanged: themeChanger.setTheme,
          ),
          RadioListTile(
            title: Text('System Mode'),
            value: ThemeMode.system,
            groupValue: themeChanger.themeMode,
            onChanged: themeChanger.setTheme,
          ),
          const Icon(Icons.favorite),
        ],
      ),
    );
  }
}
