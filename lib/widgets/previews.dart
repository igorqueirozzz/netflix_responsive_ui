import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:netflix_responsive_ui/models/models.dart';

class Previews extends StatelessWidget {
  final String title;
  final List<Content> contentList;

  const Previews({super.key, required this.title, required this.contentList});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Text(
            title,
            style: const TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 165,
          child: ScrollConfiguration(
            behavior: _MyCustomScrollBehavior(),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
              itemCount: contentList.length,
              itemBuilder: (context, index) {
                final Content content = contentList[index];
                return GestureDetector(
                  onTap: () {},
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 16),
                        width: 130,
                        height: 130,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(content.imageUrl!),
                                fit: BoxFit.cover),
                            shape: BoxShape.circle,
                            border:
                                Border.all(color: content.color!, width: 4.0)),
                      ),
                      Container(
                        width: 130,
                        height: 130,
                        decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              colors: [
                                Colors.black87,
                                Colors.black45,
                                Colors.transparent,
                              ],
                              stops: [0, 0.25, 1],
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter
                            ),
                            shape: BoxShape.circle,
                            border:
                                Border.all(color: content.color!, width: 4.0)),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        left: 0,
                        child: SizedBox(
                          height: 60,
                          child: Image.asset(content.titleImageUrl!),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        )
      ],
    );
  }
}

class _MyCustomScrollBehavior extends MaterialScrollBehavior {
  // Override behavior methods and getters like dragDevices
  @override
  Set<PointerDeviceKind> get dragDevices => {
    PointerDeviceKind.touch,
    PointerDeviceKind.mouse,
    // etc.
  };
}
