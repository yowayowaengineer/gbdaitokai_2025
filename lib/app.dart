import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gbdaitokai_2025/l10n/app_localizations.dart';
import 'package:gbdaitokai_2025/slides/slides.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(1920, 1080),
      builder: (context, child) => FlutterDeckApp(
        slides: slides,

        configuration: FlutterDeckConfiguration(
          controls: const FlutterDeckControlsConfiguration(
            presenterToolbarVisible: true,
            gestures: FlutterDeckGesturesConfiguration.mobileOnly(),
            shortcuts: FlutterDeckShortcutsConfiguration(
              enabled: true,
              nextSlide: SingleActivator(LogicalKeyboardKey.arrowRight),
              previousSlide: SingleActivator(LogicalKeyboardKey.arrowLeft),
              toggleMarker: SingleActivator(
                LogicalKeyboardKey.keyM,
                control: true,
                meta: true,
              ),
              toggleNavigationDrawer: SingleActivator(
                LogicalKeyboardKey.period,
                control: true,
                meta: true,
              ),
            ),
          ),
          transition: const FlutterDeckTransition.fade(),
          footer: FlutterDeckFooterConfiguration(
            showSlideNumbers: true,
            widget: const _AnimatedFooterWidget(),
          ),
        ),

        // intl
        locale: const Locale('ja'),
        localizationsDelegates: L10n.localizationsDelegates,
        supportedLocales: L10n.supportedLocales,
      ),
    );
  }
}

class _AnimatedFooterWidget extends StatefulWidget {
  const _AnimatedFooterWidget();

  @override
  State<_AnimatedFooterWidget> createState() => _AnimatedFooterWidgetState();
}

class _AnimatedFooterWidgetState extends State<_AnimatedFooterWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  bool _isMovingRight = false;
  int _imageIndex = 0;

  final List<String> _imagePaths = [
    'assets/images/player-walk-left.gif',
    'assets/images/player-walk-right.gif',
  ];

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      // 1往復の時間
      duration: const Duration(seconds: 30),
      vsync: this,
    )..repeat();

    _animation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.linear,
    ));

    // 方向が変わるタイミングで画像も変更
    _controller.addListener(() {
      final previousDirection = _isMovingRight;
      _isMovingRight = _animation.value >= 0.5;

      if (previousDirection != _isMovingRight && mounted) {
        setState(() {
          _imageIndex = (_imageIndex + 1) % _imagePaths.length;
        });
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final imageSize = 50.0;
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final footerTop = screenHeight * 0.89; // フッターの上の位置
    const logoWidth = 100.0; // ロゴの幅
    const logoPosition = logoWidth; // ロゴの右端の位置（方向転換ポイント）
    const rightMargin = 100.0; // 右端の余白
    final rightEndPosition = screenWidth - rightMargin; // 右端の位置（余白を考慮）

    return UnconstrainedBox(
      constrainedAxis: Axis.horizontal,
      child: SizedBox(
        width: 40,
        height: 40,
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            // 元のロゴ（固定表示）
            Center(
              child: Image.asset(
                'assets/images/logo_512x512.png',
                width: 40,
                height: 40,
                fit: BoxFit.contain,
              ),
            ),
            // アニメーション画像（画面全体を移動）
            AnimatedBuilder(
              animation: _animation,
              builder: (context, child) {
                double position;

                if (_animation.value <= 0.5) {
                  // 右から左へ（0.0から0.5の間）
                  // 右端（rightEndPosition）からロゴの右端（logoPosition）へ
                  final progress = _animation.value * 2.0; // 0.0から1.0に正規化
                  position = rightEndPosition -
                      (rightEndPosition - logoPosition + imageSize) * progress;
                } else {
                  // 左から右へ（0.5から1.0の間）
                  // ロゴの右端（logoPosition）から右端（rightEndPosition）へ
                  final progress =
                      (_animation.value - 0.5) * 2.0; // 0.0から1.0に正規化
                  position = logoPosition -
                      imageSize +
                      (rightEndPosition - logoPosition + imageSize) * progress;
                }

                return Positioned(
                  left: position,
                  top: footerTop - (screenHeight * 0.9), // フッターの上に配置
                  child: Image.asset(
                    _imagePaths[_imageIndex],
                    width: imageSize,
                    height: imageSize,
                    fit: BoxFit.contain,
                    errorBuilder: (context, error, stackTrace) {
                      // 画像が読み込めない場合のフォールバック
                      return SizedBox(
                        width: imageSize,
                        height: imageSize,
                        child: Container(
                          color: Colors.grey.withOpacity(0.3),
                          child: const Icon(Icons.image, size: 20),
                        ),
                      );
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
