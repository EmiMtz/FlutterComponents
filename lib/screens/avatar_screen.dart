import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
   
  const AvatarScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Avatars'),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 5),
            child: CircleAvatar(
              child: const Text('PM'),
              backgroundColor: Colors.red[900],
            ),
          )
        ],
      ),
      body: const Center(
         child: CircleAvatar(
          maxRadius: 150,
          backgroundImage: NetworkImage('https://cdn.dribbble.com/users/1733185/screenshots/9805881/patrick_mahomes_4x.png'),
         ),
      ),
    );
  }
}