import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:saudia_app_project_5/constant/color.dart';
import 'package:saudia_app_project_5/data_layer/data_services.dart';
import 'package:saudia_app_project_5/helper/screen_helper.dart';
import 'package:saudia_app_project_5/model/whats_New_model.dart';

class WhatsNew extends StatelessWidget {
  WhatsNew({super.key, 
  //  this.whatsNew, 
   required this.height, required this.width, this.newButton,
   required this.title,
   required this.description,
   required this.imagePath,
   required this.url,
      });
  // WhatsNewDataModel? whatsNew;
  String title;
  String description;
  String imagePath;
  String url;

  double height;
  double width;
  Widget? newButton;

  @override
  Widget build(BuildContext context) {

    final serviceLocator = GetIt.I.get<DataServices>();

    return InkWell(
      onTap: (){
        serviceLocator.launchGoogleURL(url: url);
      },
      child: Container(
        margin: const EdgeInsets.only(left: 16),
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
        height: height, //conyext.getWidth() * 0.7,
        width: width, // context.getWidth() * 0.90,
        decoration: BoxDecoration(
          image: DecorationImage(
            opacity: 0.8,
              image: AssetImage(imagePath),
              fit: BoxFit.cover),
          color: Colors.green,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              title,
              style: const TextStyle(
                  color: white, fontSize: 25, fontWeight: FontWeight.w500),
            ),
            Text(
              description,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(color: lightgrey, fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
