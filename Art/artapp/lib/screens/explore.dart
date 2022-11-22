import 'package:artapp/constans/colors.dart';
import 'package:artapp/constans/fonts.dart';
import 'package:artapp/model/cubism.dart';
import 'package:artapp/model/surrealism.dart';
import 'package:artapp/model/painting.dart';
import 'package:artapp/model/portrait_art.dart';
import 'package:artapp/model/water_color.dart';
import 'package:artapp/widgets/explore_list.dart';
import 'package:artapp/widgets/snackbar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Explore extends StatefulWidget {
  Explore({
    super.key,
  });

  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  int selectedCard = 1;
  @override
  Widget build(BuildContext context) {
    return SnackbarWidget(
        child: Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const CircleAvatar(
                  radius: 20,
                  backgroundColor: platinum,
                  child: CircleAvatar(
                      radius: 15,
                      foregroundColor: green,
                      backgroundColor: white,
                      child: Icon(Icons.menu)),
                ),
                const Spacer(),
                const Icon(Icons.search),
                const SizedBox(
                  width: 20,
                ),
                ClipOval(
                  child: Image.asset(
                    'assets/images/profile.jpg',
                    width: 50,
                    height: 50,
                  ),
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                width: 15,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  'Current Exhibitions',
                  style: ticketTitle,
                ),
              ),
            ],
          ),
          _cardList(context),
          if (selectedCard == 1)
            Painting()
          else if (selectedCard == 2)
            Surrealism()
          else if (selectedCard == 3)
            WaterColor()
          else if (selectedCard == 4)
            Cubism()
          else if (selectedCard == 5)
            PortraitArt()
        ],
      ),
    ));
  }

  Container _cardList(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      height: 45,
      width: MediaQuery.of(context).size.width,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                selectedCard = 1;
              });
            },
            child: ExploreList(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: selectedCard == 1 ? white : Colors.transparent,
                  width: 3.0,
                ),
                borderRadius: BorderRadius.circular(8.0),
              ),
              title: 'Painting',
              color: orange,
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                selectedCard = 2;
              });
            },
            child: ExploreList(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: selectedCard == 2 ? white : Colors.transparent,
                  width: 3.0,
                ),
                borderRadius: BorderRadius.circular(8.0),
              ),
              title: 'Surrealism',
              color: darkblue,
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                selectedCard = 3;
              });
            },
            child: ExploreList(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: selectedCard == 3 ? white : Colors.transparent,
                  width: 3.0,
                ),
                borderRadius: BorderRadius.circular(8.0),
              ),
              title: 'Water Color',
              color: red,
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                selectedCard = 4;
              });
            },
            child: ExploreList(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: selectedCard == 4 ? white : Colors.transparent,
                  width: 3.0,
                ),
                borderRadius: BorderRadius.circular(8.0),
              ),
              title: 'Cubism',
              color: indigo,
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                selectedCard = 5;
              });
            },
            child: ExploreList(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: selectedCard == 5 ? white : Colors.transparent,
                  width: 3.0,
                ),
                borderRadius: BorderRadius.circular(8.0),
              ),
              title: 'Portrait Art',
              color: yellow,
            ),
          ),
        ],
      ),
    );
  }
}
