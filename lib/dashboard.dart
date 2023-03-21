import 'package:flutter/material.dart';
import 'package:tabletest/views/userManagement/pages/userManagement.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: Container(
          color: Colors.black,
        )),
        Expanded(flex: 5, child: UserManagementPage())
      ],
    );
  }
}
