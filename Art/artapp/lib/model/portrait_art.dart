import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../constans/colors.dart';
import '../constans/fonts.dart';

class PortraitArt extends StatefulWidget {
  String? title;
  String? subTitle;
  String? imageAsset;
  String? artTitle;
  String? artSubtitle;
  PortraitArt(
      {super.key,
      this.artSubtitle,
      this.artTitle,
      this.imageAsset,
      this.subTitle,
      this.title});

  @override
  State<PortraitArt> createState() => _PaintingState();
}

List<PortraitArt> portraitArtList = [
  PortraitArt(
    title: 'Grant Wood',
    subTitle: 'American Gothic',
    artSubtitle: 'Art Institute of Chicago, Chicago',
    artTitle: '1930',
    imageAsset:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/c/cc/Grant_Wood_-_American_Gothic_-_Google_Art_Project.jpg/1200px-Grant_Wood_-_American_Gothic_-_Google_Art_Project.jpg',
  ),
  PortraitArt(
    title: 'Rembrandt',
    subTitle: 'The Night Watch',
    artSubtitle: 'Rijksmuseum, Amsterdam',
    artTitle: '1642',
    imageAsset: 'https://ychef.files.bbci.co.uk/976x549/p070wbmx.jpg',
  ),
  PortraitArt(
    title: 'fqfqww',
    subTitle: 'The Arnolfini Portrait',
    artSubtitle: 'The National Gallery, London',
    artTitle: '1434',
    imageAsset:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/5/53/The_Arnolfini_portrait_%281434%29.jpg/1200px-The_Arnolfini_portrait_%281434%29.jpg',
  ),
];

class _PaintingState extends State<PortraitArt> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(height: 10);
        },
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: portraitArtList.length,
        itemBuilder: (context, index) {
          PortraitArt model = portraitArtList[index];
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Card(
                elevation: 5,
                child: Column(
                  children: [
                    ListTile(
                      leading: Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: Icon(Icons.brush, color: yellow),
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
                      trailing: FaIcon(FontAwesomeIcons.ticket, color: yellow),
                    ),
                  ],
                )),
          );
        },
      ),
    );
  }
}
