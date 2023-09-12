import 'package:admin/apis/get_udhyami_list.dart';
import 'package:admin/models/RecentFile.dart';
import 'package:admin/models/all_users.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';

class UdhyamiContainer extends StatelessWidget {
  const UdhyamiContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    late List<AllUser> recentFiles;
    return FutureBuilder<List<AllUser>>(
      future: fetchDataFromApi(),
      builder:(context, snapshot){
      if (snapshot.connectionState == ConnectionState.waiting) {
        return CircularProgressIndicator(); // Display a loading indicator while fetching data
      } else if (snapshot.hasError) {
        return Text('Error: ${snapshot.error}');
      } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
        return Text('No data available.');
      } else {
        recentFiles = snapshot.data!;
        return Container(
          margin: EdgeInsets.all(40),
          decoration: BoxDecoration(
            color: secondaryColor,
            borderRadius: const BorderRadius.all(Radius.circular(10)),
          ),
          child: SizedBox(
              width: double.infinity,
              child: DataTable(
            columns: [
              DataColumn(
                label: Text("उद्यमीको नाम"),
              ),
              DataColumn(
                label: Text("उद्योगको नाम"),
              ),
              DataColumn(
                label: Text("वडा"),
              ),
              DataColumn(
                label: Text("उद्योगको प्रकार"),
              ),
              DataColumn(
                label: Text("सम्पर्क"),
              ),
              DataColumn(
                label: Text("कार्यहरु"),
              ),
            ],
            rows: recentFiles.map((fileInfo) {
              return DataRow(
                cells: [
                  DataCell(
                    Text(fileInfo.userinfo!.firstName! +
                        ' ' +
                        fileInfo.userinfo!.lastName!),
                  ),
                  DataCell(
                    Text(fileInfo.businesses![0].businessName!),
                  ),
                  DataCell(Text(fileInfo.businesses![0].businessWardNumber!)),
                  DataCell(Text(fileInfo.businesses![0].businessType!)),
                  DataCell(Text(fileInfo.userinfo!.mobileNumber!)),
                  DataCell(Text(fileInfo.businesses![0].businessTypeOrProductType!)),
                ],
              );
            }).toList(),
          ),
          ),
        );
      }
      },
    );
  }
}
