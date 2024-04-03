import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyCustomDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Container(
        height: 300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 80,
              alignment: Alignment.center,
              child: Expanded(child: Center(
                child: Image.asset(
                  'assets/images/ic_dialog.png', height: 50, width: 50,),
              )),
            ),
            Container(
              height: 40,
              child: Expanded(child: Center(
                child: Text('Congratulation Fahad',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w800),),
              ),),
            ),

            Container(
              height: 60,
             child: Center(
               child: Column(
                 children: [
                  Text('You have successfully registered'),
                   Text('Let’s update your profile'),
                   Text('to get started!')

                 ],
               ),
             ),
            ),
            Container(
              alignment: Alignment.bottomCenter,
              height: 70,
              color: Colors.cyan,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.red), // Set background color
                    ),

                    onPressed: () {
                      Navigator.of(context).pop();
                    }, child: Text("Get Stared")),
              ),
            )

          ],
        ),
      ),
    );
  }
}