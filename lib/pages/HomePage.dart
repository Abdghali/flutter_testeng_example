import 'package:flutter/material.dart';
import 'package:testingexample1/modules/Book.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isChecked = false;

  List<Book> listOfBooks = [
    Book(bookName: "Book 1", isCheked: false),
    Book(bookName: "Book 2", isCheked: true),
    Book(bookName: "Book 3", isCheked: false),
    Book(bookName: "Book 4", isCheked: false),
    Book(bookName: "Book 5", isCheked: true),
    Book(bookName: "Book 6", isCheked: true),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: SizedBox(
        height: 300,
        child: ListView.builder(
            itemCount: listOfBooks.length,
            itemBuilder: (context, index) => CheckboxListTile(
                  key: Key('checkboxlisttile'),
                  value: listOfBooks[index].isCheked,
                  title: Text(listOfBooks[index].bookName.toString()),
                  onChanged: (value) {
                    setState(() {
                      listOfBooks[index].isCheked = value;
                    });
                  },
                  secondary: const Icon(Icons.hourglass_empty),
                )),
      )),
    );
  }
}
