import 'package:flutter/material.dart';
import 'package:school_system/utils/app_text.dart';
import 'package:school_system/utils/strings.dart';

import '../../utils/app_colors.dart';


Widget topSectionWidget(size) {
  return Stack(
    children: [
      SizedBox(
        height: size.height * 0.35,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 80.0),
          child: Container(
            decoration: BoxDecoration(
              color: AppColors.appPrimaryColor,
              borderRadius: BorderRadius.vertical(
                  bottom: Radius.elliptical(size.width, 30.0)),
            ),
          ),
        ),
      ),
      const Positioned(
        top: -20,
        right: -20,
        child: CircleAvatar(
          radius: 65,
          backgroundColor: AppColors.appSecondaryColor,
        ),
      ),
      const Positioned(
        top: 60,
        left: -10,
        child: CircleAvatar(
          radius: 35,
          backgroundColor: Color(0xff3c538e),
        ),
      ),
      Padding(
        padding: EdgeInsets.fromLTRB(20.0, size.height * 0.19, 20.0, 20.0),
        child: Container(
          height: size.height * 0.15,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.4),
                spreadRadius: 1,
                blurRadius: 5,
                offset: const Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(top: size.height * 0.11),
        child: Center(
          child: Column(
            children: [
              Stack(
                children: [
                  const CircleAvatar(
                    radius: 55,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/img.jpeg'),
                      radius: 53,
                    ),
                  ),
                  Positioned(
                    top: size.height * 0.09,
                    left: size.width * 0.20,
                    child: const CircleAvatar(
                      radius: 13,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        // backgroundImage: AssetImage('assets/images/img.jpeg'),
                        backgroundColor: AppColors.appPrimaryColor,
                        radius: 12,
                        child: Icon(
                          Icons.camera_alt,
                          size: 12,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                "Sadiq Public School",
                style: TextStyles.heading1Text,
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(60.0, 10.0, 60.0, 20.0),
                child: Text(
                  "41-M NEW OFFICERS COLONY, WAH CANTONMENT",
                  style: TextStyle(
                      color: Colors.black54, fontSize: 12, letterSpacing: 1.0),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      )
    ],
  );
}

Widget smallContainers(size, count, text,onTapped) {
  return InkWell(
    onTap: onTapped,
    child: Container(
      height: size.height * 0.09,
      width: size.width * 0.40,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.4),
            spreadRadius: 1,
            blurRadius: 5,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Column(
          children: [
            Text(
              count,
              style: const TextStyle(
                  fontSize: 27,
                  fontWeight: FontWeight.w500,
                  color: Colors.black87),
            ),
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: Text(
                text,
                style: const TextStyle(fontSize: 13),
              ),
            )
          ],
        ),
      ),
    ),
  );
}

Widget approvedAppContainers(size, date,name,age, gName,cls,onTapped) {
  return InkWell(
    onTap: onTapped,
    child: Container(
      height: size.height * 0.13,
      width: size.width * 0.9,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.4),
            spreadRadius: 1,
            blurRadius: 5,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: size.height * 0.02,vertical:size.height * 0.015),
        child: Column(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  date,
                  style: TextStyles.smallText,
                ),
                 Text(
                  AppStrings.age,
                  style: TextStyles.smallText,
                ),
              ],
            ),
            // SizedBox(height: size.height * 0.002,),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  name,
                  style: TextStyles.heading2Text2,
                ),
                 Text(
                  age,
                  style: TextStyles.heading2Text2,
                ),
              ],
            ),
            SizedBox(height: size.height * 0.005,),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  AppStrings.guardianName,
                  style: TextStyles.smallText,
                ),
                Text(
                  AppStrings.cls,
                  style: TextStyles.smallText,
                ),
              ],
            ),
            SizedBox(height: size.height * 0.005,),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  gName,
                  style: TextStyles.heading2Text2,
                ),
                Text(
                  cls,
                  style: TextStyles.heading2Text2,
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}

Widget dashBoardCard(formatedDate, stuName, stuAge, stuGrade) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
    child: Container(
      height: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.4),
            spreadRadius: 1,
            blurRadius: 5,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(10.0, 10.0, 40.0, 10.0),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      formatedDate.toString(),
                      style: TextStyles.smallText,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 4.0),
                      child: Text(
                        stuName.toString(),
                        style: TextStyles.heading2Text,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Container(
                        height: 27,
                        width: 90,
                        decoration: BoxDecoration(
                          color: AppColors.passCardColorLight,
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: const Center(
                            child: Text(
                          "Passed",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: AppColors.passCardColor),
                        )),
                      ),
                    )
                  ],
                ),
                const Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "AGE",
                      style: TextStyles.smallText,
                    ),
                    Text(stuAge.toString(), style: TextStyles.heading2Text),
                    Padding(
                      padding: const EdgeInsets.only(top: 2.0),
                      child: Text(
                        "class",
                        style: TextStyles.smallText,
                      ),
                    ),
                    Text("$stuGrade Grade", style: TextStyles.heading2Text),
                  ],
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: RotatedBox(
              quarterTurns: 1,
              child: Container(
                height: 25,
                width: 140,
                decoration: const BoxDecoration(
                    color: AppColors.passCardColor,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10),
                      topLeft: Radius.circular(10),
                    )),
                child: Center(
                  child: RichText(
                    text: const TextSpan(
                      text: 'PASSED',
                      style: TextStyle(
                          color: Colors.white,
                          letterSpacing: 1.0,
                          fontSize: 13),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
