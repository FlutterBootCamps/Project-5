import 'package:flutter/material.dart';

class AccountContaineerWidget extends StatelessWidget {
   AccountContaineerWidget({
    super.key,this.image,this.text,this.wid
  });
String? image;
String? text;
double? wid;
  @override
  Widget build(BuildContext context) {
    return 
     Container(
        height: 40,
        child: Row(
          children: [
            SizedBox(width: 5,),
            Image.asset(
                '$image'),
                SizedBox(width: 5,),
            Text('$text',style: TextStyle(fontSize: 16),),
            SizedBox(width: wid,),//Customer Care
            Icon(Icons.keyboard_arrow_right_sharp,color: Color(0xffc6c6c6),)
          ],
        ),
     );
    
  }
}
