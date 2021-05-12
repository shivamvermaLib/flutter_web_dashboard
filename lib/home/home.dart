import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            flex: 1,
            child: ListView(
              children: [
                ListTile(
                  title: Text("Dashboard"),
                ),
                ListTile(
                  title: Text("Employees"),
                ),
                ListTile(
                  title: Text("Attendance"),
                ),
                ListTile(
                  title: Text("Leaves"),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(),
          )
        ],
      ),
    );
  }
}
