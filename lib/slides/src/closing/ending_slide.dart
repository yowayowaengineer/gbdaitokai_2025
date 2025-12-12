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
    return FlutterDeckSlide.blank(
      builder: (context) => Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.transparent,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 80.0),
            child: FittedBox(
              fit: BoxFit.contain,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    '岡山でFlutterを盛り上げようぜ',
                    style: Theme.of(context).textTheme.displayLarge?.copyWith(
                          fontSize: 200,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue[700],
                          height: 1.2,
                        ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    'って話',
                    style: Theme.of(context).textTheme.displayLarge?.copyWith(
                          fontSize: 120,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue[700],
                          height: 1.2,
                        ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
