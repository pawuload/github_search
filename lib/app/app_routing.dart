import 'package:github_search/screen/home/home_screen.dart';
import 'package:github_search/screen/splash/splash_screen.dart';
import 'package:utopia_arch/utopia_arch.dart';

class AppRouting {
  static final routes = <String, RouteConfig>{
    SplashScreen.route: SplashScreen.routeConfig,
    HomeScreen.route: HomeScreen.routeConfig,
  };

  static const initialRoute = SplashScreen.route;
}
