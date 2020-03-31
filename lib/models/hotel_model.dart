class Hotel{
  String imageUrl;
  String name;
  String address;
  int price;

  Hotel({
    this.imageUrl,
    this.name,
    this.address,
    this.price,
  });
}
final List<Hotel> hotels = [
  Hotel(
    imageUrl:'assets/images/h1.jpg',
    name:'Hotel 1',
    address:'404 Great St',
    price:1500,
  ),
  Hotel(
    imageUrl:'assets/images/h2.jpg',
    name:'Hotel 2',
    address:'404 Great St',
    price:1600,
  ),
  Hotel(
    imageUrl:'assets/images/h3.jpg',
    name:'Hotel 3',
    address:'404 Great St',
    price:1700,
  ),
  Hotel(
    imageUrl:'assets/images/h4.jpg',
    name:'Hotel 4',
    address:'404 Great St',
    price:1800,
  ),
];