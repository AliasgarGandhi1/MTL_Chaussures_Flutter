import 'package:flutter/material.dart';

import 'checkout.dart';
import 'home.dart';

showAlertDialog(BuildContext context) {

  // set up the buttons
  Widget cancelButton = TextButton(

    child: Text("Cancel"),
    onPressed:  () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Checkout(),
        ),
      );
    },
  );
  Widget continueButton = TextButton(
    child: Text("Confirm"),
    onPressed:  () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Home(),
        ),
      );
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    contentTextStyle: TextStyle(color: Colors.black),
    titleTextStyle:TextStyle(color: Colors.black,fontSize:18,fontWeight: FontWeight.bold) ,
    backgroundColor: Colors.white,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15),
    ),
    title: Text("Confirmation"),
    content: Text("Would you like to cancel?"),
    actions: [
      cancelButton,
      continueButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}




showOrderPlacedDialog1(BuildContext context) {

  // set up the buttons
  // Widget cancelButton = TextButton(
  //
  //   child: Text("Cancel"),
  //   onPressed:  () {
  //     Navigator.push(
  //       context,
  //       MaterialPageRoute(
  //         builder: (context) => Checkout(),
  //       ),
  //     );
  //   },
  // );
  Widget continueButton = TextButton(
    child: Text("Continue to Shopping"),
    onPressed:  () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Home(),
        ),
      );
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    contentTextStyle: TextStyle(color: Colors.white),
    titleTextStyle:TextStyle(color: Colors.white,fontSize:18,fontWeight: FontWeight.bold) ,
    backgroundColor: Colors.red,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15),
    ),
    title: Text("Congratulations!!"),
    content: Text("Your order has been placed successfully! Thank you for shopping with us 😄"
    ),
    actions: [
      //cancelButton,
      continueButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}