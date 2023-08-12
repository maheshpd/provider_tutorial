import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_tutorial/provider/auth_provider.dart';
import 'package:provider_tutorial/provider/count_provider.dart';
import 'package:provider_tutorial/provider/example_one_provider.dart';
import 'package:provider_tutorial/provider/favourite_provider.dart';
import 'package:provider_tutorial/provider/theme_change_provider.dart';
import 'package:provider_tutorial/screen/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CountProvider()),
        ChangeNotifierProvider(create: (_) => ExampleOneProvider()),
        ChangeNotifierProvider(create: (_) => FavouriteItemProvider()),
        ChangeNotifierProvider(create: (_) => ThemeChangerProvider()),
        ChangeNotifierProvider(create: (_) => AuthProvider()),
      ],
      child: Builder(
        builder: (context) {
          final themeChanger = Provider.of<ThemeChangerProvider>(context);
          return MaterialApp(
            title: 'Provider Tutorial',
            themeMode: themeChanger.themeMode,
            theme: ThemeData(
              brightness: Brightness.light,
              primarySwatch: Colors.blue,
              iconTheme: const IconThemeData(
                color: Colors.amber
              ),
              useMaterial3: false,
            ),
            darkTheme: ThemeData(
              brightness: Brightness.light,
              primarySwatch: Colors.amber,
              primaryColor: Colors.green,
              iconTheme: const IconThemeData(
                color: Colors.red
              ),
              useMaterial3: true
            ),
            home: const LoginScreen(),
          );
        },
      ),
    );
  }
}
