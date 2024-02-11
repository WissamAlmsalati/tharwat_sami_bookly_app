import 'package:bookly/core/utils/style.dart';
import 'package:flutter/material.dart';
import 'best_saller_item_list.dart';
import 'coustom_app_bar.dart';
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
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
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
          ),
          SliverFillRemaining(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: BestSellerItemsList(),
            ),
          ),
        ],
      ),
    );
  }
}