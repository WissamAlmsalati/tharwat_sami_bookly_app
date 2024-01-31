import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'coustom_app_bar.dart';
import 'coustom_listview_images.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Column(
        children: [
          CoustomAppBar(),
          FeaturedBooksListView()
        ],
      ),
    );
  }
}

class FeaturedBooksListView extends StatefulWidget {
  const FeaturedBooksListView({super.key});

  @override
  State<FeaturedBooksListView> createState() => _FeaturedBooksListViewState();
}

class _FeaturedBooksListViewState extends State<FeaturedBooksListView> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .25,

      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context,index){

      return const Padding(
        padding:   EdgeInsets.only(left: 6,right: 6),
        child: CoustomPhotoListView(),
      );
      }
      ),
    );
  }
}

