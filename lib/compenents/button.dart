import 'package:flutter/material.dart';

class Mybutton extends StatelessWidget {
  final String txt;
  final void Function()? onTap;
  const Mybutton({
    super.key,
    required this.txt,
    required this.onTap,
  });

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 45, 179, 114),
            borderRadius: BorderRadius.circular(40)),
        padding: EdgeInsets.all(25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              txt,
              style: TextStyle(color: Colors.white, fontSize: 22),
            ),
            SizedBox(
              width: 20,
            ),
            Icon(Icons.arrow_forward, color: Colors.white),
          ],
        ),
      ),
    );
  }
}
