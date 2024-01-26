import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductScreenController extends GetxController with StateMixin {
  final photoPageController = PageController(viewportFraction: 0.9);

  final photos = [
    'https://specials-images.forbesimg.com/imageserve/5e19e7a3da6d380006295c72//960x0.jpg?fit=scale',
    'https://images.unsplash.com/photo-1611930022073-b7a4ba5fcccd?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8cHJvZHVjdCUyMHBob3RvZ3JhcGh5fGVufDB8fDB8fHww',
    'https://images.unsplash.com/photo-1630688231126-dd36840fce51?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8cHJvZHVjdCUyMHBob3RvZ3JhcGh5fGVufDB8fDB8fHww',
  ];
}
