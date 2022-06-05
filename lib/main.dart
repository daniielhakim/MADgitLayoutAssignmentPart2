import 'package:flutter/material.dart';
import 'LivingRoom.dart';
import 'Kitchen.dart';
import 'MasterRoom.dart';

void main() => runApp(MyHome());

class MyHome extends StatelessWidget {
  static final String title = 'My Home';

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        theme: ThemeData(primarySwatch: Colors.blue),
        home: MainPage(title: title),
      );
}

class MainPage extends StatefulWidget {
  final String title;

  const MainPage({
    required this.title,
  });

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  bool fanValue = false;
  bool lightValue = false;
  bool aircondValue = false;
  bool tvValue = false;

  Widget build(BuildContext context) {
    return MaterialApp(
        home: DefaultTabController(
            length: 3,
            child: Scaffold(
              appBar: AppBar(
                title: Text(widget.title),
                bottom: const TabBar(
                  tabs: [
                    Tab(text: ('Living Room')),
                    Tab(text: ('Kitchen')),
                    Tab(text: ('Master Room')),
                  ],
                ),
              ),
              body: const TabBarView(children: [
                GridLayoutLR(),
                GridLayoutKit(),
                GridLayoutMR(),
              ]),
            )));
  }
}
