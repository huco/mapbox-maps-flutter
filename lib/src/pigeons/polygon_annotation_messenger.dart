// Autogenerated from Pigeon (v18.0.0), do not edit directly.
// See also: https://pub.dev/packages/pigeon
// ignore_for_file: public_member_api_docs, non_constant_identifier_names, avoid_as, unused_import, unnecessary_parenthesis, prefer_null_aware_operators, omit_local_variable_types, unused_shown_name, unnecessary_import, no_leading_underscores_for_local_identifiers

part of mapbox_maps_flutter;

/// Controls the frame of reference for `fill-translate`.
enum FillTranslateAnchor {
  /// The fill is translated relative to the map.
  MAP,

  /// The fill is translated relative to the viewport.
  VIEWPORT,
}

class PolygonAnnotation {
  PolygonAnnotation({
    required this.id,
    required this.geometry,
    this.fillSortKey,
    this.fillColor,
    this.fillOpacity,
    this.fillOutlineColor,
    this.fillPattern,
  });

  /// The id for annotation
  String id;

  /// The geometry that determines the location/shape of this annotation
  Polygon geometry;

  /// Sorts features in ascending order based on this value. Features with a higher sort key will appear above features with a lower sort key.
  double? fillSortKey;

  /// The color of the filled part of this layer. This color can be specified as `rgba` with an alpha component and the color's opacity will not affect the opacity of the 1px stroke, if it is used.
  int? fillColor;

  /// The opacity of the entire fill layer. In contrast to the `fill-color`, this value will also affect the 1px stroke around the fill, if the stroke is used.
  double? fillOpacity;

  /// The outline color of the fill. Matches the value of `fill-color` if unspecified.
  int? fillOutlineColor;

  /// Name of image in sprite to use for drawing image fills. For seamless patterns, image width and height must be a factor of two (2, 4, 8, ..., 512). Note that zoom-dependent expressions will be evaluated only at integer zoom levels.
  String? fillPattern;

  Object encode() {
    return <Object?>[
      id,
      geometry.encode(),
      fillSortKey,
      fillColor,
      fillOpacity,
      fillOutlineColor,
      fillPattern,
    ];
  }

  static PolygonAnnotation decode(Object result) {
    result as List<Object?>;
    return PolygonAnnotation(
      id: result[0]! as String,
      geometry: Polygon.decode(result[1]! as List<Object?>),
      fillSortKey: result[2] as double?,
      fillColor: result[3] as int?,
      fillOpacity: result[4] as double?,
      fillOutlineColor: result[5] as int?,
      fillPattern: result[6] as String?,
    );
  }
}

class PolygonAnnotationOptions {
  PolygonAnnotationOptions({
    required this.geometry,
    this.fillSortKey,
    this.fillColor,
    this.fillOpacity,
    this.fillOutlineColor,
    this.fillPattern,
  });

  /// The geometry that determines the location/shape of this annotation
  Polygon geometry;

  /// Sorts features in ascending order based on this value. Features with a higher sort key will appear above features with a lower sort key.
  double? fillSortKey;

  /// The color of the filled part of this layer. This color can be specified as `rgba` with an alpha component and the color's opacity will not affect the opacity of the 1px stroke, if it is used.
  int? fillColor;

  /// The opacity of the entire fill layer. In contrast to the `fill-color`, this value will also affect the 1px stroke around the fill, if the stroke is used.
  double? fillOpacity;

  /// The outline color of the fill. Matches the value of `fill-color` if unspecified.
  int? fillOutlineColor;

  /// Name of image in sprite to use for drawing image fills. For seamless patterns, image width and height must be a factor of two (2, 4, 8, ..., 512). Note that zoom-dependent expressions will be evaluated only at integer zoom levels.
  String? fillPattern;

  Object encode() {
    return <Object?>[
      geometry.encode(),
      fillSortKey,
      fillColor,
      fillOpacity,
      fillOutlineColor,
      fillPattern,
    ];
  }

