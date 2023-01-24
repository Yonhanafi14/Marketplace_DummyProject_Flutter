import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:working_apps_bwa/theme.dart';

class BoottomNavBar extends StatefulWidget {
  const BoottomNavBar({super.key});

  @override
  State<BoottomNavBar> createState() => _BoottomNavBarState();
}

class _BoottomNavBarState extends State<BoottomNavBar> {
  int selectedIndex =0;
  @override
  Widget build(BuildContext context) {
    icons(int index, String image){
      return GestureDetector(
        onTap: () {
          setState(() {
            selectedIndex = index;
          });
        },
        child: selectedIndex == index 
        ? Column(children: [
          Spacer(),
            Image.asset(image,width: 26, color: purple,),
            Spacer(),
            Container(
              width: 30,
              height: 3,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(1000),
                color: purple,
              ),
            )
        ],)
        : Image.asset(image,width: 26,
        color: grey,)  
      );
    }

    return Container(
      //alignment: Alignment.center,
      width: MediaQuery.of(context).size.width-(2*18),
      height: 65,
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(23),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          icons(0, 'assets/ic_data.png'),
          icons(1, 'assets/ic_myrewards.png'),
          icons(2, 'assets/ic_travel.png'),
          icons(3, 'assets/ic_food.png'),
        ],
      ),
    );
  }
}