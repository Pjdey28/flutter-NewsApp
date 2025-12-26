import 'package:flutter/material.dart';

class ArticleDetail extends StatelessWidget {
  final Map<String, dynamic> article;

  const ArticleDetail({super.key, required this.article});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:const Text("NewsApp"),titleTextStyle: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(padding: const EdgeInsets.all(10.0),
              child: Stack(
                children: [
                  Image.network(article['urlToImage'], fit: BoxFit.cover),
                  Positioned(
                  top: 10,
                    left: 10,
                    child: Text(article['source']['name'], style: const TextStyle(fontSize: 16, color: Colors.white),),
                  )
                ],
              ),
              ),
              const SizedBox(height: 10),
              Padding(
          padding: const EdgeInsets.all(16.0),
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  article['title'],
                  style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                Text(
                  article['description'],
                style: const TextStyle(fontSize: 16),
              ),
              Text('Author: ${article['author']}'),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Source: ${article['source']['name']}'),
                  Text('Published At: ${article['publishedAt'].toString().substring(0,10)}'),
                ],
              ),
            ],
          ),
        ),
            ],
    ),
      ),
    );
  }
}