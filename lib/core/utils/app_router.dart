import 'package:go_router/go_router.dart';
import '../views/notifications_view.dart';
import '../../features/doctor/presentation/views/doctor_calls_view.dart';
import '../../features/doctor/presentation/views/doctor_view.dart';
import '../../features/manager/presentation/views/manager_add_task_view.dart';
import '../../features/manager/presentation/views/manager_task_details_view.dart';
import '../../features/manager/presentation/views/manager_tasks_view.dart';
import '../../features/nurse/presentation/views/nurse_view.dart';
import '../../features/prototyping/presentation/views/prototyping_map_view.dart';
import '../../features/receptionist/presentation/views/receptionist_view.dart';
import '../../features/analysis_employee/presentation/views/analysis_employee_view.dart';
import '../../features/manager/presentation/views/manager_view.dart';
import '../../features/hr/presentation/views/hr_view.dart';
import '../../features/analysis_employee/presentation/views/analysis_employee_add_medical_report_view.dart';
import '../../features/analysis_employee/presentation/views/analysis_employee_cases_details_view.dart';
import '../../features/analysis_employee/presentation/views/analysis_employee_cases_requests_view.dart';
import '../../features/doctor/presentation/views/doctor_case_details_view.dart';
import '../../features/doctor/presentation/views/doctor_cases_view.dart';
import '../../features/doctor/presentation/views/doctor_request_medical_measurement_view.dart';
import '../../features/doctor/presentation/views/doctor_request_medical_report_view.dart';
import '../../features/doctor/presentation/views/doctor_select_nurse_view.dart';
import '../../features/hr/presentation/views/hr_create_user_view.dart';
import '../../features/hr/presentation/views/hr_edit_user_view.dart';
import '../../features/hr/presentation/views/hr_employee_view.dart';
import '../../features/hr/presentation/views/hr_show_employee_profile_view.dart';
import '../../features/login_and_signup/presentation/views/login_view.dart';
import '../../features/manager/presentation/views/manager_case_details_view.dart';
import '../../features/manager/presentation/views/manager_cases_view.dart';
import '../../features/manager/presentation/views/manager_employee_view.dart';
import '../../features/nurse/presentation/views/nurse_add_measurement_view.dart';
import '../../features/nurse/presentation/views/nurse_calls_view.dart';
import '../../features/nurse/presentation/views/nurse_case_details_view.dart';
import '../../features/receptionist/presentation/views/calls_view.dart';
import '../../features/receptionist/presentation/views/create_call_view.dart';
import '../../features/receptionist/presentation/views/select_doctor_view.dart';
import '../../features/splash/presentation/views/splash_view.dart';
import '../views/attendance_view.dart';
import '../views/check_attendance_done_view.dart';
import '../views/create_report_view.dart';
import '../views/fingerprint_view.dart';
import '../views/my_profile_view.dart';
import '../views/reports_details_view.dart';
import '../views/reports_view.dart';
import '../views/tasks_details_view.dart';
import '../views/tasks_view.dart';

