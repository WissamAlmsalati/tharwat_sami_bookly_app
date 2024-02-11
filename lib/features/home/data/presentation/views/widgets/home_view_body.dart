import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/core/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'coustom_app_bar.dart';
import 'coustom_listview_images.dart';
import 'featured_listview_wedget.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CoustomAppBar(),
            SizedBox(height: 20),
            FeaturedBooksListView(),
            SizedBox(height: 40),
            Text(
              "Best Seller",
              style: Style.titleMediam,
            ),
          ],
        ),
      ),
    );
  }
}
