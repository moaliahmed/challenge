import 'package:challenge/data/local_data.dart';
import 'package:challenge/view/comment_screen.dart';
import 'package:flutter/material.dart';
import 'package:challenge/view/video_view_controller.dart';
import 'package:video_player/video_player.dart';

class HomeScreen extends StatefulWidget {

  HomeScreen({super.key, required this.videoDate});

 final  Video videoDate;
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late VideoPlayerController controller;



  @override
  void initState() {
    controller = VideoPlayerController.asset(widget.videoDate.video)
      ..addListener(() {
        setState(() {});
      })
      ..setLooping(true)
      ..initialize().then((_) => controller.play());
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),
          VideoViewController(
            controller: controller,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 35),
            height: 250,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 30,
                          width: 30,
                          decoration: const BoxDecoration(
                              color: Colors.blue,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(99))),
                          child: const Icon(Icons.person),
                        ),
                        const Text(
                          ' Xury46',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const SizedBox(
                      width: 320,
                      child: Text(
                        'After a year of collecting parts for this build , i present my finished my finished Heavy-9\n(Thocky thping tet at the end!)',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                      onPressed: () {
                        if (widget.videoDate.arrowUp) {
                          widget.videoDate.arrowUp = false;
                          widget.videoDate.like--;
                        } else {
                          if (widget.videoDate.arrowDown) {
                            widget.videoDate.  arrowDown = false;
                            widget.videoDate.arrowUp = true;
                            widget.videoDate.like += 2;
                          } else {
                            widget.videoDate.arrowUp = true;
                            widget.videoDate. like++;
                          }
                        }
                        setState(() {});
                      },
                      icon: const Icon(
                        Icons.arrow_upward,
                        size: 30,
                      ),
                      color:widget.videoDate. arrowUp ? Colors.red : Colors.white,
                    ),
                    Text(
                      '${widget.videoDate.like}',
                      style: const TextStyle(fontSize: 18, color: Colors.white),
                    ),
                    IconButton(
                      onPressed: () {
                        if (widget.videoDate.arrowDown) {
                          widget.videoDate. arrowDown = false;
                          widget.videoDate.like++;
                        } else {
                          if (widget.videoDate.arrowUp) {
                            widget.videoDate.arrowUp = false;
                            widget.videoDate.arrowDown = true;
                            widget.videoDate.like -= 2;
                          } else {
                            widget.videoDate.arrowDown = true;
                            widget.videoDate.like--;
                          }
                        }
                        setState(() {});
                      },
                      icon: const Icon(
                        Icons.arrow_downward,
                        size: 30,
                      ),
                      color: widget.videoDate.arrowDown ? Colors.red : Colors.white,
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => CommentScreen(
                              controller: controller, comment: data[0].comment),
                        ));
                      },
                      icon: const Icon(
                        Icons.messenger_outline,
                        color: Colors.white,
                        size: 30,
                      ),
                      color: Colors.white,
                    ),
                    const Text(
                      '61',
                      style: TextStyle(color: Colors.white),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.ios_share_rounded,
                        color: Colors.white,
                        size: 30,
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
