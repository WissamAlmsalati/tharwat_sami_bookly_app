import '../utils/assets.dart';

class BookModel {
  String? label;
  String? authore;
  String? price;
  String? rating;
  String? image;

  BookModel({this.label, this.authore, this.price, this.rating, this.image});

   List<BookModel> booksList = [
    BookModel(
      label: 'Harry Potter And The Globet Fire',
      authore: 'J.k.Rolowing',
      price: '10',
      rating: '5',
  image: AsData.book1,
    ),
    BookModel(
      label: 'Harry Potter And The Globet Fire',
      authore: 'J.k.Rolowing',
      price: '10',
      rating: '5',
  image: AsData.book1,

  ),
    BookModel(
      label: 'Harry Potter And The Globet Fire',
      authore: 'J.k.Rolowing',
      price: '10',
      rating: '5',
  image: AsData.book1,

  ),
    BookModel(
      label: 'Harry Potter And The Globet Fire',
      authore: 'J.k.Rolowing',
      price: '10',
      rating: '5',
  image: AsData.book1,

  ),
  ];
}
