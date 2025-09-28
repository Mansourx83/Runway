import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:runway/screens/categories.dart';
import 'package:runway/widgets/custom_app_bar.dart';
import 'package:video_player/video_player.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late VideoPlayerController _controller;
  @override
  void initState() {
    _controller = VideoPlayerController.asset("assets/video/video.mp4")
      ..initialize().then((_) {
        setState(() {
          _controller.play();
        });
      })
      ..setLooping(true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        title: 'Runway',
        prefix: 'assets/svgs/menu.svg',
        suffix: 'assets/svgs/notification.svg',
      ),

      body: Stack(
        children: [

      /////////Video
          AspectRatio(
            aspectRatio: _controller.value.aspectRatio,
            child: VideoPlayer(_controller),
          ),
       
       
       
       /////////Categories
        Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: Container(
              width: double.infinity,
              height: 220,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Gap(20),
                    Text(
                        "Categories",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                    ),
                    Gap(30),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      physics: BouncingScrollPhysics(),
                      child: Row(
                        children: List.generate(
                            category.length,
                          (index) {
                              final item = category[index];
                             return Padding(
                               padding: const EdgeInsets.only(left: 12),
                               child: GestureDetector(
                                 onTap: () => Navigator.push(context, MaterialPageRoute(builder: (c) => CategoriesScreen())),
                                 child: Column(
                                   children: [
                                     Image.asset(item.image,width: 75),
                                     Gap(10),
                                     Text(
                                       item.name,
                                       style: TextStyle(
                                         fontSize: 16,
                                         fontWeight: FontWeight.w600,
                                       ),
                                     ),
                                   ],
                                 ),
                               ),
                             );
                          },
                        ),
                      ),
                    ),
                    Gap(30),
                  ],
                ),
              ),
            ),
          ),
     
       
       
        ],
      ),
    );
  }
}
