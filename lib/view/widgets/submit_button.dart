import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/strings.dart';

class SubmitButton extends StatelessWidget {
  const SubmitButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*0.075,
      width: MediaQuery.of(context).size.width*0.33,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          backgroundColor: Color(0xffCCCCCC),
          primary: Colors.white,
          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
        ),
        child:  Text(AppStrings.submit,style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,),),
        onPressed: () {
          print('Pressed');
        },
      ),
    );
  }
}
