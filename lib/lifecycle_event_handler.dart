import 'package:flutter/material.dart';

class AppLifecycleEventHandler extends WidgetsBindingObserver{
    @override
  Future<void> didChangeAppLifecycleState(AppLifecycleState state) async {
    switch (state) {
      case AppLifecycleState.resumed:
        // TODO: Handle this case.
        break;
      case AppLifecycleState.inactive:
        // TODO: Handle this case.
        break;
      case AppLifecycleState.paused:
        // TODO: Handle this case.
        break;
      case AppLifecycleState.detached:
        // TODO: Handle this case.
        break;
    }
    print('''
=============================================================
               app state: $state
=============================================================
''');
  }
}