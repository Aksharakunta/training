import 'package:get/get.dart';
import 'package:my_app2/src/LoginScreen.dart';
import 'package:my_app2/src/LoginBinding.dart';
import 'package:my_app2/src/AppRouts.dart';
import 'package:my_app2/src/Homescreen.dart';
import 'package:my_app2/src/HomeBinding.dart';


class AppPages {
  static getPagesWithTransition({
    required String name,
    required GetPageBuilder page,
    Bindings? bindings,
    List<Bindings>? listOfBindings,
    transition = Transition.cupertino ,
    duration = 1,
  }) =>
      GetPage(
        name: name,
        page: page,
        binding: bindings,
        bindings: listOfBindings ?? [],
        transition: transition,
        transitionDuration: Duration(seconds: duration),
      );

  static final List<GetPage> pages = [
    getPagesWithTransition(
      name: AppRouts.logIn,
      page: () => const LoginScreen(),
      bindings: LoginBinding(),
    ),
    getPagesWithTransition(
      name: AppRouts.home,
      page: () => const HomeScreen(),
      bindings: HomeBinding(),
    ),

  ];
}
