import 'package:flutter/material.dart';
import 'package:project/ContactDetails.dart';

class AddContact extends StatefulWidget {
  const AddContact({Key? key}) : super(key: key);

  @override
  _AddContactState createState() => _AddContactState();
}

String contact_name = '';
String contact_number = '';

class _AddContactState extends State<AddContact> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(150.0),
          child: Center(
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    hintText: "Contact Name",
                  ),
                  onChanged: (name) {
                    setState(() {
                      contact_name = name;
                    });
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Phone Number",
                  ),
                  onChanged: (numb) {
                    setState(() {
                      contact_number = numb;
                    });
                  },
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      Names.add(contact_name);
                      Ph_no.add(contact_number);
                    });
                    Navigator.pop(context);
                  },
                  child: Text("Save"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
