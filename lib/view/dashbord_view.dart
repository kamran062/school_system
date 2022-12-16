import 'package:flutter/material.dart';
import 'package:school_system/utils/app_text.dart';
import 'package:school_system/view/widgets/dashbord_widgets.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';


import '../controll/api_controller.dart';
import '../controll/dashboard_provider/services_view_model.dart';
import '../model/application_data_model.dart';
import 'package:provider/provider.dart';
import 'package:intl/intl.dart';

import '../utils/app_colors.dart';
import 'approved_app_screen/approve_app_screen.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  late Future<ApplicationModel> futureData;

  @override
  void initState() {
    super.initState();
    futureData = ApiController().getApiData();
  }

  @override
  Widget build(BuildContext context) {
    final myProvider = Provider.of<ServicesVM>(context, listen: false);

    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.appBackgroundColor,
        body: Column(
          children: [
            topSectionWidget(size),
            Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  smallContainers(size, "23", "Applications",(){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>ApproveAppScreen()));
                  }),
                  smallContainers(size, "8", "To test",(){}),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Passed Applications",
                    style: TextStyles.heading1Text,
                  ),
                  const Text(
                    "View upcoming",
                    style: TextStyle(color: Color(0xff365394)),
                  ),
                ],
              ),
            ),
            Expanded(
              child: FutureBuilder<ApplicationModel>(
                future: futureData,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return SizedBox(
                      height: size.height * 0.74,
                      child: ListView.builder(
                        itemCount: snapshot.data!.data?.applications!.length,
                        itemBuilder: (context, index) {
                          var objectId = snapshot
                              .data!.data?.applications![index].objectId;
                          var timestamp = snapshot
                              .data!.data?.applications![index].timestamp;
                          var stuName = snapshot.data!.data
                              ?.applications![index].studentData?.name;
                          var stuAge = snapshot.data!.data?.applications![index]
                              .studentData?.age;
                          var stuGrade = snapshot.data!.data
                              ?.applications![index].studentData?.classGrade;
                          var dt =
                              DateTime.fromMillisecondsSinceEpoch(timestamp!);
                          var formatedDate =
                              DateFormat('dd MM yyyy').format(dt);
                          return dashBoardCard(formatedDate, stuName, stuAge, stuGrade);
                        },
                      ),
                    );
                  } else {
                    return Padding(
                      padding: EdgeInsets.only(top: size.height * 0.1),
                      child: const SpinKitThreeBounce(
                        color: Colors.blueAccent,
                      ),
                    );
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
