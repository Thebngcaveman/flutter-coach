import 'package:flutter/material.dart';
import 'package:talent_hire/components/coach_card.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: FlutterLogo(
          textColor: Colors.green,
          size: 20,
        ),
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back),
          color: Colors.grey,
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.menu,
              color: Colors.grey,
            ),
          ),
        ],
      ),
      body: ListView(
        shrinkWrap: true,
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                alignment: Alignment(0.0, -0.4),
                height: 100.0,
                color: Colors.white,
                child: Text(
                  'Explore Your Contact',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 20.0,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(25, 90, 25, 0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 2,
                      color: Colors.grey,
                    ),
                  ],
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.fromLTRB(25, 25, 5, 5),
                          child: Text(
                            "Your Contact",
                            style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(25, 40, 5, 25),
                          child: Text(
                            "6", //TODO MAKE THIS DYNAMIC
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 40,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 100,
                    ),
                    Container(
                      height: 60,
                      width: 125,
                      decoration: BoxDecoration(
                        color: Colors.greenAccent[100],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          'Buy more',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            // fontFamily: 'Quicksand',
                            color: Colors.green,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            padding: EdgeInsets.only(
              left: 25,
              right: 25,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "MY COACHES",
                  style: TextStyle(
                    color: Colors.grey,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
                Text(
                  "VIEW PAST SESSIONS",
                  style: TextStyle(
                    color: Colors.green,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 2,
            primary: false,
            mainAxisSpacing: 4,
            shrinkWrap: true,
            children: <Widget>[
              CoachCard(
                name: "Emma",
                status: "Away",
                cardIndex: 1,
              ),
              CoachCard(
                name: "William",
                status: "Available",
                cardIndex: 2,
              ),
              CoachCard(
                name: "Josh",
                status: "Available",
                cardIndex: 3,
              ),
              CoachCard(
                name: "Watson",
                status: "Available",
                cardIndex: 4,
              ),
              CoachCard(
                name: "Jane",
                status: "Away",
                cardIndex: 5,
              ),
              CoachCard(
                name: "Robert",
                status: "Away",
                cardIndex: 6,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
