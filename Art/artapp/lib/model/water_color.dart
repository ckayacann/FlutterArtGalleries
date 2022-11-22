import 'package:artapp/constans/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../constans/fonts.dart';

class WaterColor extends StatefulWidget {
  String? title;
  String? subTitle;
  String? imageAsset;
  String? artTitle;
  String? artSubtitle;
  WaterColor(
      {super.key,
      this.artSubtitle,
      this.artTitle,
      this.imageAsset,
      this.subTitle,
      this.title});

  @override
  State<WaterColor> createState() => _PaintingState();
}

List<WaterColor> watercolorList = [
  WaterColor(
    title: 'Winslow Homer',
    subTitle: 'The Gulf Stream',
    artSubtitle: 'Metropolitan Museum of Art, New York',
    artTitle: '1899',
    imageAsset:
        'http://totallyhistory.com/wp-content/uploads/2012/10/The-Gulf-Stream-by-Winslow-Homer.jpg',
  ),
  WaterColor(
    title: 'Albrecht Dürer',
    subTitle: 'Wing of a European Roller',
    artSubtitle: 'Albertina, Vienna',
    artTitle: '1512',
    imageAsset:
        'https://upload.wikimedia.org/wikipedia/commons/9/98/Duerer_wing_of_a_blue_roller.jpg',
  ),
  WaterColor(
    title: 'Paul Sandby',
    subTitle: 'Llandaff Cathedral',
    artSubtitle: 'Victoria & Albert Museum, London',
    artTitle: '1778',
    imageAsset:
        'https://i.pinimg.com/564x/16/6e/82/166e82d388f3ed238a783fae7527ff04.jpg',
  ),
];

class _PaintingState extends State<WaterColor> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(height: 10);
        },
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: watercolorList.length,
        itemBuilder: (context, index) {
          WaterColor model = watercolorList[index];
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Card(
                elevation: 5,
                child: Column(
                  children: [
                    ListTile(
                      leading: Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: Icon(Icons.brush, color: red),
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
                      trailing: FaIcon(FontAwesomeIcons.ticket, color: red),
                    ),
                  ],
                )),
          );
        },
      ),
    );
  }
}