  static PolygonAnnotationOptions decode(Object result) {
    result as List<Object?>;
    return PolygonAnnotationOptions(
      geometry: Polygon.decode(result[0]! as List<Object?>),
      fillSortKey: result[1] as double?,
      fillColor: result[2] as int?,
      fillOpacity: result[3] as double?,
      fillOutlineColor: result[4] as int?,
      fillPattern: result[5] as String?,
    );
  }
}

class _OnPolygonAnnotationClickListenerCodec extends StandardMessageCodec {
  const _OnPolygonAnnotationClickListenerCodec();
  @override
  void writeValue(WriteBuffer buffer, Object? value) {
    if (value is Polygon) {
      buffer.putUint8(128);
      writeValue(buffer, value.encode());
    } else if (value is PolygonAnnotation) {
      buffer.putUint8(129);
      writeValue(buffer, value.encode());
    } else {
      super.writeValue(buffer, value);
    }
  }

  @override
  Object? readValueOfType(int type, ReadBuffer buffer) {
    switch (type) {
      case 128:
        return Polygon.decode(readValue(buffer)!);
      case 129:
        return PolygonAnnotation.decode(readValue(buffer)!);
      default:
        return super.readValueOfType(type, buffer);
    }
  }
}

abstract class OnPolygonAnnotationClickListener {
  static const MessageCodec<Object?> pigeonChannelCodec =
      _OnPolygonAnnotationClickListenerCodec();

  void onPolygonAnnotationClick(PolygonAnnotation annotation);

  static void setUp(
    OnPolygonAnnotationClickListener? api, {
    BinaryMessenger? binaryMessenger,
    String messageChannelSuffix = '',
  }) {
    messageChannelSuffix =
        messageChannelSuffix.isNotEmpty ? '.$messageChannelSuffix' : '';
    {
      final BasicMessageChannel<Object?> __pigeon_channel = BasicMessageChannel<
              Object?>(
          'dev.flutter.pigeon.mapbox_maps_flutter.OnPolygonAnnotationClickListener.onPolygonAnnotationClick$messageChannelSuffix',
          pigeonChannelCodec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        __pigeon_channel.setMessageHandler(null);
      } else {
        __pigeon_channel.setMessageHandler((Object? message) async {
          assert(message != null,
              'Argument for dev.flutter.pigeon.mapbox_maps_flutter.OnPolygonAnnotationClickListener.onPolygonAnnotationClick was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final PolygonAnnotation? arg_annotation =
              (args[0] as PolygonAnnotation?);
          assert(arg_annotation != null,
              'Argument for dev.flutter.pigeon.mapbox_maps_flutter.OnPolygonAnnotationClickListener.onPolygonAnnotationClick was null, expected non-null PolygonAnnotation.');
          try {
            api.onPolygonAnnotationClick(arg_annotation!);
            return wrapResponse(empty: true);
          } on PlatformException catch (e) {
            return wrapResponse(error: e);
          } catch (e) {
            return wrapResponse(
                error: PlatformException(code: 'error', message: e.toString()));
          }
        });
      }
    }
  }
}

class __PolygonAnnotationMessengerCodec extends StandardMessageCodec {
  const __PolygonAnnotationMessengerCodec();
  @override
  void writeValue(WriteBuffer buffer, Object? value) {
    if (value is Polygon) {
      buffer.putUint8(128);
      writeValue(buffer, value.encode());
    } else if (value is PolygonAnnotation) {
      buffer.putUint8(129);
      writeValue(buffer, value.encode());
    } else if (value is PolygonAnnotation) {
      buffer.putUint8(130);
      writeValue(buffer, value.encode());
    } else if (value is PolygonAnnotationOptions) {
      buffer.putUint8(131);
      writeValue(buffer, value.encode());
    } else if (value is PolygonAnnotationOptions) {
      buffer.putUint8(132);
      writeValue(buffer, value.encode());
    } else {
      super.writeValue(buffer, value);
    }
  }

