import 'package:bookstore/page2.dart';
import 'package:flutter/material.dart';
import 'widgets/rating.dart';
import 'bookdetails.dart';

class Book extends StatelessWidget {
  final bool search;
  Book({this.search});

  static List<Map<String, dynamic>> searchResults = [];

  static void searchDetails(String text) {
    searchResults.clear();
    for (int i = 0; i < BookDetails.books.length; i++) {
      if (BookDetails.books[i]['name'].contains(text)) {
        searchResults.add(BookDetails.books[i]);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: search ? searchResults.length : BookDetails.books.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Page2(search
                        ? searchResults[index]
                        : BookDetails.books[index])));
          },
          child: Stack(children: [
            Container(
              height: 130,
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Image(
                          image: AssetImage(search
                              ? searchResults[index]['img']
                              : BookDetails.books[index]['img']),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Rating(search
                              ? searchResults[index]['rating']
                              : BookDetails.books[index]['rating']),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            search
                                ? searchResults[index]['name']
                                : BookDetails.books[index]['name'],
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Colors.grey[800]),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "By " +
                                (search
                                    ? searchResults[index]['author']
                                    : BookDetails.books[index]['author']),
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey,
                                fontSize: 13),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 90,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              child: Text(
                search
                    ? searchResults[index]['price']
                    : BookDetails.books[index]['price'],
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.green[400]),
              ),
              top: 24,
              right: 20,
            )
          ]),
        );
      },
    );
  }
}
