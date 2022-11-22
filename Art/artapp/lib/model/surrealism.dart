import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../constans/colors.dart';
import '../constans/fonts.dart';

class Surrealism extends StatefulWidget {
  String? title;
  String? subTitle;
  String? imageAsset;
  String? artTitle;
  String? artSubtitle;
  Surrealism(
      {super.key,
      this.artSubtitle,
      this.artTitle,
      this.imageAsset,
      this.subTitle,
      this.title});

  @override
  State<Surrealism> createState() => _PaintingState();
}

List<Surrealism> surrealismList = [
  Surrealism(
    title: 'Max Ernst',
    subTitle: 'The Triumph of Surrealism',
    artSubtitle: 'Galerie de Beaux-Arts, Paris.',
    artTitle: '1937',
    imageAsset:
        'https://www.max-ernst.com/images/paintings/the-triumph-of-surrealism.jpg',
  ),
  Surrealism(
    title: 'René Magritte',
    subTitle: 'The Son of Man',
    artSubtitle: 'The Museum of Modern Art, San Francisco',
    artTitle: '1964',
    imageAsset:
        'https://www.artymag.ir/en/media/cache/7f/36/7f36ba4c540dcd6b53d14a5b1f75ff96.jpg',
  ),
  Surrealism(
    title: 'Salvador Dali',
    subTitle: 'The Persistence of Memory',
    artSubtitle: 'The Museum of Modern Art, New York',
    artTitle: '1931',
    imageAsset:
        'https://uploads6.wikiart.org/images/salvador-dali/the-persistence-of-memory-1931.jpg!Large.jpg',
  ),
];

class _PaintingState extends State<Surrealism> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(height: 10);
        },
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: surrealismList.length,
        itemBuilder: (context, index) {
          Surrealism model = surrealismList[index];
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Card(
                elevation: 5,
                child: Column(
                  children: [
                    ListTile(
                      leading: Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: Icon(Icons.brush, color: darkblue),
                      ),
                      title: Text(
                        model.title!,
                        style: artTitle,
                      ),
                      subtitle: Text(
                        model.subTitle!,
                        style: artSubtitle,
                      ),
                    ),
                    Image.network(model.imageAsset!),
                    ListTile(
                      title: Text(
                        model.artTitle!,
                        style: artTitle,
                      ),
                      subtitle: Text(
                        model.artSubtitle!,
                        style: artSubtitle,
                      ),
                      trailing:
                          FaIcon(FontAwesomeIcons.ticket, color: darkblue),
                    ),
                  ],
                )),
          );
        },
      ),
    );
  }
}
