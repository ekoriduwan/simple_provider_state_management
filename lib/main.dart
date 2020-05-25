import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'aplication_color.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChangeNotifierProvider<AplicationColor>(
        create: (context) => AplicationColor(),
        child: Scaffold(
            appBar: AppBar(
              title: Consumer<AplicationColor>(
                builder: (context, aplicationColor, _) => Text(
                  "Provider State Management",
                  style: TextStyle(color: aplicationColor.color),
                ),
              ),
              backgroundColor: Colors.black,
            ),
            body: Column(
              children: <Widget>[
                Center(
                  child: Consumer<AplicationColor>(
                    builder: (context, aplicationColor, _) => AnimatedContainer(
                      margin: EdgeInsets.all(5),
                      duration: Duration(milliseconds: 500),
                      height: 300,
                      width: 300,
                      color: aplicationColor.color,
                    ),
                  ),
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        child: Text("AB"),
                        margin: EdgeInsets.all(3),
                      ),
                      Consumer<AplicationColor>(
                          builder: (context, aplicationColor, _) => Switch(
                              value: aplicationColor.isLightBlue,
                              onChanged: (newvalue) {
                                aplicationColor.isLightBlue = newvalue;
                              })),
                      Container(
                        child: Text("LB"),
                        margin: EdgeInsets.all(3),
                      ),
                    ])
              ],
            )),
      ),
    );
  }
}
