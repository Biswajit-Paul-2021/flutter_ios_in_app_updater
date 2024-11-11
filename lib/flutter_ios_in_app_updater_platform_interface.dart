import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutter_ios_in_app_updater_method_channel.dart';

abstract class FlutterIosInAppUpdaterPlatform extends PlatformInterface {
  /// Constructs a FlutterIosInAppUpdaterPlatform.
  FlutterIosInAppUpdaterPlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterIosInAppUpdaterPlatform _instance =
      MethodChannelFlutterIosInAppUpdater();

  /// The default instance of [FlutterIosInAppUpdaterPlatform] to use.
  ///
  /// Defaults to [MethodChannelFlutterIosInAppUpdater].
  static FlutterIosInAppUpdaterPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterIosInAppUpdaterPlatform] when
  /// they register themselves.
  static set instance(FlutterIosInAppUpdaterPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<void> openAppStore(String appId) {
    throw UnimplementedError('openAppStore() has not been implemented.');
  }
}
