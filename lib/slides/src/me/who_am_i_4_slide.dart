import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class WhoAmISlide4 extends FlutterDeckSlideWidget {
  const WhoAmISlide4({super.key})
    : super(
        configuration: const FlutterDeckSlideConfiguration(
          route: '/who-am-i-4',
          title: '自己紹介④',
          header: FlutterDeckHeaderConfiguration(
            title: 'よわよわエンジニア is 誰 (コミュニティな話)',
          ),
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
            const Text(
              '最近エンジニアコミュニティに参加しだした(できるようになった)',
              style: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 16),
            const Text('OSOの運営にはいった', style: TextStyle(fontSize: 24)),
            const SizedBox(height: 16),
            const Text('なにか自分でもコミュニティを立ち上げたい', style: TextStyle(fontSize: 24)),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.only(left: 32.0),
              child: const Text(
                '会社でのFlutterアプリコンテストがきっかけ',
                style: TextStyle(fontSize: 24),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
