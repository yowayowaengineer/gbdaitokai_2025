import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class EnjoyFlutterGrowthSlide extends FlutterDeckSlideWidget {
  const EnjoyFlutterGrowthSlide({super.key})
    : super(
        configuration: const FlutterDeckSlideConfiguration(
          route: '/enjoy-flutter-growth',
          title: 'Flutterの成長を楽しめる',
          header: FlutterDeckHeaderConfiguration(title: 'Flutterの成長を楽しめる'),
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
            const Text('Dartのシンデレラストーリー', style: TextStyle(fontSize: 24)),
            const SizedBox(height: 16),
            const Text('Riverpodの破壊的なバージョンアップ', style: TextStyle(fontSize: 24)),
            const SizedBox(height: 16),
            const Text('状態管理抗争', style: TextStyle(fontSize: 24)),
          ],
        ),
      ),
    );
  }
}
