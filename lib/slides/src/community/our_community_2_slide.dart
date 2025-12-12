import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class OurCommunity2Slide extends FlutterDeckSlideWidget {
  const OurCommunity2Slide({super.key})
    : super(
        configuration: const FlutterDeckSlideConfiguration(
          route: '/our-community-2',
          title: 'コミュニティ概要',
          header: FlutterDeckHeaderConfiguration(title: 'コミュニティ概要'),
        ),
      );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 80.0, vertical: 48.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('毎月開催', style: TextStyle(fontSize: 24)),
            const SizedBox(height: 16),
            const Text(
              'そのうち、3カ月に1回の頻度でセッションイベント(懇親会もしたい)',
              style: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 16),
            const Text('それ以外は、もくもく会やLTをゆるく', style: TextStyle(fontSize: 24)),
          ],
        ),
      ),
    );
  }
}
