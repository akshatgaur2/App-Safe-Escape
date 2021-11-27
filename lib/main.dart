import 'package:flutter/material.dart';
import 'package:project/Contacts.dart';
import 'package:project/SMS.dart';
import 'package:flutter_sms/flutter_sms.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:project/Contacts.dart';
import 'package:project/ContactDetails.dart';
import 'package:project/Location.dart';
//import 'package:geolocator/geolocator.dart';

void getPermissions() async {
  // if (await Permission.location.request().isGranted) {
  //   print("permission granted Location");
  // }
  if (await Permission.sms.request().isGranted) {
    print("permission granted SMS");
  }

// You can request multiple permissions at once.
  Map<Permission, PermissionStatus> statuses = await [
    Permission.location,
  ].request();
  print(statuses[Permission.location]);
}

//_share(){ Share.share('https://www.google.com/maps/search/?api=1&query=${_currentLocation.latitude},${_currentLocation.longitude}'); }

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text("Safe Escape"),
          centerTitle: true,
          backgroundColor: Colors.orange[700],
          actions: <Widget>[
            GestureDetector(
              onTap: () {
                //.....
                print("Pressed Contacts button");

                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ContactsPage()),
                );
              },
              child: Icon(Icons.assignment_outlined),
            ),
          ],
        ),
        body: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //int _counter = 0;

  // if(per_sms == 0){
  //   per_sms = 1;
  // }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          children: <Widget>[
            Expanded(
              child: FlatButton(
                onPressed: () {
                  getPermissions(); //change pos

                  print("button pressed");
                  //sendSMS(message: message, recipients: Ph_no);
                  //print(Pos());
                },
                child: Image.asset('images/alerttri.jpg'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 50.0),
              child: ElevatedButton(
                onPressed: () {
                  //.....
                  print("Pressed Contacts button");
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ContactsPage()),
                  );
                },
                child: Text("Contacts"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
