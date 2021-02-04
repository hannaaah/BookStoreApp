import 'package:bookstore/book.dart';
import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  bool search = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 2.2,
          title: search
              ? TextField(
                  textCapitalization: TextCapitalization.words,
                  cursorColor: Colors.grey[800],
                  decoration: InputDecoration(
                    hintText: "Search a book",
                    hintStyle: TextStyle(color: Colors.grey[500], fontSize: 18),
                    contentPadding: EdgeInsets.only(top: 3),
                    border: InputBorder.none,
                  ),
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey[800],
                      fontWeight: FontWeight.w400),
                  onChanged: (text) {
                    Book.searchDetails(text);
                    setState(() {});
                  },
                )
              : Text(
                  "Enid Blyton",
                  style: TextStyle(color: Colors.grey[800]),
                ),
          centerTitle: true,
          leading: search
              ? Padding(
                  padding: const EdgeInsets.only(left: 15, top: 2),
                  child: FlatButton(
                      onPressed: () {},
                      child: Icon(
                        Icons.search_outlined,
                        color: Colors.grey[700],
                        size: 28,
                      )),
                )
              : FlatButton(
                  onPressed: () {},
                  child: Icon(
                    Icons.arrow_back_ios_rounded,
                    color: Colors.grey[700],
                  )),
          actions: [
            search
                ? InkWell(
                    child: SizedBox(
                      width: 60,
                      child: Icon(
                        Icons.cancel_rounded,
                        color: Colors.grey[700],
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        search = false;
                        Book.searchResults.clear();
                      });
                    })
                : InkWell(
                    onTap: () {
                      setState(() {
                        search = true;
                      });
                    },
                    child: SizedBox(
                      child: Icon(
                        Icons.search_outlined,
                        color: Colors.grey[600],
                        size: 30,
                      ),
                      width: 55,
                    )),
          ],
        ),
        body: Book(
          search: search,
        ));
  }
}
