import 'package:flutter/material.dart';
import 'package:project_5_saad_alharbi/constant/colors.dart';
import 'package:project_5_saad_alharbi/extensions/screen_handler.dart';
import 'package:project_5_saad_alharbi/model/new_model.dart';

// ignore: must_be_immutable
class NewsCards extends StatelessWidget {
  NewsCards({super.key, required this.news});
  NewModel news;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.getWidth(),
      height: 300,
      child: Stack(
        children: [
          Image.asset(
            news.imagePath,
            fit: BoxFit.cover,
            height: 300, 
            width: context.getWidth(),
          ),
          Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.center,
                    end: Alignment.bottomCenter,
                    colors: [Colors.black12, Colors.black])),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  news.title,
                  textDirection:TextDirection.rtl ,
                  maxLines:  1, 
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    
                      color: textColor,
                      fontSize: 35,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  news.description,
                  style: TextStyle(
                    color: textColor.withOpacity(0.6),
                    fontSize: 25,
                  ),
                  maxLines: 2,
                  textDirection: TextDirection.rtl,
                  overflow: TextOverflow.ellipsis,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
