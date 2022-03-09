import 'package:flutter/material.dart';
import 'package:application/dims/dims.dart';

class Store extends StatefulWidget {
  const Store({Key? key}) : super(key: key);

  @override
  StoreState createState() => StoreState();
}

class StoreState extends State<Store> {
  @override
  Widget build(BuildContext context) {
    final Dims dims = Dims(context);
    return Scaffold();
  }
}
