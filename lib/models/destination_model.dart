import 'activity_model.dart';

class Destination {
  String imageUrl;
  String city;
  String country;
  String description;
  List<Activity> activities;

  Destination({
  this.imageUrl,
  this.city,
  this.country,
  this.description,
  this.activities,
  });
}

List<Activity> activities = [
  Activity(
    imageUrl: 'assets/images/a1.jpg',
    name: 'Athirappily',
    type: 'Sightseeing',
    startTimes:['9:00 am','11:00 am'],
    rating: 3,
    price: 30,
  ),
  Activity(
    imageUrl: 'assets/images/a2.jpg',
    name: 'kannya kumari',
    type: 'park',
    startTimes:['10:00 am','4:00 pm'],
    rating: 5,
    price: 50,
  ),
  Activity(
    imageUrl: 'assets/images/a3.jpg',
    name: 'Taj mahal',
    type: 'Sightseeing',
    startTimes:['9:00 am','1:00 pm'],
    rating: 4,
    price: 60,
  ),

  
];

List<Destination> destinations = [
  Destination(
    imageUrl:"assets/images/1.jpg",
    city:'Levis',
    country:'London',
    description: 'Amazing place',
    activities: activities,
  ),
  Destination(
    imageUrl:"assets/images/2.jpg",
    city:'paris',
    country:'France',
    description: 'Amazing place',
    activities: activities,
  ),
  Destination(
    imageUrl:"assets/images/3.jpg",
    city:'New Delhi',
    country:'India',
    description: 'Amazing place',
    activities: activities,
  ),
];