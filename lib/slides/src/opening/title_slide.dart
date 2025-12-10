import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class TitleSlide extends FlutterDeckSlideWidget {
  const TitleSlide({super.key})
    : super(
        configuration: const FlutterDeckSlideConfiguration(
          route: '/title',
          title: 'タイトル',
          speakerNotes: '''
aaa
bbb
ccc
''',
        ),
      );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.title(
      title: '大都会岡山でFlutterを盛り上げようぜって話',
      speakerInfoBuilder: (context) => const FlutterDeckSpeakerInfoWidget(
        speakerInfo: FlutterDeckSpeakerInfo(
          name: 'よわよわエンジニア',
          description: 'テスト',
          imagePath: 'assets/images/me_400x400.jpg',
          socialHandle: 'https://x.com/yowayowa_engr',
        ),
      ),
    );
  }
}
