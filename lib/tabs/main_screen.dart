import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [Icon(Icons.icecream_rounded)],
        title: Text('유튜브'),
        iconTheme: IconThemeData(size: 20, color: Colors.red),
      ),
      body: Center(
        child: Text('유튜브에 오신 것을 환영합니다!'),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: MainScreen(),
  ));
}
