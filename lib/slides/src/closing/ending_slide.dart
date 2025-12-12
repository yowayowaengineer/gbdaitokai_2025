import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class EndingSlide extends FlutterDeckSlideWidget {
  const EndingSlide({super.key})
    : super(
        configuration: const FlutterDeckSlideConfiguration(
          route: '/ending',
          title: '岡山でFlutterを盛り上げようぜ',
        ),
      );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(builder: (context) => Placeholder());
  }
}
