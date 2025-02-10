import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:medical_app/core/utils/theme_manager.dart';
import 'core/utils/app_router.dart';



void main() {
  runApp(
    DevicePreview(builder: (context)=> const MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      title: 'Medical App',
      theme: ThemeManager.getAppTheme(),
    );
  }
}