  @override
  Object? readValueOfType(int type, ReadBuffer buffer) {
    switch (type) {
      case 128:
        return Polygon.decode(readValue(buffer)!);
      case 129:
        return PolygonAnnotation.decode(readValue(buffer)!);
      case 130:
        return PolygonAnnotation.decode(readValue(buffer)!);
      case 131:
        return PolygonAnnotationOptions.decode(readValue(buffer)!);
      case 132:
        return PolygonAnnotationOptions.decode(readValue(buffer)!);
      default:
        return super.readValueOfType(type, buffer);
    }
  }
}

class _PolygonAnnotationMessenger {
  /// Constructor for [_PolygonAnnotationMessenger].  The [binaryMessenger] named argument is
  /// available for dependency injection.  If it is left null, the default
  /// BinaryMessenger will be used which routes to the host platform.
  _PolygonAnnotationMessenger(
      {BinaryMessenger? binaryMessenger, String messageChannelSuffix = ''})
      : __pigeon_binaryMessenger = binaryMessenger,
        __pigeon_messageChannelSuffix =
            messageChannelSuffix.isNotEmpty ? '.$messageChannelSuffix' : '';
  final BinaryMessenger? __pigeon_binaryMessenger;

  static const MessageCodec<Object?> pigeonChannelCodec =
      __PolygonAnnotationMessengerCodec();

  final String __pigeon_messageChannelSuffix;

  Future<PolygonAnnotation> create(
      String managerId, PolygonAnnotationOptions annotationOption) async {
    final String __pigeon_channelName =
        'dev.flutter.pigeon.mapbox_maps_flutter._PolygonAnnotationMessenger.create$__pigeon_messageChannelSuffix';
    final BasicMessageChannel<Object?> __pigeon_channel =
        BasicMessageChannel<Object?>(
      __pigeon_channelName,
      pigeonChannelCodec,
      binaryMessenger: __pigeon_binaryMessenger,
    );
    final List<Object?>? __pigeon_replyList = await __pigeon_channel
        .send(<Object?>[managerId, annotationOption]) as List<Object?>?;
    if (__pigeon_replyList == null) {
      throw _createConnectionError(__pigeon_channelName);
    } else if (__pigeon_replyList.length > 1) {
      throw PlatformException(
        code: __pigeon_replyList[0]! as String,
        message: __pigeon_replyList[1] as String?,
        details: __pigeon_replyList[2],
      );
    } else if (__pigeon_replyList[0] == null) {
      throw PlatformException(
        code: 'null-error',
        message: 'Host platform returned null value for non-null return value.',
      );
    } else {
      return (__pigeon_replyList[0] as PolygonAnnotation?)!;
    }
  }

  Future<List<PolygonAnnotation?>> createMulti(String managerId,
      List<PolygonAnnotationOptions?> annotationOptions) async {
    final String __pigeon_channelName =
        'dev.flutter.pigeon.mapbox_maps_flutter._PolygonAnnotationMessenger.createMulti$__pigeon_messageChannelSuffix';
    final BasicMessageChannel<Object?> __pigeon_channel =
        BasicMessageChannel<Object?>(
      __pigeon_channelName,
      pigeonChannelCodec,
      binaryMessenger: __pigeon_binaryMessenger,
    );
    final List<Object?>? __pigeon_replyList = await __pigeon_channel
        .send(<Object?>[managerId, annotationOptions]) as List<Object?>?;
    if (__pigeon_replyList == null) {
      throw _createConnectionError(__pigeon_channelName);
    } else if (__pigeon_replyList.length > 1) {
      throw PlatformException(
        code: __pigeon_replyList[0]! as String,
        message: __pigeon_replyList[1] as String?,
        details: __pigeon_replyList[2],
      );
    } else if (__pigeon_replyList[0] == null) {
      throw PlatformException(
        code: 'null-error',
        message: 'Host platform returned null value for non-null return value.',
      );
    } else {
      return (__pigeon_replyList[0] as List<Object?>?)!
          .cast<PolygonAnnotation?>();
    }
  }

