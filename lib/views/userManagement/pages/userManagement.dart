// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tabletest/views/userManagement/widgets/card.dart';
import 'package:tabletest/services/modals/data.dart';
import 'package:tabletest/views/userManagement/widgets/table.dart';

import '../../../utilities/textUtilities.dart';

class UserManagementPage extends StatelessWidget {
  UserManagementPage({super.key});

  final ButtonStyle buttonStyle = TextButton.styleFrom(
    backgroundColor: Colors.black87,
    minimumSize: Size(165, 48),
    alignment: Alignment.center,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(27.0)),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 14, right: 24),
            child: Align(
              alignment: Alignment.topRight,
              child: TextButton.icon(
                style: buttonStyle,
                onPressed: () {},
                icon: Icon(
                  Icons.add,
                  color: Colors.white,
                ),
                label: Text("Add Vendor",
                    style: GoogleFonts.poppins().copyWith(
                      color: Colors.white,
                    )),
              ),
            ),
          ),
          SizedBox(
            child: Divider(),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: List.generate(
                5,
                (index) => Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Ccard(),
                    )),
          ),
          EntityTable(
            title: 'List of Entites',
            column: [
              DataColumn(
                  label: Text("Name",
                      style: TextStyles.style(12, FontWeight.normal,
                          const Color(0xff2F3336).withOpacity(0.5)))),
              DataColumn(
                label: Text(
                  "Contact Number",
                  style: TextStyles.style(12, FontWeight.normal,
                      const Color(0xff2F3336).withOpacity(0.5)),
                ),
              ),
              DataColumn(
                label: Text(
                  "No of Liences",
                  style: TextStyles.style(12, FontWeight.normal,
                      const Color(0xff2F3336).withOpacity(0.5)),
                ),
              ),
              DataColumn(
                label: Text(
                  "Status",
                  style: TextStyles.style(12, FontWeight.normal,
                      const Color(0xff2F3336).withOpacity(0.5)),
                ),
              ),
              DataColumn(
                label: Text(
                  "Is Multi Device",
                  style: TextStyles.style(12, FontWeight.normal,
                      const Color(0xff2F3336).withOpacity(0.5)),
                ),
              ),
              DataColumn(
                label: Text(
                  "Effective Date",
                  style: TextStyles.style(12, FontWeight.normal,
                      const Color(0xff2F3336).withOpacity(0.5)),
                ),
              ),
              DataColumn(
                label: Text(
                  "Action",
                  style: TextStyles.style(12, FontWeight.normal,
                      const Color(0xff2F3336).withOpacity(0.5)),
                ),
              ),
            ],
            rows: myData,
          ),
        ],
      ),
    );
  }
}
