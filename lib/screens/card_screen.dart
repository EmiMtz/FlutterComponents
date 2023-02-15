import 'package:flutter/material.dart';
import 'package:fl_components/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  const Text('Card Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          CustomCardTypeOne(),
          SizedBox(height: 20,),
          CustomCardTypeTwo(imageURL: 'https://a.espncdn.com/combiner/i?img=/i/teamlogos/nfl/500/kc.png',),
          SizedBox(height: 20,),
          CustomCardTypeTwo(imageURL: 'https://images2.minutemediacdn.com/image/fetch/w_2000,h_2000,c_fit/https%3A%2F%2Fkckingdom.com%2Fwp-content%2Fuploads%2Fgetty-images%2F2016%2F04%2F1188315447.jpeg',),
          SizedBox(height: 20,),
          CustomCardTypeTwo(
            imageURL: 'https://library.sportingnews.com/styles/crop_style_16_9_mobile_2x/s3/2023-01/Isiah%20Pacheco%20012823.jpg?itok=BnnlfPkh',
            nameCard: 'This is Isahia Pacheco',
          ),
          SizedBox(height: 100,)
        ],
      ),
    );
  }
}

