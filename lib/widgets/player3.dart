import 'package:flutter/cupertino.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class PlayerWidget3 extends StatelessWidget {
  const PlayerWidget3({super.key});

  @override
  Widget build(BuildContext context) {
    return YoutubePlayer(
      controller: YoutubePlayerController.fromVideoId(
        videoId: 'ueDbs5_Vdvc',
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
