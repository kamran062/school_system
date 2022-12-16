import 'package:flutter/material.dart';
import 'package:school_system/utils/app_text.dart';
import 'package:school_system/utils/strings.dart';

import '../../utils/app_colors.dart';
import '../widgets/dashbord_widgets.dart';
import '../widgets/submit_button.dart';

class ApproveAppScreen extends StatefulWidget {
  const ApproveAppScreen({Key? key}) : super(key: key);

  @override
  State<ApproveAppScreen> createState() => _ApproveAppScreenState();
}

class _ApproveAppScreenState extends State<ApproveAppScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.appBackgroundColor,
      appBar: AppBar( backgroundColor: Colors.white,elevation: 0,automaticallyImplyLeading: false),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _topContainer(),
            SizedBox(height: size.height * 0.02,),
            ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 4,
                itemBuilder: (context, index){
              return  Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 8),
                child: approvedAppContainers(size, '20-12-2022',"name",'8', "gName","cls",(){
                  showAlertDialog(context);
                }),
              );
            })
          ],
        ),
      ),
    );
  }

  Widget _topContainer(){
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height*0.1,
      width: size.width,
      decoration: BoxDecoration(
        color: Colors.white,
        // borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 0.7,
            blurRadius: 10,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.only(left: size.width*0.1),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           Text( AppStrings.appApproved,style: TextStyles.heading1Text2,),
           Text( AppStrings.takeActionPara,style: TextStyles.smallText,),
          ],
        ),
      ),
    );
  }

  void showAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog( shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          content: Container(
              width: MediaQuery.of(context).size.width / 1.3,
              height: MediaQuery.of(context).size.height / 2.5,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: const Color(0xFFFFFF),
              ),
              child: Column(
                children: [
                  Text("Student Detail",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w600,),),
                  SizedBox(height: MediaQuery.of(context).size.height*0.03,),
                  Text("STUDENT NAME",style: TextStyles.smallText,),
                  SizedBox(height: MediaQuery.of(context).size.height*0.01,),
                  Text("Muhammad Irshad Ahmad",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,),),
                  SizedBox(height: MediaQuery.of(context).size.height*0.02,),
                  Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width*0.3,
                        child: Column(
                          children: [
                            Text(AppStrings.age,style: TextStyles.smallText,),
                            Text("8",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,),),
                          ],
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height*0.07,
                        width: 1,
                        color: Colors.black12,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width*0.3,
                        child: Column(
                          children: [
                            Text(AppStrings.cls,style: TextStyles.smallText,),
                            Text("6th",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,),),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Divider(),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Test",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,),),
                      TextButton(onPressed: (){
                        dialogueCalender();
                      }, child:  Text("Scedule",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color: Colors.blue),),),

                    ],
                  ),
                  Divider(),
                  SizedBox(height: MediaQuery.of(context).size.height*0.01,),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      BackButton(),
                      SubmitButton(),
                    ],
                  )
                ],
              ),
          )
        );
      },
    );
  }
  dialogueCalender(){
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2025),
    );
  }
}
