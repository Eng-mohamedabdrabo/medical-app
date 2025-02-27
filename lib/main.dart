import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/network/dio_helper.dart';
import 'core/utils/app_router.dart';
import 'core/utils/theme_manager.dart';
import 'features/hr/data/repos/all_users_repo.dart';
import 'features/hr/presentation/manager/all_users_cubit/all_users_cubit.dart';
import 'features/login_and_signup/data/repos/auth_repository.dart';
import 'features/login_and_signup/presentation/manager/auth_cubit/auth_cubit.dart';
import 'features/receptionist/data/repos/create_call_repository.dart';
import 'features/receptionist/presentation/manager/create_call_cubit/create_call_cubit.dart';
import 'features/receptionist/presentation/manager/show_all_calls_cubit/show_all_calls_cubit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DioHelper.init();

  final authRepository = AuthRepository();
  final allUserRepository = AllUserRepository();

  runApp(
    DevicePreview(
      builder: (context) => MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => AuthCubit(authRepository)),
          BlocProvider(create: (context) => AllUsersCubit(allUserRepository)..getAllUsers()),
          BlocProvider(create: (context) => ShowAllCallsCubit()..getAllCalls()),
          BlocProvider(create: (context) => CreateCallCubit(CreateCallRepo())),
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
