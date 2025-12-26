import 'package:flutter/material.dart';
import 'article.dart';
import 'profile.dart';
import 'detail.dart';
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<String> categories =  [
    'Tech',
    'Sports',
    'Cinema',
  ];
int? _selectedChoiceIndex;
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('NewsApp', style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
        actions: [
          IconButton(
            icon: const Icon(Icons.person_rounded),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const Profile()));
            },
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
              Padding(
              padding: EdgeInsets.all(15.0),
               child: Wrap(
            spacing: 10.0,
            children: List<Widget>.generate(categories.length, (int index) {
              bool isSelected = _selectedChoiceIndex == index;
            return ChoiceChip(
                showCheckmark: false,
                avatarBorder: const CircleBorder(),
                side: BorderSide(color: Colors.black87),
                label: Text(categories[index], style: TextStyle(color: isSelected ?Colors.white:Colors.black87),),
              selected: _selectedChoiceIndex == index, //
              selectedColor: Colors.black87,
              onSelected: (bool selected) { //
                setState(() {
                  if (selected) {
                    _selectedChoiceIndex = index;
                  }
                });
              },
            );
          }).toList()
        
      ),
    ),
    
        Expanded(child: 
        ListView.builder(
          itemCount: articles.length ,
          itemBuilder:(context, index) {
            final article=articles[index];
            return GestureDetector(
              onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ArticleDetail(article: article)));
                },
              child: Card(
              margin: EdgeInsets.all(10.0),
              child: Column(
                children:[Stack(
                children: [Image.network(article["urlToImage"],width:340,height:240, fit: BoxFit.fill),
                Positioned(
                  top: 10,
                    left: 10,
                    child: Text(article['source']['name'], style: const TextStyle(fontSize: 12, color: Colors.white),),
                  )] ,),
                Padding(padding: EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                children: [Text(article["title"], style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),),
                  SizedBox(height: 10.0),
                  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween  ,
                  children: [ Text("By ${article["author"]}"),Text("${(DateTime.now().difference(DateTime.parse(article["publishedAt"]).toLocal())).inDays} days ago"),],
                ),
                
               
                ],
                )
                ),
                ]
          
              ),
            ),
            );
          }
        ),
      ),
          ]
    )
      )
    );
  }
}