  Future<void> update(String managerId, PolygonAnnotation annotation) async {
    final String __pigeon_channelName =
        'dev.flutter.pigeon.mapbox_maps_flutter._PolygonAnnotationMessenger.update$__pigeon_messageChannelSuffix';
    final BasicMessageChannel<Object?> __pigeon_channel =
        BasicMessageChannel<Object?>(
      __pigeon_channelName,
      pigeonChannelCodec,
      binaryMessenger: __pigeon_binaryMessenger,
    );
    final List<Object?>? __pigeon_replyList = await __pigeon_channel
        .send(<Object?>[managerId, annotation]) as List<Object?>?;
    if (__pigeon_replyList == null) {
      throw _createConnectionError(__pigeon_channelName);
    } else if (__pigeon_replyList.length > 1) {
      throw PlatformException(
        code: __pigeon_replyList[0]! as String,
        message: __pigeon_replyList[1] as String?,
        details: __pigeon_replyList[2],
      );
    } else {
      return;
    }
  }

  Future<void> delete(String managerId, PolygonAnnotation annotation) async {
    final String __pigeon_channelName =
        'dev.flutter.pigeon.mapbox_maps_flutter._PolygonAnnotationMessenger.delete$__pigeon_messageChannelSuffix';
    final BasicMessageChannel<Object?> __pigeon_channel =
        BasicMessageChannel<Object?>(
      __pigeon_channelName,
      pigeonChannelCodec,
      binaryMessenger: __pigeon_binaryMessenger,
    );
    final List<Object?>? __pigeon_replyList = await __pigeon_channel
        .send(<Object?>[managerId, annotation]) as List<Object?>?;
    if (__pigeon_replyList == null) {
      throw _createConnectionError(__pigeon_channelName);
    } else if (__pigeon_replyList.length > 1) {
      throw PlatformException(
        code: __pigeon_replyList[0]! as String,
        message: __pigeon_replyList[1] as String?,
        details: __pigeon_replyList[2],
      );
    } else {
      return;
    }
  }

  Future<void> deleteAll(String managerId) async {
    final String __pigeon_channelName =
        'dev.flutter.pigeon.mapbox_maps_flutter._PolygonAnnotationMessenger.deleteAll$__pigeon_messageChannelSuffix';
    final BasicMessageChannel<Object?> __pigeon_channel =
        BasicMessageChannel<Object?>(
      __pigeon_channelName,
      pigeonChannelCodec,
      binaryMessenger: __pigeon_binaryMessenger,
    );
    final List<Object?>? __pigeon_replyList =
        await __pigeon_channel.send(<Object?>[managerId]) as List<Object?>?;
    if (__pigeon_replyList == null) {
      throw _createConnectionError(__pigeon_channelName);
    } else if (__pigeon_replyList.length > 1) {
      throw PlatformException(
        code: __pigeon_replyList[0]! as String,
        message: __pigeon_replyList[1] as String?,
        details: __pigeon_replyList[2],
      );
    } else {
      return;
    }
  }

  Future<void> setFillAntialias(String managerId, bool fillAntialias) async {
    final String __pigeon_channelName =
        'dev.flutter.pigeon.mapbox_maps_flutter._PolygonAnnotationMessenger.setFillAntialias$__pigeon_messageChannelSuffix';
    final BasicMessageChannel<Object?> __pigeon_channel =
        BasicMessageChannel<Object?>(
      __pigeon_channelName,
      pigeonChannelCodec,
      binaryMessenger: __pigeon_binaryMessenger,
    );
    final List<Object?>? __pigeon_replyList = await __pigeon_channel
        .send(<Object?>[managerId, fillAntialias]) as List<Object?>?;
    if (__pigeon_replyList == null) {
      throw _createConnectionError(__pigeon_channelName);
    } else if (__pigeon_replyList.length > 1) {
      throw PlatformException(
        code: __pigeon_replyList[0]! as String,
        message: __pigeon_replyList[1] as String?,
        details: __pigeon_replyList[2],
      );
    } else {
      return;
    }
  }

