import 'package:admin/responsive.dart';
import 'package:admin/screens/dashboard/components/storage_details.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../dashboard/components/recent_files.dart';

class NewsForm extends StatefulWidget {

  @override
  State<NewsForm> createState() => _NewsFormState();
}

class _NewsFormState extends State<NewsForm> {
  bool addNews = false;
  double formHeight = 100;
  TextEditingController headingController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  TextEditingController detailsController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    print(formHeight);
    return SafeArea(
      child: SingleChildScrollView(
        primary: false,
        padding: EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 5,
                  child: Column(
                    children: [
                      AnimatedContainer(
                        height: formHeight,
                        duration: Duration(milliseconds: 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            addNews?Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    child: Text('सूचना प्रकाशन',

                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold
                                    ),
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      SizedBox(
                                        width: width * .15,
                                        height: height * .05,
                                        child: TextFormField(
                                          controller: headingController,
                                          decoration: InputDecoration(
                                            labelText: 'विषय',
                                            border: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(
                                                  10.0), // Adjust the border radius as needed
                                            ),
                                            // Remove the default underline
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.black87, width: 1),
                                              borderRadius: BorderRadius.circular(
                                                  10.0), // Adjust the border radius as needed
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide:
                                              BorderSide(color: Colors.blue),
                                              borderRadius: BorderRadius.circular(
                                                  10.0), // Adjust the border radius as needed
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: width*.05,
                                      ),
                                      SizedBox(
                                        width: width * .15,
                                        height: height * .05,
                                        child: TextFormField(
                                          controller: dateController,
                                          decoration: InputDecoration(
                                            labelText: 'मिति साल-महिना-दिन',
                                            border: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(
                                                  10.0), // Adjust the border radius as needed
                                            ),
                                            // Remove the default underline
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.black87, width: 1),
                                              borderRadius: BorderRadius.circular(
                                                  10.0), // Adjust the border radius as needed
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide:
                                              BorderSide(color: Colors.blue),
                                              borderRadius: BorderRadius.circular(
                                                  10.0), // Adjust the border radius as needed
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: width * .15,
                                    height: height * .15, // Adjust the height as needed
                                    child: TextField(
                                      controller: detailsController,
                                      maxLines: 5, // Setting maxLines to null allows for multiple lines of text
                                      decoration: InputDecoration(
                                        labelText: 'समाचारको विवरण',
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(color: Colors.black87, width: 1),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(color: Colors.blue),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: height*.05,
                                    child: ElevatedButton.icon(
                                      style: TextButton.styleFrom(
                                        backgroundColor: Colors.green,
                                        padding: EdgeInsets.symmetric(
                                          horizontal: defaultPadding * 1.5,
                                          vertical:
                                          defaultPadding / (Responsive.isMobile(context) ? 2 : 1),
                                        ),
                                      ),
                                      onPressed: () {
                                        addNews =! addNews;

                                      },
                                      icon: Icon(Icons.save),
                                      label: Text("Save"),
                                    ),
                                  ),


                                ],
                              ),
                            ):Container(),
                            Container(
                              height: height*.05,
                              child: ElevatedButton.icon(
                                style: TextButton.styleFrom(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: defaultPadding * 1.5,
                                    vertical:
                                    defaultPadding / (Responsive.isMobile(context) ? 2 : 1),
                                  ),
                                ),
                                onPressed: () {
                                  addNews =! addNews;
                                  if(addNews==true){
                                    setState(() {
                                      formHeight = height*.35;
                                    });
                                  }else{
                                    setState(() {
                                      formHeight = height*.08;
                                    });
                                  }
                                },
                                icon: Icon(Icons.add),
                                label: Text("Add New"),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: defaultPadding),
                      RecentFiles(),
                      if (Responsive.isMobile(context))
                        SizedBox(height: defaultPadding),
                      if (Responsive.isMobile(context)) StorageDetails(),
                    ],
                  ),
                ),

              ],
            )
          ],
        ),
      ),
    );
  }
}
