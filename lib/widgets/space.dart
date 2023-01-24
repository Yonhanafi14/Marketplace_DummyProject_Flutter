import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:working_apps_bwa/theme.dart';

class Space extends StatelessWidget {
  final int id;
  final String name;
  final int rating;
  final int price;
  final String region;
  final String image;
  const Space(
      {super.key,
      required this.id,
      required this.name,
      required this.rating,
      required this.price,
      required this.region,
      required this.image});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          alignment: Alignment.topRight,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                image,
                width: 130,
                height: 110,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              width: 70,
              height: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                  topRight: Radius.circular(20),
                ),
                color: purple,
              ),
              child: Row(children: [
                SizedBox(width: 15,),
                Image.asset('assets/star1.png',
                width: 18,),
                SizedBox(width: 2,),
                Text('${rating}/5',
                style: mediumText.copyWith(
                  fontSize: 13,color: whiteColor),),
              ],),
            ),
             ],
        ),
            SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                   style: mediumText.copyWith(fontSize: 16)),
                RichText(
                  text: TextSpan(children: [
                    TextSpan(
                      text: '\$${price}',
                      style: mediumText.copyWith(fontSize: 16,
                      color: purple),
                    ),
                    TextSpan(
                      text: '/ hour',
                      style: lightText.copyWith(fontSize: 16, color: grey)
                    ),
                  ])),
                  SizedBox(height: 16,),
                  Text(region,style: lightText.copyWith(color: grey),)
              ],
            )
         
      ],
    );
  }
}
