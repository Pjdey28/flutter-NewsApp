import 'package:flutter/material.dart';
class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('NewsApp', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              // Edit profile action
            },
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: TextField(
          decoration: InputDecoration(
            hintText: 'Search here...',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25.0),
              borderSide: const BorderSide(color: Colors.black87),
            ),
            suffixIcon: Padding(padding: EdgeInsets.all(7.0), child: CircleAvatar(radius: 10, backgroundColor: Colors.black87, child: Icon(Icons.arrow_right_alt, size: 30,color: Colors.white,),)),
          ),
        ),
      ),
    ),
    );
  }
}