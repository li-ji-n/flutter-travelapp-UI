import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travel/models/destination_model.dart';

class DestinatioScreen extends StatefulWidget {
  final Destination destination;

  DestinatioScreen({this.destination});
  @override
  _DestinatioScreenState createState() => _DestinatioScreenState();
}

class _DestinatioScreenState extends State<DestinatioScreen> {


Text _buildRatingStars(int rating){
  String stars = '';
  for(int i = 0;i<rating;i++){
    stars+='⭐ ';
  }
  stars.trim();
  return Text(stars);
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      offset: Offset(0.0, 2.0),
                      blurRadius: 6.0,
                    ),
                  ],
                ),
                child: Hero(
                  tag: widget.destination.imageUrl,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30.0),
                    child: Image(
                      image: AssetImage(
                        widget.destination.imageUrl,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 10.0, vertical: 40.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.arrow_back),
                      iconSize: 30.0,
                      color: Colors.black,
                      onPressed: () => Navigator.pop(context),
                    ),
                    Row(
                      children: <Widget>[
                        IconButton(
                          icon: Icon(Icons.search),
                          iconSize: 30.0,
                          color: Colors.black,
                          onPressed: () => Navigator.pop(context),
                        ),
                        IconButton(
                          icon: Icon(FontAwesomeIcons.sortAlphaDown),
                          iconSize: 25.0,
                          color: Colors.black,
                          onPressed: () => Navigator.pop(context),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Positioned(
                left: 20.0,
                bottom: 20.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      widget.destination.city,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Icon(
                          FontAwesomeIcons.locationArrow,
                          size: 10.0,
                          color: Colors.white70,
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text(
                          widget.destination.country,
                          style: TextStyle(
                            color: Colors.white70,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                right: 20.0,
                bottom: 20.0,
                child: Icon(
                  Icons.location_on,
                  size: 25.0,
                  color: Colors.white70,
                ),
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemCount: widget.destination.activities.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: 150.0,
                  child: Stack(
                    alignment: Alignment.centerLeft,
                    children: <Widget>[
                      Positioned(
                        left: 50,
                        child: Container(
                          width: MediaQuery.of(context).size.width - 60,
                          height: 135,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 50.0, top: 10.0, right: 5.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      widget.destination.activities[index].name,
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Column(
                                      children: <Widget>[
                                        Text(
                                          'Rs.' +
                                              widget.destination
                                                  .activities[index].price
                                                  .toString(),
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text(
                                          'Per head',
                                          style: TextStyle(
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 15.0,
                                ),
                                Text(
                                  widget.destination.activities[index].type,
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                                _buildRatingStars(widget.destination.activities[index]
                                            .rating),
                                
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Container(
                                      padding: EdgeInsets.all(5.0),
                                      decoration: BoxDecoration(
                                          color: Colors.lightBlue[200],
                                          borderRadius:
                                              BorderRadius.circular(5.0)),
                                      child: Text(
                                        widget.destination.activities[index]
                                            .startTimes[0],
                                        style: TextStyle(
                                          color: Colors.black45,
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 20.0),
                                    Container(
                                      padding: EdgeInsets.all(5.0),
                                      decoration: BoxDecoration(
                                          color: Colors.lightBlue[200],
                                          borderRadius:
                                              BorderRadius.circular(5.0)),
                                      child: Text(
                                        widget.destination.activities[index]
                                            .startTimes[1],
                                        style: TextStyle(
                                          color: Colors.black45,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        height: 120,
                        left: 15.0,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15.0),
                            child: Image(
                              image: AssetImage(widget
                                  .destination.activities[index].imageUrl),
                              width: 80.0,
                              height: 100.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
