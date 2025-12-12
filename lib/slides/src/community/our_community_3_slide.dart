import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class OurCommunity3Slide extends FlutterDeckSlideWidget {
  const OurCommunity3Slide({super.key})
    : super(
        configuration: const FlutterDeckSlideConfiguration(
          route: '/our-community-3',
          title: 'コミュニティ概要',
          header: FlutterDeckHeaderConfiguration(title: 'コミュニティ概要'),
        ),
      );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => Padding(
        padding: const EdgeInsets.all(48.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('開催はオフライン', style: TextStyle(fontSize: 24)),
            const SizedBox(height: 16),
            const Text(
              '基本は参加無料(セッションイベントは検討中)',
              style: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 16),
            const Text('わいがや形式で', style: TextStyle(fontSize: 24)),
          ],
        ),
      ),
    );
  }
}
