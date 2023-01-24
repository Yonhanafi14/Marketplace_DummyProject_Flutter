import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:working_apps_bwa/theme.dart';

class Events extends StatelessWidget {
  final int id;
  final String title;
  final String subTitle;
  final String image;
  const Events(
      {super.key,
      required this.id,
      required this.title,
      required this.subTitle,
      required this.image});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              width: 70,
              height: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  image,
                  width: 80,
                  fit: BoxFit.cover,
                ),
              ),
            ),
        SizedBox(
          width: 16,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: mediumText.copyWith(fontSize: 18),
            ),
            Text(
              subTitle,
              style: lightText.copyWith(
                color: grey,
              ),
            ),
          ],
        ),
         ],
        ),
        Image.asset(
          'assets/arrow_right.png',
          width: 30,
          color: grey,
        ),
      ],
    );
  }
}
