import 'package:bookstore/widgets/rating.dart';
import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  final Map<String, dynamic> book;

  Page2(this.book);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 2,
          title: Text(
            "Book Detail",
            style: TextStyle(color: Colors.grey[800]),
          ),
          centerTitle: true,
          leading: FlatButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back_ios_rounded,
              color: Colors.grey[700],
            ),
          ),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 35,
            ),
            SizedBox(
              height: 300,
              width: 400,
              child: ClipRRect(
                child: Image(
                  fit: BoxFit.contain,
                  image: AssetImage(book['img']),
                ),
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              book['name'],
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.grey[800]),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              book['author'],
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                  fontSize: 15),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                SizedBox(
                  width: 120,
                ),
                Rating(book['rating']),
                Padding(
                  padding: const EdgeInsets.only(top: 8, left: 15, bottom: 8),
                  child: Text(
                    book['reviews'] + " reviews",
                    style: TextStyle(
                        color: Colors.blue[500], fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Divider(
              height: 3,
              thickness: 1.1,
              color: Colors.grey[400],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 15,
                right: 12,
              ),
              child: Text(
                book['des'],
                style: TextStyle(
                    letterSpacing: 0.4, color: Colors.grey[700], fontSize: 15),
              ),
            )
          ],
        ));
  }
}
