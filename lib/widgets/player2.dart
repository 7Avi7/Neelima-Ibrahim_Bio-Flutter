import 'package:flutter/cupertino.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class PlayerWidget2 extends StatelessWidget {
  const PlayerWidget2({super.key});

  @override
  Widget build(BuildContext context) {
    return YoutubePlayer(
      controller: YoutubePlayerController.fromVideoId(
        videoId: 'VW-ro5-XCl4',
        params: const YoutubePlayerParams(
          showControls: true,
          showFullscreenButton: true,
        ),
      ),
      enableFullScreenOnVerticalDrag: true,
      // aspectRatio: 16 / 9,
    );
  }
}
