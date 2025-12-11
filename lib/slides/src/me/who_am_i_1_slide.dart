import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class WhoAmISlide1 extends FlutterDeckSlideWidget {
  const WhoAmISlide1({super.key})
    : super(
        configuration: const FlutterDeckSlideConfiguration(
          route: '/who-am-i-1',
          title: '自己紹介①',
          header: FlutterDeckHeaderConfiguration(title: 'よわよわエンジニア is 誰'),
        ),
      );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.image(
      imageBuilder: (context) => Image.asset(
        'assets/images/FlutterKaigi2025.webp',
        fit: BoxFit.contain,
        width: double.infinity,
        height: double.infinity,
      ),
    );
  }
}
