import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:project/Add%20contact.dart';
//import 'package:project/main.dart';
import 'package:project/ContactDetails.dart';
import 'package:flutter/src/rendering/box.dart';

class ContactsPage extends StatefulWidget {
  const ContactsPage({Key? key}) : super(key: key);
  @override
  _ContactsPageState createState() => _ContactsPageState();
}

class _ContactsPageState extends State<ContactsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Safe Escape"),
        centerTitle: true,
        backgroundColor: Colors.orange[700],
        actions: <Widget>[
          IconButton(
            onPressed: () {
              //.....
              print("Pressed Contacts button");
              const ContactsPage();
            },
            icon: const Icon(Icons.assignment_outlined),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10.0, 25.0, 10.0, 25.0),
        child: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  padding: const EdgeInsets.all(10.0),
                  itemBuilder: (listViewContext, index) {
                    return Container(
                      color: Colors.amberAccent[100],
                      child: ListTile(
                        leading: Text(Names[index]),
                        trailing: Text(Ph_no[index]),
                      ),
                    );
                  },
                  itemCount: Names.length,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: IconButton(
                  iconSize: 30,
                  color: Colors.deepOrangeAccent,
                  hoverColor: Colors.orangeAccent,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AddContact()),
                    );
                  },
                  icon: Icon(Icons.add_circle_outline),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Table(
// border: TableBorder.all(
// color: Colors.yellow,
// ),
// columnWidths: const <int, TableColumnWidth>{
// 0: FixedColumnWidth(40),
// 1: FlexColumnWidth(),
// 2: FixedColumnWidth(150),
// 3: FixedColumnWidth(30)
// },
// defaultVerticalAlignment: TableCellVerticalAlignment.middle,
// children: <TableRow>[
// TableRow(
// children: <Widget>[
// Container(
// alignment: Alignment.center,
// height: 30,
// child: Text(
// "S.No.",
// style: TextStyle(fontWeight: FontWeight.bold),
// ),
// ),
// TableCell(
// child: Container(
// height: 35,
// alignment: Alignment.center,
// child: Text(
// "Name",
// textAlign: TextAlign.center,
// style: TextStyle(fontWeight: FontWeight.bold),
// ),
// ),
// ),
// Container(
// height: 30,
// alignment: Alignment.center,
// child: Text(
// "Phone Number",
// style: TextStyle(fontWeight: FontWeight.bold),
// ),
// ),
// Container(
// alignment: Alignment.center,
// height: 30,
// child: Text(
// "Del.",
// style: TextStyle(fontWeight: FontWeight.bold),
// ),
//
// //TABLE CONTENTS GOES HERE
// ),
// ],
// ),
// TableRow(
// children: <Widget>[
// Container(
// alignment: Alignment.center,
// height: 30,
// child: Text(
// "S.No.",
// style: TextStyle(fontWeight: FontWeight.bold),
// ),
// ),
// TableCell(
// child: Container(
// height: 35,
// alignment: Alignment.center,
// child: Text(
// "Name",
// textAlign: TextAlign.center,
// style: TextStyle(fontWeight: FontWeight.bold),
// ),
// ),
// ),
// Container(
// height: 30,
// alignment: Alignment.center,
// child: Text(
// "Phone Number",
// style: TextStyle(fontWeight: FontWeight.bold),
// ),
// ),
// Container(
// alignment: Alignment.topCenter,
// height: 30,
// child: IconButton(
// onPressed: () {},
// icon: Icon(Icons.delete),
// ),
// //TABLE CONTENTS GOES HERE
// )
// ],
// ),
// ],
// ),
//2D arr(mob --name) for arr
