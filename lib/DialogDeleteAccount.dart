import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DialogDeleteAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0))),
      child: Container(
        height: 250,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.only(top: 10),
              height: 170,
              child: Center(
                child: Column(
                  children: [
                    Text(
                      'Delete your account? ',
                      style:
                      TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      'This action is permanent and will result \n in the deletion of all your data on our\n platform, including your profile. If you\n log back in within 30 days, you will be\n able to reactivate your account. After\n 30 days, this cannot be undone.',
                      style:
                      TextStyle(fontSize: 14,),textAlign: TextAlign.center
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
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
                      Expanded(
                          flex: 1,
                          child: Container(
                            alignment: Alignment.center,
                            child: Text('Cancel ',
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w600)),
                          )),
                      Expanded(
                        flex: 1,
                        child: VerticalDivider(
                          width: 2,
                          color: Colors.grey,
                          thickness: 2,
                        ),
                      ),
                      Expanded(
                          flex: 1,
                          child: Container(
                            alignment: Alignment.center,
                            child: Text('Delete ',
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w600)),
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
