import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/cupertino.dart';
import 'package:working_apps_bwa/theme.dart';

class Countries extends StatelessWidget {
  final int id;
  final String name;
  final String image;
  bool? isFavorite;
  Countries(
      {super.key,
      required this.id,
      required this.name,
      required this.image,
      this.isFavorite});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 150,
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.topRight,
            children: [
              ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(18)),
            child: Image.asset(image,width: 150, height: 110,
            fit: BoxFit.cover,),
          ),
          isFavorite == true ? 
          Container(
            width: 50,
            height: 30,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(25),
                topRight: Radius.circular(16)),
              color: purple,
            ),
            child: Center(
              child: Image.asset('assets/star1.png',
              width: 22,
              height: 22,),
            ),
          ) :Container(),
            ],
          ),
          
          
          SizedBox(height: 11,),
          Text(name,style: mediumText.copyWith(fontSize: 16),)
        ],
      ),
    );
  }
}
