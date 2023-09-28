/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsPngGen {
  const $AssetsPngGen();

  /// File path: assets/png/designer.png
  AssetGenImage get designer => const AssetGenImage('assets/png/designer.png');

  /// File path: assets/png/elux.png
  AssetGenImage get elux => const AssetGenImage('assets/png/elux.png');

  /// File path: assets/png/engineer.png
  AssetGenImage get engineer => const AssetGenImage('assets/png/engineer.png');

  /// File path: assets/png/flip.png
  AssetGenImage get flip => const AssetGenImage('assets/png/flip.png');

  /// File path: assets/png/gojek.png
  AssetGenImage get gojek => const AssetGenImage('assets/png/gojek.png');

  /// File path: assets/png/introduction.png
  AssetGenImage get introduction => const AssetGenImage('assets/png/introduction.png');

  /// File path: assets/png/legal.png
  AssetGenImage get legal => const AssetGenImage('assets/png/legal.png');

  /// File path: assets/png/marketing.png
  AssetGenImage get marketing => const AssetGenImage('assets/png/marketing.png');

  /// File path: assets/png/medical.png
  AssetGenImage get medical => const AssetGenImage('assets/png/medical.png');

  /// File path: assets/png/programmer.png
  AssetGenImage get programmer => const AssetGenImage('assets/png/programmer.png');

  /// File path: assets/png/tokped.png
  AssetGenImage get tokped => const AssetGenImage('assets/png/tokped.png');

  /// File path: assets/png/traveloka.png
  AssetGenImage get traveloka => const AssetGenImage('assets/png/traveloka.png');

  /// List of all assets
  List<AssetGenImage> get values => [designer, elux, engineer, flip, gojek, introduction, legal, marketing, medical, programmer, tokped, traveloka];
}

class $AssetsSvgGen {
  const $AssetsSvgGen();

  /// File path: assets/svg/apply.svg
  String get apply => 'assets/svg/apply.svg';

  /// File path: assets/svg/arrow_right.svg
  String get arrowRight => 'assets/svg/arrow_right.svg';

  /// File path: assets/svg/bookmark.svg
  String get bookmark => 'assets/svg/bookmark.svg';

  /// File path: assets/svg/bookmarked.svg
  String get bookmarked => 'assets/svg/bookmarked.svg';

  /// File path: assets/svg/candle.svg
  String get candle => 'assets/svg/candle.svg';

  /// File path: assets/svg/chat_inactive.svg
  String get chatInactive => 'assets/svg/chat_inactive.svg';

  /// File path: assets/svg/clock.svg
  String get clock => 'assets/svg/clock.svg';

  /// File path: assets/svg/home_active.svg
  String get homeActive => 'assets/svg/home_active.svg';

  /// File path: assets/svg/job_inactive.svg
  String get jobInactive => 'assets/svg/job_inactive.svg';

  /// File path: assets/svg/notification.svg
  String get notification => 'assets/svg/notification.svg';

  /// File path: assets/svg/search.svg
  String get search => 'assets/svg/search.svg';

  /// File path: assets/svg/user_incative.svg
  String get userIncative => 'assets/svg/user_incative.svg';

  /// List of all assets
  List<String> get values => [apply, arrowRight, bookmark, bookmarked, candle, chatInactive, clock, homeActive, jobInactive, notification, search, userIncative];
}

class Assets {
  Assets._();

  static const $AssetsPngGen png = $AssetsPngGen();
  static const $AssetsSvgGen svg = $AssetsSvgGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
