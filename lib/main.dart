import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/network/dio_helper.dart';
import 'core/utils/app_router.dart';
import 'core/utils/theme_manager.dart';
import 'features/analysis_employee/data/repos/create_measurement_repo.dart';
import 'features/analysis_employee/presentation/manager/cubits/create_measurement_cubit/create_measurement_cubit.dart';
import 'features/hr/data/repos/all_users_repo.dart';
import 'features/hr/presentation/manager/all_users_cubit/all_users_cubit.dart';
import 'features/login_and_signup/data/repos/auth_repository.dart';
import 'features/login_and_signup/presentation/manager/auth_cubit/auth_cubit.dart';
import 'features/manager/data/repos/show_report_repo.dart';
import 'features/manager/presentation/manager/create_report_cubit/create_report_cubit.dart';
import 'features/manager/presentation/manager/create_task_cubit/create_task_cubit.dart';
import 'features/manager/presentation/manager/show_all_reports_cubit/show_all_reports_cubit.dart';
import 'features/manager/presentation/manager/show_all_tasks_cubit/show_all_tasks_cubit.dart';
import 'features/manager/presentation/manager/show_case_details_cubit/show_case_details_cubit.dart';
import 'features/manager/presentation/manager/show_medical_measurement_cubit/show_medical_measure_ment_cubit.dart';
import 'features/manager/presentation/manager/show_report_cubit/show_report_cubit.dart';
import 'features/receptionist/data/repos/create_call_repository.dart';
import 'features/receptionist/presentation/manager/create_call_cubit/create_call_cubit.dart';
import 'features/receptionist/presentation/manager/show_all_calls_cubit/show_all_calls_cubit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DioHelper.init();

  final authRepository = AuthRepository();
  final allUserRepository = AllUserRepository();
  final createMeasurementRepository = CreateMeasurementRepo();
  final showReportRepo = ShowReportRepo();

  runApp(
    DevicePreview(
      builder: (context) => MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => AuthCubit(authRepository)),
          BlocProvider(create: (context) => AllUsersCubit(allUserRepository)..getAllUsers()),
          BlocProvider(create: (context) => ShowAllCallsCubit()..getAllCalls()),
          BlocProvider(create: (context) => CreateCallCubit(CreateCallRepo())),
          BlocProvider(create: (context) => ShowAllTasksCubit()..getAllTasks()),
          BlocProvider(create: (context) => CreateTaskCubit()),
          BlocProvider(create: (context) => ShowMedicalMeasurementCubit()..getMeasurement()),
          BlocProvider(create: (context) => ShowCaseDetailsCubit()..getCaseDetails(14)),
          BlocProvider(create: (context) => CreateMeasurementCubit(createMeasurementRepository)),
          BlocProvider(create: (context) => ShowAllReportsCubit()..fetchAllReports(date: '')),
          BlocProvider(create: (context) => ShowReportCubit(showReportRepo)),
          BlocProvider(create: (context) => CreateReportCubit()),

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
