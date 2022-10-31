package com.tranconguet.income_calculator_app

import android.content.Intent
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel

class MainActivity : FlutterActivity() {

    private val CHANNEL = "income_calculator"

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, CHANNEL).setMethodCallHandler { call, result ->
            when (call.method) {
                "getDevicePlatform" -> {
                    val intent = Intent(context, PlatformSampleActivity::class.java)
                    startActivity(intent)
                    result.success("This is Android channel")
                }
                else -> {
                    result.notImplemented()
                }
            }
        }
    }
}
