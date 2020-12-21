import 'package:flutter/material.dart';
import 'package:observer_pattern/logic/observer_interface.dart';
import 'package:observer_pattern/pages/object_page.dart';

class ObserverPage extends StatefulWidget implements Observer {
  ObserverPage({Key key}) : super(key: key);

  @override
  _ObserverPageState createState() => _ObserverPageState();

  @override
  update() {
    // TODO: implement update
    // throw UnimplementedError();
  }
}

class _ObserverPageState extends State<ObserverPage> {
  @override
  Widget build(BuildContext context) {
    return ObjectPage(
      objectName: 'Observer',
      objectColor: Colors.amber[400],
      otherColor: Colors.purple[200],
    );
  }
}
