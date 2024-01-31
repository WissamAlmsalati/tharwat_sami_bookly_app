import 'package:flutter/material.dart';

import '../../../../../../core/utils/assets.dart';

class CoustomPhotoListView extends StatelessWidget {
  const CoustomPhotoListView({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.8 / 4,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.red,
          image: DecorationImage(
            image: AssetImage(AsData.book1),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
