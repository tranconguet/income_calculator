import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PlatformChannelScreen extends StatefulWidget {
  const PlatformChannelScreen({Key? key}) : super(key: key);

  @override
  State<PlatformChannelScreen> createState() => _PlatformChannelScreenState();
}

class _PlatformChannelScreenState extends State<PlatformChannelScreen> {
  static const platform = MethodChannel('income_calculator');
  String _platform = 'Unknown';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Platform channel test"),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              _platform,
              style: const TextStyle(fontSize: 32),
            ),
            TextButton(
              onPressed: _getPlatformType,
              child: const Text(
                "Get platform name",
                style: TextStyle(color: Colors.blueAccent, fontSize: 24),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _getPlatformType() async {
    final result = await platform.invokeMethod('getDevicePlatform');
    setState(() {
      _platform = result;
    });
  }
}
