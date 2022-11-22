import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../constans/colors.dart';
import '../constans/fonts.dart';

class Painting extends StatefulWidget {
  String? title;
  String? subTitle;
  String? imageAsset;
  String? artTitle;
  String? artSubtitle;
  Painting(
      {super.key,
      this.artSubtitle,
      this.artTitle,
      this.imageAsset,
      this.subTitle,
      this.title});

  @override
  State<Painting> createState() => _PaintingState();
}

List<Painting> paintingList = [
  Painting(
    title: 'Giacomo Amiconi',
    subTitle: 'Jacob and Rachel',
    artSubtitle: 'National Museum, Warsaw',
    artTitle: '18th Century',
    imageAsset:
        'https://upload.wikimedia.org/wikipedia/commons/0/0a/Amigoni_Jacob_and_Rachel.jpg',
  ),
  Painting(
    title: 'Isack van Ostade',
    subTitle: 'Peasants Outside a Farmhouse Butchering Pork',
    artSubtitle: 'J. Paul Getty Museum, Los Angeles ',
    artTitle: '1641',
    imageAsset:
        'https://static01.nyt.com/images/2015/12/23/arts/23GETTY1/23GETTY1-superJumbo.jpg?quality=75&auto=webp',
  ),
  Painting(
    title: 'Orazio Gentileschi',
    subTitle: 'Finding of Moses',
    artSubtitle: 'National Gallery, London',
    artTitle: 'Early 1630s',
    imageAsset:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/3/3c/Orazio_Gentileschi_-_Mos%C3%A8_salvato_dalle_acque_%28National_Gallery%2C_London%29.jpg/703px-Orazio_Gentileschi_-_Mos%C3%A8_salvato_dalle_acque_%28National_Gallery%2C_London%29.jpg',
  ),
];

class _PaintingState extends State<Painting> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(height: 10);
        },
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: paintingList.length,
        itemBuilder: (context, index) {
          Painting model = paintingList[index];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
                elevation: 5,
                child: Column(
                  children: [
                    ListTile(
                      leading: Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: Icon(Icons.brush, color: orange),
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
                    Image.network(
                      model.imageAsset!,
                    ),
                    ListTile(
                      title: Text(
                        model.artTitle!,
                        style: artTitle,
                      ),
                      subtitle: Text(
                        model.artSubtitle!,
                        style: artSubtitle,
                      ),
                      trailing: FaIcon(FontAwesomeIcons.ticket, color: orange),
                    ),
                  ],
                )),
          );
        },
      ),
    );
  }
}
