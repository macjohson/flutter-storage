import Flutter
import UIKit

public class SwiftStoragePlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "storage", binaryMessenger: registrar.messenger())
    let instance = SwiftStoragePlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    if(call.method == "getDocumentDir"){
        let _documentDir = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0];
        result(_documentDir);
    }
  }
}