  Future<bool?> getFillAntialias(String managerId) async {
    final String __pigeon_channelName =
        'dev.flutter.pigeon.mapbox_maps_flutter._PolygonAnnotationMessenger.getFillAntialias$__pigeon_messageChannelSuffix';
    final BasicMessageChannel<Object?> __pigeon_channel =
        BasicMessageChannel<Object?>(
      __pigeon_channelName,
      pigeonChannelCodec,
      binaryMessenger: __pigeon_binaryMessenger,
    );
    final List<Object?>? __pigeon_replyList =
        await __pigeon_channel.send(<Object?>[managerId]) as List<Object?>?;
    if (__pigeon_replyList == null) {
      throw _createConnectionError(__pigeon_channelName);
    } else if (__pigeon_replyList.length > 1) {
      throw PlatformException(
        code: __pigeon_replyList[0]! as String,
        message: __pigeon_replyList[1] as String?,
        details: __pigeon_replyList[2],
      );
    } else {
      return (__pigeon_replyList[0] as bool?);
    }
  }

  Future<void> setFillEmissiveStrength(
      String managerId, double fillEmissiveStrength) async {
    final String __pigeon_channelName =
        'dev.flutter.pigeon.mapbox_maps_flutter._PolygonAnnotationMessenger.setFillEmissiveStrength$__pigeon_messageChannelSuffix';
    final BasicMessageChannel<Object?> __pigeon_channel =
        BasicMessageChannel<Object?>(
      __pigeon_channelName,
      pigeonChannelCodec,
      binaryMessenger: __pigeon_binaryMessenger,
    );
    final List<Object?>? __pigeon_replyList = await __pigeon_channel
        .send(<Object?>[managerId, fillEmissiveStrength]) as List<Object?>?;
    if (__pigeon_replyList == null) {
      throw _createConnectionError(__pigeon_channelName);
    } else if (__pigeon_replyList.length > 1) {
      throw PlatformException(
        code: __pigeon_replyList[0]! as String,
        message: __pigeon_replyList[1] as String?,
        details: __pigeon_replyList[2],
      );
    } else {
      return;
    }
  }

  Future<double?> getFillEmissiveStrength(String managerId) async {
    final String __pigeon_channelName =
        'dev.flutter.pigeon.mapbox_maps_flutter._PolygonAnnotationMessenger.getFillEmissiveStrength$__pigeon_messageChannelSuffix';
    final BasicMessageChannel<Object?> __pigeon_channel =
        BasicMessageChannel<Object?>(
      __pigeon_channelName,
      pigeonChannelCodec,
      binaryMessenger: __pigeon_binaryMessenger,
    );
    final List<Object?>? __pigeon_replyList =
        await __pigeon_channel.send(<Object?>[managerId]) as List<Object?>?;
    if (__pigeon_replyList == null) {
      throw _createConnectionError(__pigeon_channelName);
    } else if (__pigeon_replyList.length > 1) {
      throw PlatformException(
        code: __pigeon_replyList[0]! as String,
        message: __pigeon_replyList[1] as String?,
        details: __pigeon_replyList[2],
      );
    } else {
      return (__pigeon_replyList[0] as double?);
    }
  }

