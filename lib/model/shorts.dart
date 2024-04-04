import 'package:flutter/cupertino.dart';

class Shorts{
  final String title;
  final String thumbnail;
  final String shortsTitle;
  final String views;
  final Icon icon;

  const Shorts({
    required this.title,
    required this.thumbnail,
    required this.shortsTitle,
    required this.views,
    required this.icon,


  });

  Map<String, dynamic> toMap() {
    return {
      'title': this.title,
      'thumbnail': this.thumbnail,
      'shortsTitle': this.shortsTitle,
      'views': this.views,
      'icon': this.icon,
    };
  }

  factory Shorts.fromJson(Map<String, dynamic> json) {
    return Shorts(
      title: json['title'] as String,
      thumbnail: json['thumbnail'] as String,
      shortsTitle: json['shortsTitle'] as String,
      views: json['views'] as String,
      icon: json['icon'] as Icon,
    );
  }
}