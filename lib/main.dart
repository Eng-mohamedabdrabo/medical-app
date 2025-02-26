import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'core/network/auth_api_helper.dart';
import 'core/utils/theme_manager.dart';
import 'core/utils/app_router.dart';
import 'features/login_and_signup/data/repos/auth_repository.dart';
import 'features/login_and_signup/presentation/manager/auth_cubit/auth_cubit.dart';

void main() {
  final authRepository = AuthRepository();
  WidgetsFlutterBinding.ensureInitialized();
  AuthDioHelper.init();
  runApp(
    DevicePreview(
      builder: (context) => MultiBlocProvider(
        providers: [
          BlocProvider<AuthCubit>(
            create: (context) => AuthCubit(authRepository),
          ),
        ],
        child: const MyApp(),
      ),
    ),
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
