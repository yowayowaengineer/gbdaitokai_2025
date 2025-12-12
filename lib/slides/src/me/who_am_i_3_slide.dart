import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class WhoAmISlide3 extends FlutterDeckSlideWidget {
  const WhoAmISlide3({super.key})
    : super(
        configuration: const FlutterDeckSlideConfiguration(
          route: '/who-am-i-3',
          title: '自己紹介③',
          header: FlutterDeckHeaderConfiguration(
            title: 'よわよわエンジニア is 誰 (エンジニアな話)',
          ),
        ),
      );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => const _WhoAmISlide3Content(),
    );
  }
}

class _WhoAmISlide3Content extends StatefulWidget {
  const _WhoAmISlide3Content();

  @override
  State<_WhoAmISlide3Content> createState() => _WhoAmISlide3ContentState();
}

class _WhoAmISlide3ContentState extends State<_WhoAmISlide3Content> {
  int _currentIndex = 0;
  final List<String> _imagePaths = [
    'assets/images/qiita1.png',
    'assets/images/qiita2.png',
    'assets/images/qiita3.png',
    'assets/images/qiita4.png',
    'assets/images/qiita5.png',
    'assets/images/qiita6.png',
  ];

  void _onTap() {
    if (_currentIndex < _imagePaths.length) {
      setState(() {
        _currentIndex++;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final imageWidth = 600.0; // maxWidthと同じ値

    return GestureDetector(
      onTap: _onTap,
      child: Stack(
        children: [
          // 背景（クリック可能エリア）
          Container(
            color: Colors.transparent,
            width: double.infinity,
            height: double.infinity,
          ),
          // 画像を重ねて表示
          ...List.generate(_currentIndex, (index) {
            // 位置をずらすためのオフセット
            final offsetX = index * 50.0;
            final offsetY = index * 50.0;

            // 4つ目（index 3）以降は画面中央上部から開始
            final left = index >= 3
                ? (screenWidth / 2) + (index - 3) * 50.0
                : 100 + offsetX;
            final top = index >= 3 ? 20 + (index - 3) * 50.0 : 20 + offsetY;

            return Positioned(
              left: left,
              top: top,
              child: Container(
                constraints: const BoxConstraints(
                  maxWidth: 600,
                  maxHeight: 800,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      blurRadius: 10,
                      spreadRadius: 2,
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(_imagePaths[index], fit: BoxFit.contain),
                ),
              ),
            );
          }),
        ],
      ),
    );
  }
}