abstract class AppRouter {
  static const kSplashView = '/';
  static const kPrototypingMapView = '/prototypingMapView';
  static const kDoctorView = '/doctorView';
  static const kReceptionistView = '/receptionistView';
  static const kNurseView = '/nurseView';
  static const kAnalysisEmployeeView = '/analysisEmployeeView';
  static const kManagerView = '/managerView';
  static const kHrView = '/hrView';
  static const kNotificationsView = '/notificationsView';
  static const kAttendanceView = '/attendanceView';
  static const kCheckAttendanceDoneView = '/checkAttendanceDoneView';
  static const kFingerprintView = '/fingerprintView';
  static const kCreateReportView = '/createReportView';
  static const kAnalysisEmployeeAddMedicalReportView = '/analysisEmployeeAddMedicalReportView';
  static const kAnalysisEmployeeCasesDetailsView = '/analysisEmployeeCasesDetailsView';
  static const kAnalysisEmployeeCasesRequestsView = '/analysisEmployeeCasesRequestsView';
  static const kDoctorCaseDetailsView = '/doctorCaseDetailsView';
  static const kDoctorCasesView = '/doctorCasesView';
  static const kDoctorRequestMedicalMeasurementView = '/doctorRequestMedicalMeasurementView';
  static const kDoctorRequestMedicalReportView = '/doctorRequestMedicalReportView';
  static const kDoctorSelectNurseView = '/doctorSelectNurseView';
  static const kDoctorCallsView = '/doctorCallsView';
  static const kHrCreateUserView = '/hrCreateUserView';
  static const kHrEditUserView = '/hrEditUserView';
  static const kHrEmployeeView = '/hrEmployeeView';
  static const kHrShowEmployeeProfileView = '/hrShowEmployeeProfileView';
  static const kLoginView = '/loginView';
  static const kManagerCaseDetailsView = '/managerCaseDetailsView';
  static const kManagerCasesView = '/managerCasesView';
  static const kManagerEmployeeView = '/managerEmployeeView';
  static const kManagerShowMedicalMeasurementView = '/managerShowMedicalMeasurementView';
  static const kManagerShowMedicalRecordView = '/managerShowMedicalRecordView';
  static const kNurseAddMeasurementView = '/nurseAddMeasurementView';
  static const kNurseCallsView = '/nurseCallsView';
  static const kNurseCaseDetailsView = '/nurseCaseDetailsView';
  static const kReceptionistCallsView = '/receptionistCallsView';
  static const kReceptionistCreateCallView = '/receptionistCreateCallView';
  static const kSelectDoctorView = '/selectDoctorView';
  static const kTasksView = '/tasksView';
  static const kTasksDetailsView = '/tasksDetailsView';
  static const kReportsView = '/reportsView';
  static const kReportsDetailsView = '/reportsDetailsView';
  static const kMyProfileView = '/myProfileView';
  static const kManagerTasksView = '/managerTasksView';
  static const kManagerTasksDetailsView = '/managerTasksDetailsView';
  static const kManagerAddTaskView = '/managerAddTaskView';

