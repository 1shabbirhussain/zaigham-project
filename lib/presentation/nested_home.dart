import 'package:flutter/material.dart';
import 'package:kp_digital/presentation/categories_screen_one_container_page/categories_screen_one_container_page.dart';
import 'package:kp_digital/presentation/product_page_screen_one_screen/product_page_screen_one_screen.dart';
import 'package:kp_digital/presentation/product_page_screen_two_screen/product_page_screen_two_screen.dart';
import 'package:kp_digital/presentation/sub_categories_screen/sub_categories_screen.dart';
import 'package:kp_digital/routes/app_routes.dart';

class ControleNavScreen extends StatefulWidget {
  const ControleNavScreen();

  @override
  _ControleNavScreenState createState() => _ControleNavScreenState();
}

class _ControleNavScreenState extends State<ControleNavScreen> {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      initialRoute: '/bottom-nav-bar',
      onGenerateRoute: (RouteSettings settings) {
        return PageRouteBuilder(
          settings: settings,
          pageBuilder: (context, animation, secondaryAnimation) {
            print("Setting ${settings.name}");
            switch (settings.name) {
              case AppRoutes.categoriesScreenOneContainerPage:
                return CategoriesScreenOneContainerPage();
              case AppRoutes.subCategoriesScreen:
                return SubCategoriesScreen();
              case AppRoutes.productPageScreenOneScreen:
                return ProductPageScreenOneScreen();
              case AppRoutes.productPageScreenTwoScreen:
                return ProductPageScreenTwoScreen();

              default:
                return CategoriesScreenOneContainerPage(); // Default page
            }
          },
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            const begin = Offset(1.0, 0.0);
            const end = Offset.zero;
            const curve = Curves.ease;
            var tween =
                Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
            var offsetAnimation = animation.drive(tween);
            return SlideTransition(
              position: offsetAnimation,
              child: child,
            );
          },
        );
      },
    );
  }
}
