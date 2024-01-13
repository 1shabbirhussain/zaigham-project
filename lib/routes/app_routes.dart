import 'package:get/get.dart';
import 'package:kp_digital/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:kp_digital/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:kp_digital/presentation/categories_screen/binding/categories_binding.dart';
import 'package:kp_digital/presentation/categories_screen/categories_screen.dart';
import 'package:kp_digital/presentation/categories_screen_one_container1_screen/binding/categories_screen_one_container1_binding.dart';
import 'package:kp_digital/presentation/categories_screen_one_container1_screen/categories_screen_one_container1_screen.dart';
import 'package:kp_digital/presentation/child_categories_screen/binding/child_categories_binding.dart';
import 'package:kp_digital/presentation/child_categories_screen/child_categories_screen.dart';
import 'package:kp_digital/presentation/kp_digitals_app_icon_512x512_screen/binding/kp_digitals_app_icon_512x512_binding.dart';
import 'package:kp_digital/presentation/kp_digitals_app_icon_512x512_screen/kp_digitals_app_icon_512x512_screen.dart';
import 'package:kp_digital/presentation/kp_digitals_login_screen/binding/kp_digitals_login_binding.dart';
import 'package:kp_digital/presentation/kp_digitals_login_screen/kp_digitals_login_screen.dart';
import 'package:kp_digital/presentation/kp_digitals_login_screen_one_screen/binding/kp_digitals_login_screen_one_binding.dart';
import 'package:kp_digital/presentation/kp_digitals_login_screen_one_screen/kp_digitals_login_screen_one_screen.dart';
import 'package:kp_digital/presentation/kp_digitals_register_screen/binding/kp_digitals_register_binding.dart';
import 'package:kp_digital/presentation/kp_digitals_register_screen/kp_digitals_register_screen.dart';
import 'package:kp_digital/presentation/kp_digitals_register_screen_one_screen/binding/kp_digitals_register_screen_one_binding.dart';
import 'package:kp_digital/presentation/kp_digitals_register_screen_one_screen/kp_digitals_register_screen_one_screen.dart';
import 'package:kp_digital/presentation/kp_digitals_splash_screen/binding/kp_digitals_splash_binding.dart';
import 'package:kp_digital/presentation/kp_digitals_splash_screen/kp_digitals_splash_screen.dart';
import 'package:kp_digital/presentation/kp_digitals_splash_screen_one_screen/binding/kp_digitals_splash_screen_one_binding.dart';
import 'package:kp_digital/presentation/kp_digitals_splash_screen_one_screen/kp_digitals_splash_screen_one_screen.dart';
import 'package:kp_digital/presentation/notification_screen/binding/notification_binding.dart';
import 'package:kp_digital/presentation/notification_screen/notification_screen.dart';
import 'package:kp_digital/presentation/payment_screen/binding/payment_binding.dart';
import 'package:kp_digital/presentation/payment_screen/payment_screen.dart';
import 'package:kp_digital/presentation/product_page_screen_one_screen/binding/product_page_screen_one_binding.dart';
import 'package:kp_digital/presentation/product_page_screen_one_screen/product_page_screen_one_screen.dart';
import 'package:kp_digital/presentation/product_page_screen_two_screen/binding/product_page_screen_two_binding.dart';
import 'package:kp_digital/presentation/product_page_screen_two_screen/product_page_screen_two_screen.dart';
import 'package:kp_digital/presentation/profile_screen_page/profile_screen_page.dart';
import 'package:kp_digital/presentation/sub_categories_screen/binding/sub_categories_binding.dart';
import 'package:kp_digital/presentation/sub_categories_screen/sub_categories_screen.dart';

class AppRoutes {
  static const String chatScreenPage = '/chat_screen_page';

  static const String kpDigitalsAppIcon512x512Screen =
      '/kp_digitals_app_icon_512x512_screen';

  static const String kpDigitalsSplashScreen = '/kp_digitals_splash_screen';

  static const String kpDigitalsLoginScreen = '/initialRoute';

  static const String kpDigitalsRegisterScreenOneScreen =
      '/kp_digitals_register_screen_one_screen';

  static const String categoriesScreenOneContainerPage =
      '/categories_screen_one_container_page';

  static const String categoriesScreenOneContainer1Screen =
      '/categories_screen_one_container1_screen';

