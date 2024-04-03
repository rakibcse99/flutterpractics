import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DialogLogout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0))),
      child: Container(
        height: 150,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.only(top: 10),
              height: 70,
              child: Center(
                child: Column(
                  children: [

                    Text('Are you sure you want to ',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
                    Text('logout?',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),


                  ],
                ),
              ),
            ),
            SizedBox(height: 30,),
            Divider(
              height: 1,
              color: Colors.grey,
              thickness: 1,
            ),
            Expanded(
              child: Center(
                child: Container(
                  height: 50,
                    child: Row(
                      children: [
                        Expanded(  flex:1,
                            child: Container(

                                alignment: Alignment.center
                                  ,child:
                              Text('Cancel ',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600)),

                            )),
                        Expanded(
                          flex: 1,
                          child: VerticalDivider(

                            color: Colors.grey,
                            thickness: 1,
                          ),
                        ),
                        Expanded(  flex:1,
                            child: Container(
                              alignment: Alignment.center
                              ,child:
                            Text('logout? ',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600)),

                        ))

                      ],
                    ),

                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

}