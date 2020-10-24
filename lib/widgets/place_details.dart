import 'package:flutter/material.dart';

import '../model/place.dart';
import '../model/places_data.dart';

class PlaceDetails extends StatelessWidget {
  final Place place;
  PlaceDetails({this.place});

  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth >= 600.0) {
          return largeWidget(color);
        } else {
          return smallWidget(color);
        }
      },
    );
  }

  Widget largeWidget(Color color) {
    return SingleChildScrollView(
      child: Card(
        clipBehavior: Clip.antiAlias,
        elevation: 6,
        margin: EdgeInsets.all(10.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                children: [
                  Image.asset(
                    place.image,
                    fit: BoxFit.cover
                  ),
                  titleSection(),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 24.0),
                    child: buttonSection(color),
                  ),
                  textSection()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget smallWidget(Color color) {
    return ListView(
      children: [
        Image.asset(
          place.image,
          height: 320,
          fit: BoxFit.cover,
        ),
        titleSection(),
        buttonSection(color),
        textSection()
      ],
    );
  }

  Widget titleSection() {
    return Container(
      padding: const EdgeInsets.all(24),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    place.title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  place.subtitle,
                  style: TextStyle(color: Colors.grey[500]),
                ),
              ],
            ),
          ),
          Icon(Icons.star, color: Colors.red[500]),
          Padding(padding: const EdgeInsets.only(left: 4.0), child: Text('41')),
        ],
      ),
    );
  }

  Widget buttonSection(Color color) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        buttonColumn(color, Icons.call, 'CALL'),
        buttonColumn(color, Icons.near_me, 'ROUTE'),
        buttonColumn(color, Icons.share, 'SHARE')
      ],
    );
  }

  Widget textSection() {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Text(Places().getPlacesDescription()),
    );
  }

  Widget buttonColumn(Color color, IconData icon, String label) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: color,
            ),
            Container(
              margin: const EdgeInsets.only(top: 8),
              child: Text(
                label,
                style: TextStyle(fontSize: 12, color: color),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
