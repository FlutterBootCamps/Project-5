import 'package:flowerd/core/utils/constant_colors.dart';
import 'package:flutter/material.dart';


class AccountParts extends StatelessWidget {
  const AccountParts({
    super.key, required this.imagePath, required this.content,
  });
  final String imagePath;
  final String content;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
         SizedBox(
          height: 49.5,
          child: Row(
            children: [
              Image.asset(imagePath),
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Text(content),
              ),
              Spacer(),
              content=="Language"?Text("العربية",style: TextStyle(color: Color(0xff478A95)),): Icon(Icons.arrow_forward_ios_sharp),
            ],
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width * (2.5 / 3),
          height: 1,
          decoration: const BoxDecoration(
              color: c2,
              borderRadius: BorderRadius.all(Radius.circular(4))),
        ),
        
      ],
    );
  }
}




/*const SizedBox(
                    height: 49.5,
                    child: Row(
                      children: [
                        Text("data"),
                        Spacer(),
                        Icon(Icons.arrow_forward_ios_sharp),
                      ],
                    ),
                  ), */