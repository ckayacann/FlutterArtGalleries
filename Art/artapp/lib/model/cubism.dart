import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../constans/colors.dart';
import '../constans/fonts.dart';

class Cubism extends StatefulWidget {
  String? title;
  String? subTitle;
  String? imageAsset;
  String? artTitle;
  String? artSubtitle;
  Cubism(
      {super.key,
      this.artSubtitle,
      this.artTitle,
      this.imageAsset,
      this.subTitle,
      this.title});

  @override
  State<Cubism> createState() => _PaintingState();
}

List<Cubism> cubismList = [
  Cubism(
    title: 'Pablo Picasso',
    subTitle: 'The Weeping Woman',
    artSubtitle: 'Tate Gallery, Liverpool',
    artTitle: '1937',
    imageAsset:
        'https://upload.wikimedia.org/wikipedia/en/1/14/Picasso_The_Weeping_Woman_Tate_identifier_T05010_10.jpg',
  ),
  Cubism(
    title: 'Marc Chagall',
    subTitle: 'Green Violinist',
    artSubtitle: 'Solomon R. Guggenheim Museum, New York',
    artTitle: '1924',
    imageAsset:
        'https://www.guggenheim.org/wp-content/uploads/1923/01/37.446_ph_web-1.jpg',
  ),
  Cubism(
    title: 'Jean Metzinger',
    subTitle: 'Tea Time',
    artSubtitle: 'Museum of Art, Philadelphia',
    artTitle: '1911',
    imageAsset:
        'https://upload.wikimedia.org/wikipedia/en/thumb/5/58/Jean_Metzinger%2C_Le_go%C3%BBter%2C_Tea_Time%2C_1911%2C_75.9_x_70.2_cm%2C_Philadelphia_Museum_of_Art.jpg/640px-Jean_Metzinger%2C_Le_go%C3%BBter%2C_Tea_Time%2C_1911%2C_75.9_x_70.2_cm%2C_Philadelphia_Museum_of_Art.jpg',
  ),
];

class _PaintingState extends State<Cubism> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(height: 10);
        },
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: cubismList.length,
        itemBuilder: (context, index) {
          Cubism model = cubismList[index];
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Card(
                elevation: 5,
                child: Column(
                  children: [
                    ListTile(
                      leading: Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: Icon(Icons.brush, color: indigo),
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
                      trailing: FaIcon(FontAwesomeIcons.ticket, color: indigo),
                    ),
                  ],
                )),
          );
        },
      ),
    );
  }
}
