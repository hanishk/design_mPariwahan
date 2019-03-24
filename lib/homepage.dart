import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  Widget MyList(String imageVal, String text) {
    return Container(
      width: 170.0,
      child: Column(
        children: <Widget>[
          Card(
            elevation: 0.0,
            child: Image.asset(imageVal),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 6.0),
          ),
          Text(
            text,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12.0),
          ),
        ],
      ),
    );
  }

  Widget rcInfo(IconData icon, String text) {
    return Container(
      width: 100.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Wrap(
            children: <Widget>[
              Card(
                elevation: 0.0,
                child: Icon(icon),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 6.0),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Text(
                text,
                style: TextStyle(fontSize: 14.0),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black54,
        title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'mPariwahan',
              style: TextStyle(fontSize: 20.0),
            ),
            Padding(padding: EdgeInsets.symmetric(vertical: 3.0)),
            Text(
              'A step to virtualization',
              style: TextStyle(fontSize: 10.0),
            )
          ],
        ),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.directions_bus), onPressed: () {}),
          IconButton(icon: Icon(Icons.notifications), onPressed: () {}),
        ],
        leading: IconButton(
            icon: Icon(Icons.short_text),
            onPressed: () => _scaffoldKey.currentState.openDrawer()),
        bottom: PreferredSize(
            child: Container(
              height: 50.0,
              margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
              decoration: BoxDecoration(color: Colors.white),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  ButtonTheme(
                    minWidth: 20.0,
                    child: Row(
                      children: <Widget>[
                        FlatButton.icon(
                            onPressed: () {},
                            icon: Icon(
                              Icons.calendar_today,
                              size: 8.0,
                            ),
                            label: Text(
                              'RC',
                              style: TextStyle(fontSize: 8.0),
                            )),
                        VerticalDivider(
                          color: Colors.black54,
                        ),
                        FlatButton.icon(
                            onPressed: () {},
                            icon: Icon(
                              Icons.calendar_today,
                              size: 8.0,
                            ),
                            label: Text(
                              'DL',
                              style: TextStyle(fontSize: 8.0),
                            )),
                        VerticalDivider(
                          color: Colors.black54,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: TextFormField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintStyle: TextStyle(fontSize: 10.0),
                          hintText: 'Enter vehicle number to get details'),
                    ),
                  ),
                  Container(
                    color: Colors.blue,
                    child: IconButton(
                      icon: Icon(Icons.search),
                      onPressed: () {},
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
            preferredSize: Size.fromHeight(60.0)),
      ),
      drawer: Drawer(),
      key: _scaffoldKey,
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                height: 200.0,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.bottomLeft,
                        end: Alignment.bottomRight,
                        colors: [Colors.teal[800], Colors.teal[100]])),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 12.0),
                    ),
                    Text(
                      'mParivahan',
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 5.0, vertical: 10.0)),
                        Icon(
                          Icons.calendar_today,
                          size: 10.0,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 2.0),
                        ),
                        Text(
                          "Get RC/DC Details | ",
                          style: TextStyle(fontSize: 10.0),
                        ),
                        Icon(
                          Icons.calendar_today,
                          size: 10.0,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 2.0),
                        ),
                        Text(
                          "Get RC/DC Details",
                          style: TextStyle(fontSize: 10.0),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 64.0),
                      child: RaisedButton(
                        elevation: 1.0,
                        onPressed: () {},
                        color: Colors.blue,
                        child: Text(
                          "Share Now",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              "mParivahan Services",
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[700]),
            ),
          ),
          Container(
              height: 120.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  MyList('assets/pixels.jpeg', "DL Mock Test"),
                  MyList('assets/pixels.jpeg', "Tax Receipt"),
                  MyList('assets/pixels.jpeg', "Traffic Status"),
                  MyList('assets/pixels.jpeg', "Citizen Report"),
                  MyList('assets/pixels.jpeg', "Nearest RTO"),
                ],
              )),
          Divider(
            color: Colors.grey,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Text(
              "RC Information",
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[700]),
            ),
          ),
          Container(
              height: 120.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  rcInfo(Icons.calendar_today, "Temporary Registration"),
                  rcInfo(Icons.info, "Permanent Registration"),
                  rcInfo(Icons.short_text, "Renewal Of Registration"),
                  rcInfo(Icons.zoom_out_map, "Duplicate RC"),
                  rcInfo(Icons.directions_bus, "No Objection Certificate"),
                  rcInfo(Icons.directions_bus, "HP Endorsement"),
                  rcInfo(Icons.directions_bus, "HP Termination"),
                  rcInfo(Icons.directions_bus, "Address Change"),
                  rcInfo(Icons.directions_bus, "Reassign-ment"),
                  rcInfo(Icons.directions_bus, "Certificate Issues"),
                ],
              )),
          Divider(
            color: Colors.grey,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Text(
              "DL Information",
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[700]),
            ),
          ),
          Container(
              height: 140.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  rcInfo(Icons.calendar_today, "Learner's DL"),
                  rcInfo(Icons.info, "Permanent DL"),
                  rcInfo(Icons.short_text, "Renewable Of DL"),
                  rcInfo(Icons.zoom_out_map, "Duplicate DL"),
                  rcInfo(Icons.directions_bus, "Addition Of Class"),
                  rcInfo(Icons.directions_bus, "Internation Driving Permit"),
                  rcInfo(Icons.directions_bus, "License Related Fees"),
                ],
              )),
          Divider(
            color: Colors.grey,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Text(
              "How  to use",
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[700]),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 18.0),
            height: 140.0,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                MyList("assets/pixels.jpeg", "Why mParivahan"),
                MyList("assets/pixels.jpeg", "How To Use"),
              ],
            ),
          ),
          Divider(
            color: Colors.grey,
          ),
          Container(
            height: 100.0,
            child: Image.asset(
              'assets/pixels.jpeg',
              fit: BoxFit.fitWidth,
            ),
            color: Colors.grey,
          )
        ],
      ),
    );
  }
}
