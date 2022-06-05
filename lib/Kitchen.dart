import 'package:flutter/material.dart';

class GridLayoutKit extends StatefulWidget {
  const GridLayoutKit({Key? key}) : super(key: key);

  @override
  _GridLayoutState createState() => _GridLayoutState();
}

class _GridLayoutState extends State<GridLayoutKit> {
  bool fanValue = false;
  bool lightValue = false;

  @override
  Widget build(BuildContext context) => Scaffold(
          body: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: <Widget>[
          Card(
            elevation: 10,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: Column(children: [
              Image(
                image: AssetImage(fanValue
                    ? 'assets/images/fanOn.jpg'
                    : 'assets/images/fanOff.jpg'),
                width: 100,
                height: 100,
              ),
              fanSwitch(),
            ]),
          ),
          Card(
            elevation: 10,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: Column(children: [
              Image(
                image: AssetImage(lightValue
                    ? 'assets/images/lightOn.png'
                    : 'assets/images/lightOff.png'),
                width: 100,
                height: 100,
              ),
              lightSwitch(),
            ]),
          ),
        ],
      ));

  Widget fanSwitch() => Transform.scale(
        scale: 1,
        child: Switch(
          value: fanValue,
          onChanged: (value) => setState(() => this.fanValue = value),
        ),
      );

  Widget lightSwitch() => Transform.scale(
        scale: 1,
        child: Switch(
          value: lightValue,
          onChanged: (value) => setState(() => this.lightValue = value),
        ),
      );
}
