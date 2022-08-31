
import 'package:secondbrain_app/presentation/notes_screen/notes_screen.dart';
import 'package:secondbrain_app/presentation/notes_screen/binding/notes_binding.dart';
import 'package:secondbrain_app/presentation/calenderapp_screen/calenderapp_screen.dart';
import 'package:secondbrain_app/presentation/calenderapp_screen/binding/calenderapp_binding.dart';
import 'package:secondbrain_app/presentation/login_screen/login_screen.dart';
import 'package:secondbrain_app/presentation/login_screen/binding/login_binding.dart';
import 'package:secondbrain_app/presentation/insert_screen/insert_screen.dart';
import 'package:secondbrain_app/presentation/insert_screen/binding/insert_binding.dart';
import 'package:secondbrain_app/presentation/projects_screen/projects_screen.dart';
import 'package:secondbrain_app/presentation/projects_screen/binding/projects_binding.dart';
import 'package:secondbrain_app/presentation/tasks_screen/tasks_screen.dart';
import 'package:secondbrain_app/presentation/tasks_screen/binding/tasks_binding.dart';
import 'package:secondbrain_app/presentation/register_screen/register_screen.dart';
import 'package:secondbrain_app/presentation/register_screen/binding/register_binding.dart';
import 'package:secondbrain_app/presentation/main_screen/main_screen.dart';
import 'package:secondbrain_app/presentation/main_screen/binding/main_binding.dart';
import 'package:secondbrain_app/presentation/habits_screen/habits_screen.dart';
import 'package:secondbrain_app/presentation/habits_screen/binding/habits_binding.dart';
import 'package:secondbrain_app/presentation/dashboadinsert_screen/dashboadinsert_screen.dart';
import 'package:secondbrain_app/presentation/dashboadinsert_screen/binding/dashboadinsert_binding.dart';
import 'package:secondbrain_app/presentation/inbox_screen/inbox_screen.dart';
import 'package:secondbrain_app/presentation/inbox_screen/binding/inbox_binding.dart';
import 'package:secondbrain_app/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:secondbrain_app/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static String calenderScreen = '/calender_screen';

  static String notesScreen = '/notes_screen';

  static String calenderappScreen = '/calenderapp_screen';

  static String loginScreen = '/login_screen';

  static String insertScreen = '/insert_screen';

  static String projectsScreen = '/projects_screen';

  static String tasksScreen = '/tasks_screen';

  static String registerScreen = '/register_screen';

  static String mainScreen = '/main_screen';

  static String habitsScreen = '/habits_screen';

  static String dashboadinsertScreen = '/dashboadinsert_screen';

  static String inboxScreen = '/inbox_screen';

  static String appNavigationScreen = '/app_navigation_screen';

  static String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: notesScreen,
      page: () => NotesScreen(),
      bindings: [
        NotesBinding(),
      ],
    ),
    GetPage(
      name: calenderappScreen,
      page: () => CalenderappScreen(),
      bindings: [
        CalenderappBinding(),
      ],
    ),
    GetPage(
      name: loginScreen,
      page: () => LoginScreen(),
      bindings: [
        LoginBinding(),
      ],
    ),
    GetPage(
      name: insertScreen,
      page: () => InsertScreen(),
      bindings: [
        InsertBinding(),
      ],
    ),
    GetPage(
      name: projectsScreen,
      page: () => ProjectsScreen(),
      bindings: [
        ProjectsBinding(),
      ],
    ),
    GetPage(
      name: tasksScreen,
      page: () => TasksScreen(),
      bindings: [
        TasksBinding(),
      ],
    ),
    GetPage(
      name: registerScreen,
      page: () => RegisterScreen(),
      bindings: [
        RegisterBinding(),
      ],
    ),
    GetPage(
      name: mainScreen,
      page: () => MainScreen(),
      bindings: [
        MainBinding(),
      ],
    ),
    GetPage(
      name: habitsScreen,
      page: () => HabitsScreen(),
      bindings: [
        HabitsBinding(),
      ],
    ),
    GetPage(
      name: dashboadinsertScreen,
      page: () => DashboadinsertScreen(),
      bindings: [
        DashboadinsertBinding(),
      ],
    ),
    GetPage(
      name: inboxScreen,
      page: () => InboxScreen(),
      bindings: [
        InboxBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => LoginScreen(),
      bindings: [
        LoginBinding(),
      ],
    )
  ];
}
