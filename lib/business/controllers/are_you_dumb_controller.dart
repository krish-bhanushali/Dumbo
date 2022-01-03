import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AreYouDumbController extends GetxController {
  int countDumb = 1;
  ScrollController scrollController = ScrollController();
  bool youAreDumb = false;
  bool initDumb = false;

  void increment() {
    countDumb += 1;
    youAreDumb = false;
    _scrollToBottom();
    update();
  }

  void reset() {
    countDumb = 1;
    youAreDumb = true;
    initDumb = true;
    update();
  }

  _scrollToBottom() {
    scrollController.jumpTo(scrollController.position.maxScrollExtent);
  }
}
