import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../../core/moudels/book_model.dart';
import '../../../../../../core/utils/assets.dart';
import '../../../../../../core/utils/style.dart';


class BestSaller extends StatelessWidget {
  const BestSaller({super.key});

  @override
  Widget build(BuildContext context) {
    BookModel bookmodel = BookModel();
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Container(
        height: 130,
        width: double.infinity,
        decoration:const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Row(
          children: [
            Container(
                decoration:const BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Image.asset(
                  AsData.book1,
                  height: 150,
                  width: 100,
                  fit: BoxFit.fill,
                )),
            const   SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width*.5,
                  child: Text(bookmodel.bookName,LA
                      maxLines: 5,
                      overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.benne(fontSize: 26)),
                ),
             const   Text("J.k.Rolowing", style: TextStyle(color: Colors.grey)),
                SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.6,
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Price", style: Style.titleMediam),
                      Text("Rating", style: Style.titleMediam),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
