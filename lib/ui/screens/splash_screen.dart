import 'package:dumbo/ui/values/app_constants.dart';
import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // checkInternetConnection(context); // Check Internet Connectivity

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Column(
              children: [
                Image.asset(
                  AppAssets.APP_LOGO,
                  height: 280,
                ),
                const SizedBox(height: 16),
              ],
            ),
          ),
          Lottie.asset(
            AppAssets.APP_BUNNY,
            height: 120,
          ),
        ],
      ),
    );
  }
}
