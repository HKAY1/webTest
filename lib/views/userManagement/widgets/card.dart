import 'package:flutter/material.dart';

class Ccard extends StatelessWidget {
  const Ccard({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 156,
      height: 133,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(colors: [
            const Color(0xffEAD072),
            const Color(0xffB39134).withOpacity(1)
          ])),
    );
  }
}
