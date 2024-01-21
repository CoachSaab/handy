import 'package:flutter/material.dart';
import 'package:dropdown_textfield/tooltip_widget.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController mailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController contactNoController = TextEditingController();
  TextEditingController classController = TextEditingController();
  TextEditingController citizenController = TextEditingController();
  TextEditingController citiesSelected = TextEditingController();
  TextEditingController textEditingController = TextEditingController();

  String selectedValue = "";

  List<String> dropdownItems = ["Item1", "Item2", "Item3", "Item1", "Item2"];


  Widget buildCurvedContainer(
      double width, double height, double borderRadius, EdgeInsets margin) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
        color: Colors.grey,
      ),
      margin: margin,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 180,
        title: Container(
          height: MediaQuery.of(context).size.width * 0.2,
          width: MediaQuery.of(context).size.width * 0.2,
          decoration: BoxDecoration(
            color: Colors.white54,
            borderRadius: BorderRadius.all(Radius.circular(14)),
          ),
          child: Center(
            child: Text(
              'profile',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        flexibleSpace: Align(
          alignment: Alignment.topCenter,
          child: Opacity(
            opacity: 0.60,
            child: Container(
              height: MediaQuery.of(context).size.width * 0.9,
              width: MediaQuery.of(context).size.width * 9,
              decoration: ShapeDecoration(
                gradient: LinearGradient(
                  begin: Alignment(0.96, 0.27),
                  end: Alignment(-0.96, -0.27),
                  colors: [
                    Color(0xFFC6FFD2),
                    Color(0xFF6F7EF6),
                    Color(0xFFFFD6FF)
                  ],
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  ),
                ),
                shadows: [
                  BoxShadow(
                    color: Color(0x3F000000),
                    blurRadius: 4,
                    offset: Offset(0, 4),
                    spreadRadius: 0,
                  ),
                ],
              ),
              child: Text(""),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 30.0),
            child: Card(
              child: ListTile(
                subtitle: Text('username'),
                title: Text(usernameController.text),
                leading: Icon(Icons.account_circle),
              ),
            ),
          ),
          Card(
            child: ListTile(
              subtitle: Text('mail'),
              title: Text(mailController.text),
              leading: Icon(Icons.mail_outline_outlined),
            ),
          ),
          Card(
            child: ListTile(
              subtitle: Text('contact no.'),
              title: Text(contactNoController.text),
              leading: Icon(Icons.phone_android_outlined),
            ),
          ),
          Card(
            child: ListTile(
              subtitle: Text('category'),
              title: Text(classController.text),
              leading: Icon(Icons.track_changes_rounded),
            ),
          ),
          Card(
            child: ListTile(
              subtitle: Text('password'),
              title: Text(passwordController.text),
              leading: Icon(Icons.lock_open_rounded),
            ),
          ),
          Card(
            child: ListTile(
              subtitle: Text('citizen'),
              title: Text(citizenController.text),
              leading: Icon(Icons.flag_circle),
            ),
          ),
          SizedBox(height: 20.0),
          ElevatedButton(
            onPressed: () {
              // Reset the TextEditingController values
              usernameController.clear();
              mailController.clear();
              passwordController.clear();
              contactNoController.clear();
              classController.clear();
              citizenController.clear();

              // Show a custom-sized AlertDialog
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return Dialog(
                    // Set the desired width and height
                    child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextField(
                            controller: usernameController,
                            decoration: InputDecoration(
                              labelText: 'Username',
                            ),
                          ),
                          TextField(
                            controller: mailController,
                            decoration: InputDecoration(
                              labelText: 'Mail',
                            ),
                          ),
                          TextField(
                            controller: passwordController,
                            decoration: InputDecoration(
                              labelText: 'Password',
                            ),
                          ),
                          TextField(
                            controller: contactNoController,
                            decoration: InputDecoration(
                              labelText: 'Contact No.',
                            ),
                          ),
                          TextField(
                            controller: classController,
                            decoration: InputDecoration(
                              labelText: 'Class',
                            ),
                          ),




                          Center(
                            child: TextButton(
                              onPressed: () {
                                setState(() {
                                  // Update the card details with new values
                                  // You can add more logic or validations here if needed
                                });
                                Navigator.pop(context); // Close the dialog
                              },
                              child: Text('Save'),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              );
            },
            child: Text('edit profile'),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Profile(),
  ));
}
