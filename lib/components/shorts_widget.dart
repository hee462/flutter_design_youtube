import 'package:flutter/material.dart';
import 'package:flutter_design_youtube/model/shorts.dart';

class ShortsWidget extends StatelessWidget {
  final List<Shorts> shortsList;

  const ShortsWidget({Key? key, required this.shortsList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: shortsList.map((shorts) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            color: Colors.white,
            height: 150,
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Image.asset(
                    shorts.thumbnail,
                    fit: BoxFit.cover,
                  ),
                ),
                Expanded(
                  flex: 7,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          shorts.shortsTitle,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          shorts.title,
                          style: const TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          shorts.views,
                          style: const TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      }).toList(),
    );
  }
}
