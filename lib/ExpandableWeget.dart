import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExpandableWidget extends StatefulWidget {
  @override
  _ExpandableWidgetState createState() => _ExpandableWidgetState();
}

class _ExpandableWidgetState extends State<ExpandableWidget> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
            title: Row(children: [
              Padding(
                padding: const EdgeInsets.only(left: 1.0, right: 10),
                child: Container(
                    alignment: Alignment.centerLeft,
                    child: SizedBox(
                      width: 30,
                      height: 30,
                      child: Image.asset(
                          'assets/images/ic_activitis.png'), // Replace 'assets/image2.png' with your actual image path
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "Activitis",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ]),

          trailing: Padding(
          padding: const EdgeInsets.only(left: 1.0),
          child: SizedBox(
          width: 20,
          height: 20,
          child: Image.asset('assets/images/ic_brackdown.png'), // Replace 'assets/image2.png' with your actual image path
          ),
          ),

          // Replace 'assets/image2.png' with your actual image path

          onTap: () {
            setState(() {
              _isExpanded = !_isExpanded;
            });
          },
        ),
        if (_isExpanded)
          Container(
            height: 400,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: CardWidget(),
            ),
          ),
      ],
    );
  }
}

class CardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      margin: EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        children: [
          ListTile(
            title: Text(
              'Intarests',
              style: TextStyle(fontSize: 15),
            ),
            leading: Padding(
              padding: EdgeInsets.only(left: 5.0),
              child: Image.asset(
                'assets/images/ic_intatests.png',
                height: 25,
                width: 25,
              ), // Replace 'assets/image2.png' with your actual image path
            ),
            trailing: Card(
              elevation: 1.5,
                child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), // Adjust the value to change the roundness
                color: Colors.blue, // Change the color as needed
              ),
              height: 30,
              width: 30,
              child: Center(
                child: Text(
                  '20',
                  style: TextStyle(
                    color: Colors.white, // Change text color as needed
                  ),
                ),
              ),)),
            onTap: () {
              /* Add some action*/
            },
            // You can customize the content of your card here
          ),
          ListTile(
            title: Text(
              'Shotlists',
              style: TextStyle(fontSize: 15),
            ),
            leading: Padding(
              padding: EdgeInsets.only(left: 5.0),
              child: Image.asset(
                'assets/images/ic_shotlist.png',
                height: 25,
                width: 25,
              ), // Replace 'assets/image2.png' with your actual image path
            ),
            trailing: Card(
                elevation: 1.5,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20), // Adjust the value to change the roundness
                    color: Colors.blue, // Change the color as needed
                  ),
                  height: 30,
                  width: 30,
                  child: Center(
                    child: Text(
                      '20',
                      style: TextStyle(
                        color: Colors.white, // Change text color as needed
                      ),
                    ),
                  ),)),
            onTap: () {
              /* Add some action*/
            },
          ),
          ListTile(
            title: Text(
              'Profile Viewers',
              style: TextStyle(fontSize: 15),
            ),
            leading: Padding(
              padding: EdgeInsets.only(left: 5.0),
              child: Image.asset(
                'assets/images/ic_profile.png',
                height: 25,
                width: 25,
              ), // Replace 'assets/image2.png' with your actual image path
            ),
            trailing: Card(
                elevation: 1.5,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20), // Adjust the value to change the roundness
                    color: Colors.blue, // Change the color as needed
                  ),
                  height: 30,
                  width: 30,
                  child: Center(
                    child: Text(
                      '20',
                      style: TextStyle(
                        color: Colors.white, // Change text color as needed
                      ),
                    ),
                  ),)),
            onTap: () {
              /* Add some action*/
            },
          ),
          ListTile(
            title: Text(
              'Viewed Contracts',
              style: TextStyle(fontSize: 15),
            ),
            leading: Padding(
              padding: EdgeInsets.only(left: 0.0),
              child: Image.asset(
                'assets/images/ic_views.png',
                height: 25,
                width: 25,
              ), // Replace 'assets/image2.png' with your actual image path
            ),
            trailing: Card(
                elevation: 1.5,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20), // Adjust the value to change the roundness
                    color: Colors.blue, // Change the color as needed
                  ),
                  height: 30,
                  width: 30,
                  child: Center(
                    child: Text(
                      '20',
                      style: TextStyle(
                        color: Colors.white, // Change text color as needed
                      ),
                    ),
                  ),)),
            onTap: () {
              /* Add some action*/
            },
          ),
          ListTile(
            title: Text(
              'My Notes',
              style: TextStyle(fontSize: 15),
            ),
            leading: Padding(
              padding: EdgeInsets.only(left: 5.0),
              child: Image.asset(
                'assets/images/ic_notes.png',
                height: 25,
                width: 25,
              ), // Replace 'assets/image2.png' with your actual image path
            ),
            trailing: Card(
                elevation: 1.5,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20), // Adjust the value to change the roundness
                    color: Colors.blue, // Change the color as needed
                  ),
                  height: 30,
                  width: 30,
                  child: Center(
                    child: Text(
                      '20',
                      style: TextStyle(
                        color: Colors.white, // Change text color as needed
                      ),
                    ),
                  ),)),
            onTap: () {
              /* Add some action*/
            },
          ),
          ListTile(
            title: Text(
              'Block Lists',
              style: TextStyle(fontSize: 15),
            ),
            leading: Padding(
              padding: EdgeInsets.only(left: 5.0),
              child: Image.asset(
                'assets/images/ic_blocklist.png',
                height: 25,
                width: 25,
              ), // Replace 'assets/image2.png' with your actual image path
            ),
            trailing: Card(
                elevation: 1.5,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20), // Adjust the value to change the roundness
                    color: Colors.blue, // Change the color as needed
                  ),
                  height: 30,
                  width: 30,
                  child: Center(
                    child: Text(
                      '20',
                      style: TextStyle(
                        color: Colors.white, // Change text color as needed
                      ),
                    ),
                  ),)),
            onTap: () {
              /* Add some action*/
            },
          ),
          ListTile(
            title: Text(
              'New Members',
              style: TextStyle(fontSize: 15),
            ),
            leading: Padding(
              padding: EdgeInsets.only(left: 5.0),
              child: Image.asset(
                'assets/images/ic_members.png',
                height: 25,
                width: 25,
              ), // Replace 'assets/image2.png' with your actual image path
            ),
            trailing: Card(
                elevation: 1.5,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20), // Adjust the value to change the roundness
                    color: Colors.blue, // Change the color as needed
                  ),
                  height: 30,
                  width: 30,
                  child: Center(
                    child: Text(
                      '20',
                      style: TextStyle(
                        color: Colors.white, // Change text color as needed
                      ),
                    ),
                  ),)),
            onTap: () {
              /* Add some action*/
            },
          ),
        ],
      ),
    );
  }
}
