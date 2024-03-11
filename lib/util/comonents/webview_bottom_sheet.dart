import 'package:bazar_service_lib/bazar_service_lib.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class WebViewBottomSheet {
  WebViewBottomSheet({required this.url});

  final String url;
  InAppWebViewController? controller;

  Future<void> show() async {
    await showModalBottomSheet(
      context: Get.context!,
      isScrollControlled: true,
      builder: (context) => DraggableScrollableSheet(
        initialChildSize: .9,
        minChildSize: .4,
        maxChildSize: .9,
        builder: (context, scroolController) => Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12),
              topRight: Radius.circular(12),
            ),
          ),
          child: Column(
            children: [
              Container(
                height: 4,
                width: context.width * 0.2,
                margin: const EdgeInsets.symmetric(vertical: 8),
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
              const SizedBox(height: 8),
              SizedBox(
                height: (context.height * .9) - 28,
                child: GestureDetector(
                  onVerticalDragUpdate: (details) async {
                    final maxHeight = controller?.getContentHeight();
                    controller?.getScrollY().then(
                      (y) {
                        final scroolTo =
                            (y ?? 0) - (details.primaryDelta ?? 0).toInt();
                        if (maxHeight != null) {
                          if (scroolTo >= 0) {
                            controller?.scrollTo(
                              x: 0,
                              y: scroolTo,
                            );
                          }
                        } else {
                          if (scroolTo >= 0) {
                            controller?.scrollTo(
                              x: 0,
                              y: scroolTo,
                            );
                          }
                        }
                      },
                    );
                  },
                  child: InAppWebView(
                    initialUrlRequest: URLRequest(
                      url: WebUri(url),
                    ),
                    onWebViewCreated: (controller) {
                      this.controller = controller;
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
