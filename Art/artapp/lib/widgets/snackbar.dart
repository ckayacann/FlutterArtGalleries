import 'package:flutter/material.dart';
import '../constans/fonts.dart';

class SnackbarWidget extends StatelessWidget {
  final Widget child;
  const SnackbarWidget({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    DateTime? currentBackPressTime;
    return WillPopScope(
        onWillPop: () async {
          DateTime now = DateTime.now();

          if (currentBackPressTime == null ||
              now.difference(currentBackPressTime!) >
                  const Duration(seconds: 2)) {
            currentBackPressTime = now;

            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                backgroundColor: const Color.fromARGB(255, 180, 120, 53),
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                elevation: 6.0,
                behavior: SnackBarBehavior.floating,
                duration: const Duration(milliseconds: 1500),
                margin:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                content: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    'Press back button again to exit',
                    textAlign: TextAlign.center,
                    style: snackbar,
                  ),
                ),
              ),
            );

            return false;
          }
          return true;
        },
        child: child);
  }
}
