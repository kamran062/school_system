import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/strings.dart';

class BackButton extends StatelessWidget {
  const BackButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: MediaQuery.of(context).size.height*0.075,
      width: MediaQuery.of(context).size.width*0.28,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          side: const BorderSide(color: Colors.blue),
          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
        ),
        child:  const Text(AppStrings.back,style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,),),
        onPressed: () {
          print('Pressed');
        },
      ),
    );
  }
}
