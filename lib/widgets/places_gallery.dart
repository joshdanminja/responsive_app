import 'package:flutter/material.dart';

import '../responsive_util.dart';

import '../model/place.dart';
import '../model/places_data.dart';
import '../pages/place_details_page.dart';

class PlacesGallery extends StatelessWidget {
  final handlePlaceChanged;
  final showHorizontalGridView;

  PlacesGallery({this.handlePlaceChanged, this.showHorizontalGridView = false});

  @override
  Widget build(BuildContext context) {
    int itemCount;
    Axis axisDirection;
    if (showHorizontalGridView) {
      itemCount = 1;
      axisDirection = Axis.horizontal;
    } else {
      itemCount = 2;
      axisDirection = Axis.vertical;
    }
    return Container(
      color: Colors.grey[200],
      child: GridView.count(
        crossAxisCount: itemCount,
        scrollDirection: axisDirection,
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
        padding: EdgeInsets.all(8.0),
        childAspectRatio: 1 / 1.2,
        children: gridItems(),
      ),
    );
  }

  List<Widget> gridItems() {
    return Places()
        .getPlaces()
        .map<Widget>((place) => _GridItem(place, handlePlaceChanged))
        .toList();
  }
}

class _GridItem extends StatelessWidget {
  _GridItem(this.place, this.handlePlaceChanged);

  final Place place;
  final handlePlaceChanged;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 6,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
      child: InkWell(
        child: GridTile(
          footer: GridTileBar(
            backgroundColor: Colors.black45,
            title: Text(place.title),
            subtitle: Text(place.subtitle),
          ),
          child: Ink.image(
            image: AssetImage(place.image),
            fit: BoxFit.cover,
          ),
        ),
        onTap: () {
          switch (getScreenSize(MediaQuery.of(context).size.width)) {
            case ScreenSize.small:
            case ScreenSize.medium:
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PlaceDetailsPage(place)));
              break;
            case ScreenSize.large:
              handlePlaceChanged(place);
              break;
          }
        },
      ),
    );
  }
}
