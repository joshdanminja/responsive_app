import '../model/place.dart';
import 'place.dart';

class Places {
  List<String> getGospel() {
    return [
      'Islands of India',
      'The Streets',
      'Daily Activities',
      'Family Hangout',
      'Natural Products',
    ];
  }

  List<Place> getPlaces() {
    return [
      Place(
          image: 'assets/images/theRopes.png',
          title: 'The Ropes',
          subtitle: 'The ropes in an island, mostly used to fasten things'),
      Place(
          image: 'assets/images/theMarket.png',
          title: 'The Market',
          subtitle: 'People buying and selling goods in the market'),
      Place(
          image: 'assets/images/readingNotebook.png',
          title: 'In The Street',
          subtitle: 'People checking direction in a notebook'),
      Place(
          image: 'assets/images/alongTheRoad.png',
          title: 'Along The Road',
          subtitle: 'People in a queue on the road'),
      Place(
          image: 'assets/images/flowers.png',
          title: 'The Flowers',
          subtitle: 'The flowers in a vessel'),
      Place(
          image: 'assets/images/theSeaShore.png',
          title: 'The Sea Shore',
          subtitle: 'A fisherman with his fishing net along the sea shore'),
      Place(
          image: 'assets/images/peopleBuilding.png',
          title: 'People Building',
          subtitle: 'People during building'),
      Place(
          image: 'assets/images/theTemple.png',
          title: 'The Temple',
          subtitle: 'The complete built Temple'),
      Place(
          image: 'assets/images/theVeggies.png',
          title: 'The Vegetables',
          subtitle: 'The important vegetables used at homes'),
      Place(
          image: 'assets/images/familyPic.png',
          title: 'Family Along The Sea Shore',
          subtitle: 'The family taking pictures along the sea shore during low tides'),
    ];
  }

  String getPlacesDescription() {
    return
        'Tamil Nadu is a state in the south-eastern part of the Indian Peninsula. '
        'Tamil Nadu is previously a part of the United Madras Province, '
        'which was later partitioned based on languages. '
        'Tamil Nadu has more than 4,000 years of continuous cultural history. '
        'Tamil Nadu has some of the most remarkable temple architecture '
        'in the country, and a living tradition of '
        'music, dance, folk arts and fine arts. '
        'Tamil Nadu is well renowned for its temple towns and heritage sites, '
        ' hill stations, waterfalls, national parks, local cuisine '
        'and the natural environment and wildlife. '
        'The state has the largest tourism industry in India '
        'with an annual growth rate of 16%. '
        ' In 2015, the number of domestic arrivals was at 333.5 million '
        'making the state the most popular tourist destination in the country, '
        'and foreign arrivals numbered 4.68 million, the highest in the country, '
        'making it the most popular state for tourism in the country.';
  }
}
