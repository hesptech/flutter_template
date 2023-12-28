import 'package:flutter/material.dart';

class NotificationsService {

  static GlobalKey<ScaffoldMessengerState> messangerKey = GlobalKey<ScaffoldMessengerState>();

  static showSnackBarError( String message) {

    final snackBar = SnackBar(
      backgroundColor: Colors.red,
      content: Text(message,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
      ),
    );

    messangerKey.currentState!.showSnackBar(snackBar);
  }


  static showSnackBar( String message) {

    final snackBar = SnackBar(
      backgroundColor: Colors.red,
      content: Text(message,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
      ),
    );

    messangerKey.currentState!.showSnackBar(snackBar);
  }

  static showBusyIndicator( BuildContext context ) {
    const AlertDialog dialog = AlertDialog(
      content: SizedBox(
        width: 100.0,
        height: 100.0,
        child: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );

    showDialog(context: context, builder: ( _ ) => dialog );
  }
}