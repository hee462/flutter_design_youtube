import 'package:flutter/material.dart';
import 'package:flutter_design_youtube/components/menu_bar_widget.dart';
import 'package:flutter_design_youtube/model/menu_bar.dart' as YoutubeModel;

import '../components/video__main_widget.dart';
import '../model/video.dart';

void main() {
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Row(
              children: [
                Icon(
                  Icons.video_collection_outlined,
                  color: Colors.red,
                  size: 50,
                ),
                SizedBox(width: 8),
                Text(
                  'YouTube',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(Icons.aspect_ratio, color: Colors.white),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(Icons.add_alert_outlined, color: Colors.white),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(Icons.search, color: Colors.white),
                ),
                ClipOval(
                  child: Image.asset(
                    'assets/profile.jpg',
                    scale: 20,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: const Icon(
                      Icons.compass_calibration,
                      color: Colors.white,
                    ),
                  ),
                  const Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Expanded(
                          child: MenuBarWidget(menuBars: [
                            YoutubeModel.MenuBar(
                              word: '전체',
                              color: Colors.grey,
                            ),
                            YoutubeModel.MenuBar(
                              word: '게임',
                              color: Colors.grey,
                            ),
                            YoutubeModel.MenuBar(
                              word: '뉴스',
                              color: Colors.grey,
                            ),
                            YoutubeModel.MenuBar(
                              word: '실시간',
                              color: Colors.grey,
                            ),
                            YoutubeModel.MenuBar(
                              word: '믹스',
                              color: Colors.grey,
                            ),
                            YoutubeModel.MenuBar(
                              word: '음악',
                              color: Colors.grey,
                            ),
                            YoutubeModel.MenuBar(
                              word: '랜덤',
                              color: Colors.grey,
                            ),
                            YoutubeModel.MenuBar(
                              word: '스포츠',
                              color: Colors.grey,
                            ),
                          ]),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              const VideoWidget(
                video: Video(
                  title: '오준석의 생존코딩',
                  imagePath: 'assets/profile.jpg',
                  userImage: 'assets/profile.jpg',
                  subTitle: '교육하고 책쓰는 개발자',
                  time: '10:00',
                  icon: Icon(Icons.play_arrow),
                ),
              ),

              const SizedBox(height: 16),
              const VideoWidget(
                video: Video(
                  title: '오준석의 생존코딩',
                  imagePath: 'assets/profile.jpg',
                  userImage: 'assets/profile.jpg',
                  subTitle: '교육하고 책쓰는 개발자',
                  time: '10:00',
                  icon: Icon(Icons.play_arrow),
                ),
              ),
              const SizedBox(height: 16),
              const VideoWidget(
                video: Video(
                  title: '오준석의 생존코딩',
                  imagePath: 'assets/profile.jpg',
                  userImage: 'assets/profile.jpg',
                  subTitle: '교육하고 책쓰는 개발자',
                  time: '10:00',
                  icon: Icon(Icons.play_arrow),
                ),
              ),


            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.white,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.video_camera_front),
            label: 'Shorts',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(top: 16.0),
              child: Icon(
                Icons.add,
                size: 50,
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.video_collection),
            label: '구독',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.video_collection_outlined),
            label: '보관함',
          ),
        ],
      ),
    );
  }
}
