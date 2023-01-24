import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:working_apps_bwa/theme.dart';
import 'package:working_apps_bwa/widgets/bottom_navbar.dart';
import 'package:working_apps_bwa/widgets/countries.dart';
import 'package:working_apps_bwa/widgets/event.dart';
import 'package:working_apps_bwa/widgets/space.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)),
      home: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 24, right: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("BMX KING",
                                  style: semiboldText.copyWith(fontSize: 24)),
                              Text(
                                'Where part Build',
                                style: lightText.copyWith(
                                    fontSize: 16, color: grey),
                              )
                            ],
                          ),
                          Image.asset(
                            'assets/img_friend4.png',
                            width: 100,
                            height: 100,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Container(
                        width: 340,
                        height: 50,
                        child: TextField(
                          //scrool padding tidak di pakai tidak apa apa
                          scrollPadding: EdgeInsets.symmetric(
                            horizontal: 13,
                          ),
                          decoration: InputDecoration(
                              hintText: 'Search...',
                              labelStyle: lightText.copyWith(
                                color: Color(0xffA5AAB5),
                              ),
                              prefixIcon: Icon(
                                Icons.search,
                                color: Color(0xffA5AAB5),
                              ),
                              hintStyle: mediumText.copyWith(fontSize: 16),
                              filled: true,
                              fillColor: whiteColor,
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide.none,
                              )),
                        ),
                      ),
                      Text(
                        'Popular Parts',
                        style: mediumText.copyWith(fontSize: 16),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 26,
                ),
                Container(
                  height: 160,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      SizedBox(
                        width: 26,
                      ),
                      Countries(
                          isFavorite: false,
                          id: 1,
                          name: "Germany",
                          image: 'assets/Country3.jpg'),
                      SizedBox(
                        width: 16,
                      ),
                      Countries(
                          isFavorite: true,
                          id: 2,
                          name: "Bandung",
                          image: 'assets/Country2.jpg'),
                      SizedBox(
                        width: 16,
                      ),
                      Countries(
                          isFavorite: false,
                          id: 3,
                          name: "Indonesia",
                          image: 'assets/Country1.jpg'),
                    ],
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 26, right: 26),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Recommended Space',
                        style: mediumText.copyWith(fontSize: 16),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Space(
                          id: 1,
                          name: 'Mamat Sober',
                          rating: 4,
                          price: 52,
                          region: 'Bandung, Germany',
                          image: 'assets/Country1.jpg'),
                      SizedBox(
                        height: 30,
                      ),
                      Space(
                          id: 1,
                          name: 'Rumah Nenek',
                          rating: 5,
                          price: 11,
                          region: 'Seattle, Bogor',
                          image: 'assets/Country2.jpg'),
                      SizedBox(
                        height: 30,
                      ),
                      Space(
                          id: 1,
                          name: 'He mat She X',
                          rating: 3,
                          price: 20,
                          region: 'Jakarta, Indonesia',
                          image: 'assets/Country3.jpg'),
                      SizedBox(
                        height: 30,
                      ),
                      Center(
                        child: Container(
                          padding: EdgeInsets.only(left: 20),
                          height: 100,
                          width: 333,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(23),
                            color: cream,
                          ),
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/profil.png',
                                width: 70,
                              ),
                              SizedBox(
                                width: 16,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Use AI for better place',
                                    style: mediumText.copyWith(fontSize: 16),
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Text(
                                    'Learn More',
                                    style: lightText.copyWith(
                                      fontSize: 13,
                                      color: Color(0xffFF8650),
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 22,
                      ),
                      Text(
                        'OnGoing Events',
                        style: mediumText.copyWith(fontSize: 16),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Events(
                          id: 1,
                          title: 'Basic Mencintaimu',
                          subTitle: 'StarSpace, IkanBurak',
                          image: 'assets/Country1.jpg'),
                      Events(
                          id: 1,
                          title: 'Bapack Bapack Xixixi',
                          subTitle: 'SiliconValley, Empangmancing',
                          image: 'assets/Country3.jpg'),
                          SizedBox(height: 130,)
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: BoottomNavBar(),
      ),
    );
  }
}