  static final router = GoRouter(
    routes: <GoRoute>[
      GoRoute(
        path: kSplashView,
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kPrototypingMapView,
        builder: (context, state) => const PrototypingMapView(),
      ),
      GoRoute(
        path: kDoctorView,
        builder: (context, state) => const DoctorView(),
      ),
      GoRoute(
        path: kReceptionistView,
        builder: (context, state) => const ReceptionistView(),
      ),
      GoRoute(
        path: kNurseView,
        builder: (context, state) => const NurseView(),
      ),
      GoRoute(
        path: kAnalysisEmployeeView,
        builder: (context, state) => const AnalysisEmployeeView(),
      ),
      GoRoute(
        path: kManagerView,
        builder: (context, state) => const ManagerView(),
      ),
      GoRoute(
        path: kHrView,
        builder: (context, state) => const HrView(),
      ),
      GoRoute(
        path: kNotificationsView,
        builder: (context, state) => const NotificationsView(),
      ),
      GoRoute(
        path: kAttendanceView,
        builder: (context, state) => const AttendanceView(),
      ),
      GoRoute(
        path: kCheckAttendanceDoneView,
        builder: (context, state) => const CheckAttendanceDoneView(),
      ),
      GoRoute(
        path: kFingerprintView,
        builder: (context, state) => const FingerprintView(),
      ),
      GoRoute(
        path: kCreateReportView,
        builder: (context, state) => const CreateReportView(),
      ),
      GoRoute(
        path: kAnalysisEmployeeAddMedicalReportView,
        builder: (context, state) => const AnalysisEmployeeAddMedicalReportView(),
      ),
      GoRoute(
        path: kAnalysisEmployeeCasesDetailsView,
        builder: (context, state) => const AnalysisEmployeeCasesDetailsView(),
      ),
      GoRoute(
        path: kAnalysisEmployeeCasesRequestsView,
        builder: (context, state) => const AnalysisEmployeeCasesRequestsView(),
      ),
      GoRoute(
        path: kDoctorCaseDetailsView,
        builder: (context, state) => const DoctorCaseDetailsView(),
      ),
      GoRoute(
        path: kDoctorCallsView,
        builder: (context, state) => const DoctorCallsView(),
      ),
      GoRoute(
        path: kDoctorCasesView,
        builder: (context, state) => const DoctorCasesView(),
      ),
      GoRoute(
        path: kDoctorRequestMedicalMeasurementView,
        builder: (context, state) => const DoctorRequestMedicalMeasurementView(),
      ),
      GoRoute(
        path: kDoctorRequestMedicalReportView,
        builder: (context, state) => const DoctorRequestMedicalReportView(),
      ),
      GoRoute(
        path: kDoctorSelectNurseView,
        builder: (context, state) => const DoctorSelectNurseView(),
      ),
      GoRoute(
        path: kHrCreateUserView,
        builder: (context, state) => const HrCreateUserView(),
      ),
      GoRoute(
        path: kHrEditUserView,
        builder: (context, state) => const HrEditUserView(),
      ),
      GoRoute(
        path: kHrEmployeeView,
        builder: (context, state) => const HrEmployeeView(),
      ),
      GoRoute(
        path: kHrShowEmployeeProfileView,
        builder: (context, state) => const HrShowEmployeeProfileView(),
      ),
      GoRoute(
        path: AppRouter.kLoginView,
        builder: (context, state) {
          final String type = state.uri.queryParameters['type'] ?? 'unknown'; // استقبال النوع
          return LoginView(type: type);
        },
      ),


      GoRoute(
        path: kManagerTasksView,
        builder: (context, state) => const ManagerTasksView(),
      ),
      GoRoute(
        path: kManagerCaseDetailsView,
        builder: (context, state) => const ManagerCaseDetailsView(),
      ),
      GoRoute(
        path: kManagerTasksDetailsView,
        builder: (context, state) => const ManagerTaskDetailsView(),
      ),
      GoRoute(
        path: kManagerAddTaskView,
        builder: (context, state) => const ManagerAddTaskView(),
      ),
      GoRoute(
        path: kManagerCasesView,
        builder: (context, state) => const ManagerCasesView(),
      ),
      GoRoute(
        path: kManagerEmployeeView,
        builder: (context, state) => const ManagerEmployeeView(),
      ),

            GoRoute(
        path: kNurseAddMeasurementView,
        builder: (context, state) => const NurseAddMeasurementView(),
      ),
      GoRoute(
        path: kNurseCallsView,
        builder: (context, state) => const NurseCallsView(),
      ),
      GoRoute(
        path: kNurseCaseDetailsView,
        builder: (context, state) => const NurseCaseDetailsView(),
      ),
      GoRoute(
        path: kReceptionistCallsView,
        builder: (context, state) => const ReceptionistCallsView(),
      ),
      GoRoute(
        path: kReceptionistCreateCallView,
        builder: (context, state) => const ReceptionistCreateCallView(),
      ),
      GoRoute(
        path: kSelectDoctorView,
        builder: (context, state) => const SelectDoctorView(),
      ),
      GoRoute(
        path: kTasksView,
        builder: (context, state) => const TasksView(),
      ),
      GoRoute(
        path: kTasksDetailsView,
        builder: (context, state) => const TasksDetailsView(),
      ),
      GoRoute(
        path: kReportsView,
        builder: (context, state) => const ReportsView(),
      ),
      GoRoute(
        path: kReportsDetailsView,
        builder: (context, state) => const ReportsDetailsView(),
      ),
      GoRoute(
        path: AppRouter.kMyProfileView,
        builder: (context, state) {
          return const MyProfileView();
        },
      ),

    ],
  );
}
