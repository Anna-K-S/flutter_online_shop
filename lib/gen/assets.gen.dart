/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  $AssetsImagesBerriesGen get berries => const $AssetsImagesBerriesGen();

  /// File path: assets/images/cherry.jpg
  AssetGenImage get cherry => const AssetGenImage('assets/images/cherry.jpg');

  $AssetsImagesFruitsGen get fruits => const $AssetsImagesFruitsGen();

  /// File path: assets/images/icon.png
  AssetGenImage get icon => const AssetGenImage('assets/images/icon.png');

  /// File path: assets/images/logo.png
  AssetGenImage get logo => const AssetGenImage('assets/images/logo.png');

  /// List of all assets
  List<AssetGenImage> get values => [cherry, icon, logo];
}

class $AssetsImagesBerriesGen {
  const $AssetsImagesBerriesGen();

  /// File path: assets/images/berries/blackCherry.png
  AssetGenImage get blackCherry =>
      const AssetGenImage('assets/images/berries/blackCherry.png');

  /// File path: assets/images/berries/blackCurrant.png
  AssetGenImage get blackCurrant =>
      const AssetGenImage('assets/images/berries/blackCurrant.png');

  /// File path: assets/images/berries/blackGrape.png
  AssetGenImage get blackGrape =>
      const AssetGenImage('assets/images/berries/blackGrape.png');

  /// File path: assets/images/berries/blueberry.png
  AssetGenImage get blueberry =>
      const AssetGenImage('assets/images/berries/blueberry.png');

  /// File path: assets/images/berries/gooseberry.png
  AssetGenImage get gooseberry =>
      const AssetGenImage('assets/images/berries/gooseberry.png');

  /// File path: assets/images/berries/greenGrape.png
  AssetGenImage get greenGrape =>
      const AssetGenImage('assets/images/berries/greenGrape.png');

  /// File path: assets/images/berries/raspberry.png
  AssetGenImage get raspberry =>
      const AssetGenImage('assets/images/berries/raspberry.png');

  /// File path: assets/images/berries/seaBuckthorn.png
  AssetGenImage get seaBuckthorn =>
      const AssetGenImage('assets/images/berries/seaBuckthorn.png');

  /// File path: assets/images/berries/strawberry.png
  AssetGenImage get strawberry =>
      const AssetGenImage('assets/images/berries/strawberry.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        blackCherry,
        blackCurrant,
        blackGrape,
        blueberry,
        gooseberry,
        greenGrape,
        raspberry,
        seaBuckthorn,
        strawberry
      ];
}

class $AssetsImagesFruitsGen {
  const $AssetsImagesFruitsGen();

  /// File path: assets/images/fruits/apricot.png
  AssetGenImage get apricot =>
      const AssetGenImage('assets/images/fruits/apricot.png');

  /// File path: assets/images/fruits/bananas.jpg
  AssetGenImage get bananas =>
      const AssetGenImage('assets/images/fruits/bananas.jpg');

  /// File path: assets/images/fruits/dragonFruit.jpg
  AssetGenImage get dragonFruit =>
      const AssetGenImage('assets/images/fruits/dragonFruit.jpg');

  /// File path: assets/images/fruits/grapefruit.jpg
  AssetGenImage get grapefruit =>
      const AssetGenImage('assets/images/fruits/grapefruit.jpg');

  /// File path: assets/images/fruits/greenApple.jpg
  AssetGenImage get greenApple =>
      const AssetGenImage('assets/images/fruits/greenApple.jpg');

  /// File path: assets/images/fruits/kiwi.jpg
  AssetGenImage get kiwi =>
      const AssetGenImage('assets/images/fruits/kiwi.jpg');

  /// File path: assets/images/fruits/lemon.jpg
  AssetGenImage get lemon =>
      const AssetGenImage('assets/images/fruits/lemon.jpg');

  /// File path: assets/images/fruits/mango.jpg
  AssetGenImage get mango =>
      const AssetGenImage('assets/images/fruits/mango.jpg');

  /// File path: assets/images/fruits/orange.jpg
  AssetGenImage get orange =>
      const AssetGenImage('assets/images/fruits/orange.jpg');

  /// File path: assets/images/fruits/persimmon.jpg
  AssetGenImage get persimmon =>
      const AssetGenImage('assets/images/fruits/persimmon.jpg');

  /// File path: assets/images/fruits/pineapple.jpeg
  AssetGenImage get pineapple =>
      const AssetGenImage('assets/images/fruits/pineapple.jpeg');

  /// File path: assets/images/fruits/pomegranate.jpg
  AssetGenImage get pomegranate =>
      const AssetGenImage('assets/images/fruits/pomegranate.jpg');

  /// File path: assets/images/fruits/redApple.jpg
  AssetGenImage get redApple =>
      const AssetGenImage('assets/images/fruits/redApple.jpg');

  /// List of all assets
  List<AssetGenImage> get values => [
        apricot,
        bananas,
        dragonFruit,
        grapefruit,
        greenApple,
        kiwi,
        lemon,
        mango,
        orange,
        persimmon,
        pineapple,
        pomegranate,
        redApple
      ];
}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
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
