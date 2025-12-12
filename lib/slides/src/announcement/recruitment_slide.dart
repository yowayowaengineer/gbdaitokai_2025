import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class RecruitmentSlide extends FlutterDeckSlideWidget {
  const RecruitmentSlide({super.key})
    : super(
        configuration: const FlutterDeckSlideConfiguration(
          route: '/recruitment',
          title: '運営募集中',
          header: FlutterDeckHeaderConfiguration(title: '運営募集中'),
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
            const Text(
              '現在はコンテストで集まったFlutter仲間で立案、準備をしてい',
              style: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 16),
            const Text('第1回に向けて運営メンバーも募集したい', style: TextStyle(fontSize: 24)),
          ],
        ),
      ),
    );
  }
}
