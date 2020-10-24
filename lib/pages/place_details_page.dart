import 'package:flutter/material.dart';

import '../model/place.dart';
import '../widgets/place_details.dart';

class PlaceDetailsPage extends StatelessWidget {
  final Place place;

  PlaceDetailsPage(this.place);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(place.subtitle),
        centerTitle: true,
      ),
      body: PlaceDetails(place: place),
    );
  }
}
