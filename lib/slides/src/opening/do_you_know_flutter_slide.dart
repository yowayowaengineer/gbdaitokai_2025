import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class DoYouKnowFlutterSlide extends FlutterDeckSlideWidget {
  const DoYouKnowFlutterSlide({super.key})
    : super(
        configuration: const FlutterDeckSlideConfiguration(
          route: '/do-you-know-flutter',
          title: 'Flutterを知っていますか？',
          header: FlutterDeckHeaderConfiguration(title: 'Flutterを知っていますか？'),
        ),
      );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => const _DoYouKnowFlutterSlideContent(),
    );
  }
}

class _DoYouKnowFlutterSlideContent extends StatefulWidget {
  const _DoYouKnowFlutterSlideContent();

  @override
  State<_DoYouKnowFlutterSlideContent> createState() =>
      _DoYouKnowFlutterSlideContentState();
}

class _DoYouKnowFlutterSlideContentState
    extends State<_DoYouKnowFlutterSlideContent> {
  int _currentIndex = 0; // 表示する画像の数（0, 1, 2, 3）

  void _onTap() {
    if (_currentIndex < 3) {
      setState(() {
        _currentIndex++;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final imageSize = 200.0; // 画像サイズ
    final padding = 40.0; // 余白（小さく調整）
    final headerHeight = 120.0; // ヘッダー分の高さを考慮
    final footerHeight = 80.0; // フッター分の高さを考慮

    return GestureDetector(
      onTap: _onTap,
      behavior: HitTestBehavior.opaque,
      child: Stack(
        children: [
          // 背景（クリック可能エリア）
          Container(
            color: Colors.transparent,
            width: double.infinity,
            height: double.infinity,
          ),
          // 1つ目: FlutterLogo（左上）
          if (_currentIndex >= 1)
            Positioned(
              left: padding,
              top: headerHeight + padding,
              child: Container(
                width: imageSize,
                height: imageSize,
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
                  child: Container(
                    color: Colors.white,
                    child: FlutterLogo(size: imageSize),
                  ),
                ),
              ),
            ),
          // 2つ目: riverpod.png（中央）
          if (_currentIndex >= 2)
            Positioned(
              left: (screenWidth - imageSize) / 2,
              top:
                  headerHeight +
                  (screenHeight - headerHeight - footerHeight - imageSize) / 2,
              child: Container(
                width: imageSize,
                height: imageSize,
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
                  child: Container(
                    color: Colors.white,
                    child: Image.asset(
                      'assets/images/riverpod.png',
                      fit: BoxFit.contain,
                      width: imageSize,
                      height: imageSize,
                    ),
                  ),
                ),
              ),
            ),
          // 3つ目: dart.webp（右下）
          if (_currentIndex >= 3)
            Positioned(
              left: screenWidth - imageSize - padding,
              top: screenHeight - footerHeight - imageSize - padding,
              child: Container(
                width: imageSize,
                height: imageSize,
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
                  child: Container(
                    color: Colors.white,
                    child: Image.asset(
                      'assets/images/dart.webp',
                      fit: BoxFit.contain,
                      width: imageSize,
                      height: imageSize,
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