  Future<void> setFillTranslate(
      String managerId, List<double?> fillTranslate) async {
    final String __pigeon_channelName =
        'dev.flutter.pigeon.mapbox_maps_flutter._PolygonAnnotationMessenger.setFillTranslate$__pigeon_messageChannelSuffix';
    final BasicMessageChannel<Object?> __pigeon_channel =
        BasicMessageChannel<Object?>(
      __pigeon_channelName,
      pigeonChannelCodec,
      binaryMessenger: __pigeon_binaryMessenger,
    );
    final List<Object?>? __pigeon_replyList = await __pigeon_channel
        .send(<Object?>[managerId, fillTranslate]) as List<Object?>?;
    if (__pigeon_replyList == null) {
      throw _createConnectionError(__pigeon_channelName);
    } else if (__pigeon_replyList.length > 1) {
      throw PlatformException(
        code: __pigeon_replyList[0]! as String,
        message: __pigeon_replyList[1] as String?,
        details: __pigeon_replyList[2],
      );
    } else {
      return;
    }
  }

  Future<List<double?>?> getFillTranslate(String managerId) async {
    final String __pigeon_channelName =
        'dev.flutter.pigeon.mapbox_maps_flutter._PolygonAnnotationMessenger.getFillTranslate$__pigeon_messageChannelSuffix';
    final BasicMessageChannel<Object?> __pigeon_channel =
        BasicMessageChannel<Object?>(
      __pigeon_channelName,
      pigeonChannelCodec,
      binaryMessenger: __pigeon_binaryMessenger,
    );
    final List<Object?>? __pigeon_replyList =
        await __pigeon_channel.send(<Object?>[managerId]) as List<Object?>?;
    if (__pigeon_replyList == null) {
      throw _createConnectionError(__pigeon_channelName);
    } else if (__pigeon_replyList.length > 1) {
      throw PlatformException(
        code: __pigeon_replyList[0]! as String,
        message: __pigeon_replyList[1] as String?,
        details: __pigeon_replyList[2],
      );
    } else {
      return (__pigeon_replyList[0] as List<Object?>?)?.cast<double?>();
    }
  }

  Future<void> setFillTranslateAnchor(
      String managerId, FillTranslateAnchor fillTranslateAnchor) async {
    final String __pigeon_channelName =
        'dev.flutter.pigeon.mapbox_maps_flutter._PolygonAnnotationMessenger.setFillTranslateAnchor$__pigeon_messageChannelSuffix';
    final BasicMessageChannel<Object?> __pigeon_channel =
        BasicMessageChannel<Object?>(
      __pigeon_channelName,
      pigeonChannelCodec,
      binaryMessenger: __pigeon_binaryMessenger,
    );
    final List<Object?>? __pigeon_replyList = await __pigeon_channel
            .send(<Object?>[managerId, fillTranslateAnchor.index])
        as List<Object?>?;
    if (__pigeon_replyList == null) {
      throw _createConnectionError(__pigeon_channelName);
    } else if (__pigeon_replyList.length > 1) {
      throw PlatformException(
        code: __pigeon_replyList[0]! as String,
        message: __pigeon_replyList[1] as String?,
        details: __pigeon_replyList[2],
      );
    } else {
      return;
    }
  }

  Future<FillTranslateAnchor?> getFillTranslateAnchor(String managerId) async {
    final String __pigeon_channelName =
        'dev.flutter.pigeon.mapbox_maps_flutter._PolygonAnnotationMessenger.getFillTranslateAnchor$__pigeon_messageChannelSuffix';
    final BasicMessageChannel<Object?> __pigeon_channel =
        BasicMessageChannel<Object?>(
      __pigeon_channelName,
      pigeonChannelCodec,
      binaryMessenger: __pigeon_binaryMessenger,
    );
    final List<Object?>? __pigeon_replyList =
        await __pigeon_channel.send(<Object?>[managerId]) as List<Object?>?;
    if (__pigeon_replyList == null) {
      throw _createConnectionError(__pigeon_channelName);
    } else if (__pigeon_replyList.length > 1) {
      throw PlatformException(
        code: __pigeon_replyList[0]! as String,
        message: __pigeon_replyList[1] as String?,
        details: __pigeon_replyList[2],
      );
    } else {
      return (__pigeon_replyList[0] as int?) == null
          ? null
          : FillTranslateAnchor.values[__pigeon_replyList[0]! as int];
    }
  }
}
