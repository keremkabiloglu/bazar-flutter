import 'package:bazar_service_lib/bazar_service_lib.dart';
import 'package:flutter/material.dart';

class ProductScreenController extends GetxController
    with StateMixin, GetSingleTickerProviderStateMixin {
  final photoPageController = PageController(viewportFraction: 0.9);

  late final TabController tabController;
  final pageScrollController = ScrollController();
  final expandButtonKey = GlobalKey();
  final isTabViewExpanded = false.obs;

  @override
  void onInit() {
    tabController = TabController(
      length: 3,
      vsync: this,
    );

    super.onInit();
  }

  final photos = [
    'https://specials-images.forbesimg.com/imageserve/5e19e7a3da6d380006295c72//960x0.jpg?fit=scale',
    'https://images.unsplash.com/photo-1611930022073-b7a4ba5fcccd?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8cHJvZHVjdCUyMHBob3RvZ3JhcGh5fGVufDB8fDB8fHww',
    'https://images.unsplash.com/photo-1630688231126-dd36840fce51?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8cHJvZHVjdCUyMHBob3RvZ3JhcGh5fGVufDB8fDB8fHww',
  ];

  void onPressTabViewExpand() async {
    if (isTabViewExpanded.value) {
      isTabViewExpanded.value = false;
    } else {
      isTabViewExpanded.value = true;

      final expandButtonOffset = getWidgetOffset(expandButtonKey);
      if (pageScrollController.hasClients && expandButtonOffset != null) {
        await Future.delayed(350.milliseconds);
        pageScrollController.animateTo(
          pageScrollController.offset +
              expandButtonOffset.dy -
              Get.context!.height * 0.5,
          duration: 300.milliseconds,
          curve: Curves.easeInOut,
        );
      }
    }
  }

  Offset? getWidgetOffset(GlobalKey globalKey) {
    final renderBox =
        globalKey.currentContext?.findRenderObject() as RenderBox?;
    final offset = renderBox?.localToGlobal(Offset.zero);
    return offset;
  }
}
