import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class TalentExistenceSlide extends FlutterDeckSlideWidget {
  const TalentExistenceSlide({super.key})
    : super(
        configuration: const FlutterDeckSlideConfiguration(
          route: '/talent-existence',
          title: 'タレントの存在',
          header: FlutterDeckHeaderConfiguration(title: 'タレントの存在'),
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
              'コンテストに参加したうちの1名、「やくらん」氏',
              style: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 16),
            const Text(
              'コンテスト以降、仕事そっちのけでFlutterの力をメキメキとつけ、個人的にお仕事の依頼を受けるほどに',
              style: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.only(left: 32.0),
              child: const Text(
                '当社が副業規定を作ることになった張本人',
                style: TextStyle(fontSize: 24),
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              '彼はFlutterコミュニティで活発に活動していて、FlutterKaigiでもかなりの存在感を示していた',
              style: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 16),
            const Text(
              'そんな彼曰く「岡山に(Flutterの)知り合いいないんですよね」',
              style: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 16),
            const Text('それなら作るしかない', style: TextStyle(fontSize: 24)),
          ],
        ),
      ),
    );
  }
}
