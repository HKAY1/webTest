// ignore_for_file: prefer_typing_uninitialized_variables

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:tabletest/utilities/textUtilities.dart';
import 'package:tabletest/widgets/coustomTable.dart';
import 'package:tabletest/services/modals/data.dart';

class EntityTable extends StatefulWidget {
  final String title;
  final List<DataColumn> column;
  final List<Data> rows;
  const EntityTable({
    Key? key,
    required this.title,
    required this.rows,
    required this.column,
  }) : super(key: key);

  @override
  State<EntityTable> createState() => _EntityTableState();
}

class _EntityTableState extends State<EntityTable> {
  List<Data>? filterData;
  late List<Data> data;

  @override
  void initState() {
    filterData = widget.rows;
    data = widget.rows;
    super.initState();
  }

  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1102,
      height: 523,
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Theme.of(context).canvasColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: CoustomPaginatedDataTable(
            arrowHeadColor: Colors.black,
            availableRowsPerPage: [data.length],
            sortColumnIndex: 0,
            actions: [
              Container(
                height: 35,
                width: 200,
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      // blurRadius: 25,
                      offset: const Offset(0, 1),
                    ),
                  ],
                ),
                child: TextField(
                  controller: controller,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintStyle:
                          TextStyles.style(12, FontWeight.normal, Colors.grey),
                      hintText: "Search",
                      suffixIcon: const Icon(
                        Icons.search,
                        size: 20,
                      )),
                  onChanged: (value) {
                    setState(() {
                      data = filterData!.where((element) {
                        return element.name
                            .toLowerCase()
                            .contains(value.toLowerCase());
                      }).toList();
                    });
                  },
                ),
              ),
              const SizedBox(height: 20, child: VerticalDivider()),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.download,
                    color: Colors.black,
                  ))
            ],
            header: Text(
              widget.title,
              style: TextStyles.style(16, FontWeight.bold, Colors.black),
              // GoogleFonts.poppins()
              //     .copyWith(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            source: RowSource(
              myData: data,
              count: data.length,
            ),
            rowsPerPage: 6,
            columnSpacing: 5,
            columns: widget.column,
          ),
        ),
      ),
    );
  }
}

class RowSource extends DataTableSource {
  var myData;
  final count;
  RowSource({
    required this.myData,
    required this.count,
  });

  @override
  DataRow? getRow(int index) {
    if (index < rowCount) {
      return recentFileDataRow(myData![index], index);
    } else {
      return null;
    }
  }

  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => count;

  @override
  int get selectedRowCount => 0;
}

DataRow recentFileDataRow(var data, int index) {
  return DataRow(
    color: MaterialStateColor.resolveWith((states) {
      if (index % 2 == 1) {
        return const Color(0xffF0F4F6).withOpacity(0.5);
      }
      return Colors.white;
    }),
    cells: [
      DataCell(Text(data.name ?? "Name",
          style: TextStyles.style(
              14, FontWeight.normal, const Color(0xff4A4A68)))),
      DataCell(Text(data.contactnumber.toString(),
          style: TextStyles.style(
              14, FontWeight.normal, const Color(0xff4A4A68)))),
      DataCell(Text(data.nolicense.toString(),
          style: TextStyles.style(
              14, FontWeight.normal, const Color(0xff4A4A68)))),
      DataCell(Text(data.status.toString(),
          style: TextStyles.style(
              14, FontWeight.normal, const Color(0xff4A4A68)))),
      DataCell(Text(data.ismultidevice.toString(),
          style: TextStyles.style(
              14, FontWeight.normal, const Color(0xff4A4A68)))),
      DataCell(Text(data.effectivedate.toString(),
          style: TextStyles.style(
              14, FontWeight.normal, const Color(0xff4A4A68)))),
      const DataCell(IconButton(
          onPressed: null,
          icon: Icon(
            Icons.more_vert,
            color: Color(0xff4A4A68),
          )))
    ],
  );
}
