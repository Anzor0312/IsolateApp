import 'package:flutter/material.dart';
import 'package:newsapikey/model/news_model.dart';

// ignore: must_be_immutable
class InfoPage extends StatelessWidget {
Articles data;
   InfoPage({super.key, required this.data});
  
  @override
  Widget build(BuildContext context) {
    
    Size size=MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height:size.height*0.35,
            decoration: BoxDecoration(
              image: DecorationImage(image: NetworkImage(data.urlToImage.toString()),fit: BoxFit.fill)
            ),
          ),
          SizedBox(
            width: double.infinity,
            height: size.height*0.65,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(data.description.toString(),style: const TextStyle(fontSize: 20),),
                Text(data.author.toString(),style: const TextStyle(fontSize: 35),),
              ],
            ),
          )
        

        ],
      ),
    );
  }
}
