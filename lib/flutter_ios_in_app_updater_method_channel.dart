import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'flutter_ios_in_app_updater_platform_interface.dart';

/// An implementation of [FlutterIosInAppUpdaterPlatform] that uses method channels.
class MethodChannelFlutterIosInAppUpdater
    extends FlutterIosInAppUpdaterPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel(
    'goapptiv_flutter_ios_in_app_updater',
  );

  @override
  Future<void> openAppStore(String appId) async {
    await methodChannel.invokeMethod<void>('openAppStore', {
      'appID': appId,
    });
  }
}
