import 'package:flutter/material.dart';
import 'package:news_app_clone_ui/models/news_model.dart';

class DetailScreen extends StatefulWidget {
  DetailScreen(this.data, {Key? key}) : super(key: key);
  NewsData data;
  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.orange.shade900),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.data.title!,
              style: TextStyle(
                fontSize: 26.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              widget.data.author!,
              style: TextStyle(
                color: Colors.black54,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Hero(
              tag: "${widget.data.title}",
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30.0),
                child: Image.network(widget.data.urlToImage!),
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Text(widget.data.content!)
          ],
        ),
      ),
    );
  }
}
