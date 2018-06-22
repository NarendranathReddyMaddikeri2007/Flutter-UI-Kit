import 'package:flutter/material.dart';

class CommonScaffold extends StatelessWidget {
  final appTitle;
  final Widget bodyData;
  final showFAB;
  final showDrawer;
  final backGroundColor;

  CommonScaffold(
      {this.appTitle,
      this.bodyData,
      this.showFAB,
      this.showDrawer = true,
      this.backGroundColor});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor != null ? backGroundColor : null,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(appTitle),
        actions: <Widget>[
          SizedBox(
            width: 5.0,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert),
          )
        ],
      ),
      drawer: showDrawer == true ? Drawer() : null,
      body: bodyData,
      floatingActionButton: showFAB == true
          ? FloatingActionButton(
              onPressed: () {},
              child: Icon(Icons.person_add),
              backgroundColor: Colors.black,
            )
          : null,
    );
  }
}