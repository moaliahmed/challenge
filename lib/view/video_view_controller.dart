import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
class VideoViewController extends StatelessWidget {
  const VideoViewController({super.key, required this.controller});

  final VideoPlayerController controller;

  @override
  Widget build(BuildContext context) {
    return controller != null && controller.value.isInitialized
        ? Container(
      alignment: Alignment.topCenter,
      child: buildVideo(),
    )
        : Container(
      height: 200,
      child: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }

  Widget buildVideo() => buildVideoPlayer();

  Widget buildVideoPlayer() => AspectRatio(
    aspectRatio: controller.value.aspectRatio,
    child: VideoPlayer(controller),
  );
}
