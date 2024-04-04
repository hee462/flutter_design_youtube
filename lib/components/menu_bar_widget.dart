import 'package:flutter/material.dart';
import 'package:flutter_design_youtube/model/menu_bar.dart' as YoutubeMenu;

class MenuBarWidget extends StatelessWidget {
  final List<YoutubeMenu.MenuBar> menuBars;

  const MenuBarWidget({super.key, required this.menuBars});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: menuBars.map((menuBar) {
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: menuBar.color,
            ),
            padding: const EdgeInsets.all(8),
            margin: const EdgeInsets.symmetric(horizontal: 8),
            child: Text(
              menuBar.word,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
