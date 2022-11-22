import 'package:artapp/constans/fonts.dart';
import 'package:artapp/widgets/homepage_button.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Column(
                children: [
                  Card(
                      child: Image.asset(
                    'assets/images/vertical.jpg',
                    fit: BoxFit.fitHeight,
                    width: 200,
                    height: 450,
                  )),
                ],
              ),
              Column(
                children: [
                  Card(
                      child: Image.asset(
                    'assets/images/horizontal.jpg',
                    fit: BoxFit.fitHeight,
                    width: 170,
                    height: 215,
                  )),
                  Card(
                      child: Image.asset(
                    'assets/images/horizontal2.jpg',
                    fit: BoxFit.fitHeight,
                    width: 170,
                    height: 227,
                  )),
                ],
              ),
            ],
          ),
          const Spacer(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Prepare To Learn History\nFrom Artworks',
                style: homepageTitle,
                textAlign: TextAlign.center,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  '''Buy tickets now to view the world's leading artworks and learn about their history.''',
                  style: homepageSubtitle,
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const HomepageButton(title: 'Artworks')
            ],
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
