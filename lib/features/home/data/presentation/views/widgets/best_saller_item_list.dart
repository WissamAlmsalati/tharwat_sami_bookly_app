import 'package:flutter/cupertino.dart';

import 'best_seller_item.dart';

class BestSellerItemsList extends StatelessWidget {
  const BestSellerItemsList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
        itemCount: 30,
        itemBuilder: (context,index){
          return BestSaller();
        });
  }
}

