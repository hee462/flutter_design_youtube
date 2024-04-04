import 'package:flutter/cupertino.dart';

class Video {
  final String title;
  final String imagePath;
  final String userImage;
  final String subTitle;
  final String time;
  final Icon icon;

  const Video({
    required this.title,
    required this.imagePath,
    required this.userImage,
    required this.subTitle,
    required this.time,
    required this.icon,
  });
}
