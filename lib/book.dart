import 'package:bookstore/page2.dart';
import 'package:flutter/material.dart';
import 'widgets/rating.dart';

class Book extends StatelessWidget {
  List<Map<String, dynamic>> books = [
    {
      'name': "The Famous Five",
      'author': "Enid Blyton",
      'img': "images/thefamousfive.jpg",
      'price': "\$21.44",
      'reviews': "121",
      'rating': 5.0,
      'des':
          "The Famous Five is a series of children's adventure novels written by English author Enid Blyton. The first book, Five on a Treasure Island, was published in 1942. The novels feature the adventures of a group of young children – Julian, Dick, Anne and Georgina – and their dog Timmy.",
    },
    {
      'name': "Eight O'Clock Tales",
      'author': "Enid Blyton",
      'img': "images/eightoclocktales.jpg",
      'price': "\$17.00",
      'reviews': "25",
      'rating': 4.5,
      'des':
          "Eleven magical short stories to enjoy round the clock from one of the world's best-loved children's authors, Enid Blyton.Join Twiddle the gnome on his search for his grumpy runaway donkey Kick-up. Find out what happens when the rocking-horse, teddy and all the other toys come alive.",
    },
    {
      'name': "The Enchanted Wood",
      'author': "Enid Blyton",
      'img': "images/theenchantedwood.jpg",
      'price': "\$11.90",
      'reviews': "12",
      'rating': 3.6,
      'des':
          "The Enchanted Wood is the first magical story in the Faraway Tree series by the world's best-loved children's author, Enid Blyton. Come on a journey full of magic and adventure in THE MAGIC FARAWAY TREE! When Joe, Beth and Frannie move to a new home, an Enchanted Wood is on their doorstep.",
    },
    {
      'name': "The Castle of Adventure",
      'author': "Enid Blyton",
      'img': "images/thecastleofadventure.jpg",
      'price': "\$13.85",
      'reviews': "15",
      'rating': 3.0,
      'des':
          "The Castle of Adventure is a popular children's book by Enid Blyton. It is the second book in The Adventure Series. The first edition of the book was illustrated by Stuart Tresilian.",
    },
    {
      'name': "The Naughtiest Girl Again",
      'author': "Enid Blyton",
      'img': "images/thenaughtiestgirlagain.jpg",
      'price': "\$10.25",
      'reviews': "10",
      'rating': 2.5,
      'des':
          "The Naughtiest Girl Again is the second novel in The Naughtiest Girl series of novels by Enid Blyton. It is about older and not-so-spoiled Elizabeth Allen is in her second term at Whyteleafe School.",
    },
    {
      'name': "The Secret Seven",
      'author': "Enid Blyton",
      'img': "images/thesecretseven.jpg",
      'price': "\$21.33",
      'reviews': "52",
      'rating': 4.9,
      'des':
          "The Secret Seven or Secret Seven Society is a fictional group of child detectives created by Enid Blyton. They appear in one of several adolescent detective series Blyton wrote. The Secret Seven consists of Peter, Janet, Pam, Barbara, Jack, Colin and George.",
    },
    {
      'name': "The Ship of Adventure",
      'author': "Enid Blyton",
      'img': "images/theshipofadventure.jpg",
      'price': "\$16.50",
      'reviews': "29",
      'rating': 2.1,
      'des':
          "All aboard for a quiet cruise among the Greek Islands! But when Philip's pet monkey breaks a birthday present, Philip, Dinah, Lucy-Ann and Jack are plunged into an exciting quest to find the lost treasure of the Andra - with some ruthless villains hot on their trail.",
    },
    {
      'name': "The Mountain of Adventure",
      'author': "Enid Blyton",
      'img': "images/themountainofadventure.jpg",
      'price': "\$14.22",
      'reviews': "25",
      'rating': 2.8,
      'des':
          "A peaceful vacation in the Welsh mountains seems sure to keep the children out of trouble, but the mystery of a rumbling mountain soon has them thirsty for more adventure.",
    },
    {
      'name': "The Wishing-Chair Again",
      'author': "Enid Blyton",
      'img': "images/thewishingchairagain.jpg",
      'price': "\$15.55",
      'reviews': "37",
      'rating': 1.5,
      'des':
          "Fly away to magical lands with Peter and Mollie in the second adventure in Enid Blyton's best-loved series! Perfect for children aged 5 and up.Mollie and Peter have a wonderful Wishing-Chair which they keep in their playroom at the bottom of the garden. While they are at Boarding School their pixie friend Chinky looks after it for them; but in the holidays the Chair grows wings and takes them on trips to all sorts of odd places.",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: books.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => Page2(books[index])));
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
                          image: AssetImage(books[index]['img']),
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
                          Rating(books[index]['rating']),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            books[index]['name'],
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Colors.grey[800]),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "By " + books[index]['author'],
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
                books[index]['price'],
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
