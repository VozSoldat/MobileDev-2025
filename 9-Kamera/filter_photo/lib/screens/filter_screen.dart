import 'dart:io';

import 'package:filter_photo/widget/filter_carousel.dart';
import 'package:flutter/material.dart';

class FilterScreen extends StatelessWidget {
  final File imageFile;

  const FilterScreen({super.key, required this.imageFile});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Filter')),
      body: PhotoFilterCarousel(imageProvider: FileImage(imageFile)),
    );
  }
}
