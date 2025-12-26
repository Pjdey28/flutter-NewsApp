import 'package:flutter/material.dart';
class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('NewsApp', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.edit),
            onPressed: () {
              // Edit profile action
            },
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 70,
                  child: Icon(Icons.person_rounded, size: 70),
                ),
              ],
            ),
            SizedBox(height: 15),
            Text(
              '@pjdey',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            SizedBox(height: 20),
            Text('Pranjal Dey', style: TextStyle(fontSize: 16)),
            Text('sajalkumardey71@gmail.com', style: TextStyle(fontSize: 16)),
            Text('7980995938', style: TextStyle(fontSize: 16)),
            Text('28/08/2006', style: TextStyle(fontSize: 16)),

          ]
      ),
    ),
    );
  }
}