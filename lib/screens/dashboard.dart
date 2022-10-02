import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("DashBoard".toUpperCase()),
          backgroundColor: Colors.amber,
        ),
        drawer: const Drawer(),
        body: Container(
          width: 350,
          height: 250,
          padding: const EdgeInsets.all(20.00),
          margin: const EdgeInsets.all(20.00),
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Colors.blueGrey,
              borderRadius: BorderRadius.circular(10.00),
              border: Border.all(color: Colors.red, width: 5)),
          child: const Text(
            "Boaring",
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ));
  }
}
