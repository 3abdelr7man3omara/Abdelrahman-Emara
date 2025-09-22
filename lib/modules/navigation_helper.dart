import 'package:flutter/material.dart';
import 'package:online_shop/Screens/shoppingPage.dart';

Future<void> showSuccessDialog({
  required BuildContext context,
  required String title,
  // required String message,
  // required Widget destinationPage,
}) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(title),
        content: const SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Text("Press close to go to your shopping page"),
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            child: const Text('Close'),
            onPressed: () {
              Navigator.of(context).pop(); // close the dialog
              Navigator.of(context).pushReplacement(
                PageRouteBuilder(
                  transitionDuration: const Duration(milliseconds: 800),
                  pageBuilder: (context, animation, secondaryAnimation) =>
                      const shopping_page(),
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) {
                    final fadeIn =
                        Tween(begin: 0.0, end: 1.0).animate(animation);
                    return FadeTransition(
                      opacity: fadeIn,
                      child: child,
                    );
                  },
                ),
              );
            },
          ),
        ],
      );
    },
  );
}
