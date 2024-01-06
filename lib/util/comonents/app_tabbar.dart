import 'package:flutter/material.dart';

class AppTabBar extends StatefulWidget {
  const AppTabBar({
    super.key,
    required this.controller,
    required this.tabs,
    this.isScrollable,
    this.onTap,
  });

  final TabController controller;
  final List<Widget> tabs;
  final bool? isScrollable;
  final void Function(int)? onTap;

  @override
  State<AppTabBar> createState() => _AppTabBarState();
}

class _AppTabBarState extends State<AppTabBar> {
  final List<GlobalKey> keys = [];
  bool widgetInitialized = false;

  @override
  void initState() {
    keys.addAll(
      List.generate(
        widget.tabs.length,
        (index) => GlobalKey(),
      ),
    );
    widget.controller.addListener(() {
      setState(() {});
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      if (context.mounted) {
        setState(() {
          widgetInitialized = true;
        });
      }
    });
    return LayoutBuilder(
      builder: (context, constraints) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TabBar(
              isScrollable: widget.isScrollable ?? false,
              padding: EdgeInsets.zero,
              indicatorPadding: EdgeInsets.zero,
              controller: widget.controller,
              onTap: widget.onTap,
              tabs: widget.tabs
                  .map(
                    (e) => Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                          key: keys[widget.tabs.indexOf(e)],
                          child: e,
                        ),
                      ],
                    ),
                  )
                  .toList(),
            ),
            SizedBox(
              width: constraints.maxWidth,
              child: Row(
                children: [
                  AnimatedScale(
                    duration: const Duration(milliseconds: 200),
                    scale: widgetInitialized ? 1 : 0,
                    child: AnimatedPadding(
                      duration: const Duration(milliseconds: 200),
                      padding: EdgeInsets.only(
                        left: (getTabCenterDx(widget.controller.index) ?? 0) > 0
                            ? getTabCenterDx(widget.controller.index) ?? 0
                            : 0,
                      ),
                      child: const CircleAvatar(
                        radius: 3.5,
                        backgroundColor: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }

  double? getTabCenterDx(int index) {
    final RenderBox? renderBox =
        keys[index].currentContext?.findRenderObject() as RenderBox?;
    final Offset? offset = renderBox?.localToGlobal(Offset.zero);
    return (offset?.dx ?? 0) + ((renderBox?.size.width ?? 0) / 2) - 1.75;
  }
}