  static const String categoriesScreen = '/categories_screen';

  static const String notificationScreen = '/notification_screen';

  static const String subCategoriesScreen = '/sub_categories_screen';

  static const String childCategoriesScreen = '/child_categories_screen';

  static const String productPageScreenOneScreen =
      '/product_page_screen_one_screen';

  static const String productPageScreenTwoScreen =
      '/product_page_screen_two_screen';

  static const String addToCartScreenPage = '/add_to_cart_screen_page';

  static const String paymentScreen = '/payment_screen';

  static const String kpDigitalsSplashScreenOneScreen =
      '/kp_digitals_splash_screen_one_screen';

  static const String kpDigitalsLoginScreenOneScreen =
      '/kp_digitals_login_screen_one_screen';

  static const String kpDigitalsRegisterScreen = '/kp_digitals_register_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static const String profileScreenPage = '/profile_screen_page';

  static List<GetPage> pages = [
    GetPage(
      name: profileScreenPage,
      page: () => ProfileScreenPage(),
      bindings: [],
    ),
    GetPage(
      name: kpDigitalsAppIcon512x512Screen,
      page: () => KpDigitalsAppIcon512x512Screen(),
      bindings: [
        KpDigitalsAppIcon512x512Binding(),
      ],
    ),
    GetPage(
      name: kpDigitalsSplashScreen,
      page: () => KpDigitalsSplashScreen(),
      bindings: [
        KpDigitalsSplashBinding(),
      ],
    ),
    GetPage(
      name: kpDigitalsLoginScreen,
      page: () => KpDigitalsLoginScreen(),
      bindings: [
        KpDigitalsLoginBinding(),
      ],
    ),
    GetPage(
      name: kpDigitalsRegisterScreenOneScreen,
      page: () => KpDigitalsRegisterScreenOneScreen(),
      bindings: [
        KpDigitalsRegisterScreenOneBinding(),
      ],
    ),
    GetPage(
      name: categoriesScreenOneContainer1Screen,
      page: () => CategoriesScreenOneContainer1Screen(),
      bindings: [
        CategoriesScreenOneContainer1Binding(),
        SubCategoriesBinding(),
        ProductPageScreenOneBinding(),
        ProductPageScreenTwoBinding()
      ],
    ),
    GetPage(
      name: categoriesScreen,
      page: () => CategoriesScreen(),
      bindings: [
        CategoriesBinding(),
      ],
    ),
    GetPage(
      name: notificationScreen,
      page: () => NotificationScreen(),
      bindings: [
        NotificationBinding(),
      ],
    ),
    GetPage(
      name: subCategoriesScreen,
      page: () => SubCategoriesScreen(),
      bindings: [
        SubCategoriesBinding(),
      ],
    ),
    GetPage(
      name: childCategoriesScreen,
      page: () => ChildCategoriesScreen(),
      bindings: [
        ChildCategoriesBinding(),
      ],
    ),
    GetPage(
      name: productPageScreenOneScreen,
      page: () => ProductPageScreenOneScreen(),
      bindings: [
        ProductPageScreenOneBinding(),
      ],
    ),
    GetPage(
      name: productPageScreenTwoScreen,
      page: () => ProductPageScreenTwoScreen(),
      bindings: [
        ProductPageScreenTwoBinding(),
      ],
    ),
    GetPage(
      name: paymentScreen,
      page: () => PaymentScreen(),
      bindings: [
        PaymentBinding(),
      ],
    ),
    GetPage(
      name: kpDigitalsSplashScreenOneScreen,
      page: () => KpDigitalsSplashScreenOneScreen(),
      bindings: [
        KpDigitalsSplashScreenOneBinding(),
      ],
    ),
    GetPage(
      name: kpDigitalsLoginScreenOneScreen,
      page: () => KpDigitalsLoginScreenOneScreen(),
      bindings: [
        KpDigitalsLoginScreenOneBinding(),
      ],
    ),
    GetPage(
      name: kpDigitalsRegisterScreen,
      page: () => KpDigitalsRegisterScreen(),
      bindings: [
        KpDigitalsRegisterBinding(),
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
      page: () => KpDigitalsAppIcon512x512Screen(),
      bindings: [
        KpDigitalsAppIcon512x512Binding(),
      ],
    )
  ];
}
