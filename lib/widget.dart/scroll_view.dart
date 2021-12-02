import 'package:flutter/material.dart';

class CustomeScrollViewWidget extends StatefulWidget {
  final List<String> bookTitle;

  const CustomeScrollViewWidget({this.bookTitle});

  @override
  _CustomeScrollViewWidgetState createState() =>
      _CustomeScrollViewWidgetState();
}

class _CustomeScrollViewWidgetState extends State<CustomeScrollViewWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Books'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => ListTile(
          title: Text(widget.bookTitle[index]),
        ),
        itemCount: widget.bookTitle.length,
      ),
    );
  }
}
