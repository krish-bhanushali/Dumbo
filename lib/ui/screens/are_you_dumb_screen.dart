import 'package:dumbo/business/controllers/are_you_dumb_controller.dart';
import 'package:dumbo/ui/values/app_colors.dart';
import 'package:dumbo/ui/values/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class AreYouDumbScreen extends StatelessWidget {
  const AreYouDumbScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        height: Get.height,
        child: Stack(
          children: [
            GetBuilder<AreYouDumbController>(
                init: AreYouDumbController(),
                builder: (controller) {
                  return Padding(
                    padding: const EdgeInsets.only(
                      bottom: 80.0,
                    ),
                    child: ListView(
                      controller: controller.scrollController,
                      children: [
                        for (int i = 1; i <= controller.countDumb; i++)
                          Text(
                            'Are you dumb?',
                            style: GoogleFonts.bangers(
                              textStyle: const TextStyle(
                                  color: Colors.black, fontSize: 75),
                            ),
                          ),
                      ],
                    ),
                  );
                }),
            Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                children: [
                  AreYouDumbButtonWidget(
                    buttonColor: AppColors.primary,
                    title: 'Yes',
                    onTap: () {
                      Get.defaultDialog(
                          radius: 6,
                          titleStyle: TextStyle(height: 0),
                          title: '',
                          content: DumbInfo());
                      Get.find<AreYouDumbController>().reset();
                    },
                  ),
                  AreYouDumbButtonWidget(
                      buttonColor: AppColors.red,
                      title: 'No',
                      onTap: () {
                        Get.find<AreYouDumbController>().increment();
                      }),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

class AreYouDumbButtonWidget extends StatelessWidget {
  const AreYouDumbButtonWidget({
    Key? key,
    required this.title,
    required this.buttonColor,
    this.onTap,
  }) : super(key: key);

  final String title;
  final Color buttonColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
            height: 80.0,
            color: buttonColor,
            child: Center(
                child: Text(
              title,
              style: GoogleFonts.bangers(
                textStyle: const TextStyle(color: Colors.white, fontSize: 25),
              ),
            ))),
      ),
    );
  }
}

class DumbInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Lottie.asset(
          AppAssets.APP_HITTING,
          height: 300,
        ),
        const SizedBox(
          height: 10.0,
        ),
        GestureDetector(
          onTap: () async {
            Get.back();
          },
          child: Container(
            padding:
                const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
            decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(6.0),
                boxShadow: [
                  BoxShadow(
                      offset: const Offset(0, 1),
                      blurRadius: 5,
                      color: Colors.grey[500]!)
                ]),
            child: const Text(
              'Yes You are!',
              style: TextStyle(color: Colors.white, fontSize: 12),
            ),
          ),
        )
      ],
    );
  }
}
