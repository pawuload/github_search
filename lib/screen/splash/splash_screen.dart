import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:github_search/common/constant/app_icons.dart';
import 'package:github_search/screen/home/home_screen.dart';
import 'package:github_search/util/extension/context_extensions.dart';
import 'package:utopia_arch/utopia_arch.dart';

class SplashScreen extends HookWidget {
  static const route = '/splash';
  static final routeConfig = RouteConfig.material(SplashScreen.new);

  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    useEffect(() async {
      unawaited(context.navigator.pushReplacementNamed(HomeScreen.route));
    }, []);

    return Scaffold(
      backgroundColor: context.colors.background,
      body: Center(
        child: SvgPicture.asset(
          AppIcons.logo,
          height: 160,
          color: context.colors.text,
        ),
      ),
    );
  }
}
