import 'package:flutter/material.dart';
import 'package:mvp/view/screen/home_screen.dart';
import 'package:mvp/view/screen/presenter/providel_person.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => ProviderPerson(),
    child:  MaterialApp(
          home: HomeScreen(),
        )

    );
  }
}


