package com.huanshao.storage_example

import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel
import java.io.File

class MainActivity : FlutterActivity() {
    private val channelName = "com.huanshao.storage";

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine);
        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, channelName).setMethodCallHandler { call, result ->
            run {
                if (call.method === "getDocumentDir") {
                    result.success(this.getStorageDir());
                } else {
                    result.notImplemented();
                }
            }
        }
    }

    private fun getStorageDir(): File? {
        return context.filesDir;
    }
}
