import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

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
                  Row(
                    children: <Widget>[
                      FlatButton.icon(
                          onPressed: () {},
                          icon: Icon(
                            Icons.calendar_today,
                            size: 10.0,
                          ),
                          label: Text(
                            'RC',
                            style: TextStyle(fontSize: 10.0),
                          )),
                      VerticalDivider(
                        color: Colors.black54,
                      ),
                      FlatButton.icon(
                          onPressed: () {},
                          icon: Icon(
                            Icons.calendar_today,
                            size: 10.0,
                          ),
                          label: Text(
                            'DL',
                            style: TextStyle(fontSize: 10.0),
                          )),
                      VerticalDivider(
                        color: Colors.black54,
                      ),
                    ],
                  ),
                  Expanded(
                    flex: 1,
                    child: TextFormField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
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
                        colors: [Colors.teal[800], Colors.teal[100]])),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'mParivahan',
                      style: TextStyle(
                          fontSize: 30.0, fontWeight: FontWeight.bold),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        FlatButton.icon(
                            onPressed: () {},
                            icon: Icon(
                              Icons.calendar_today,
                              size: 10.0,
                            ),
                            label: Text(
                              'Get RC/DL Details',
                              style: TextStyle(
                                  fontSize: 10.0, fontWeight: FontWeight.bold),
                            )),
                        FlatButton.icon(
                            onPressed: () {},
                            icon: Icon(
                              Icons.calendar_today,
                              size: 10.0,
                            ),
                            label: Text(
                              'Create Virtual RC/DL',
                              style: TextStyle(
                                  fontSize: 10.0, fontWeight: FontWeight.bold),
                            )),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
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
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "mParivahan Services",
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[700]),
            ),
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: Column(
                  children: <Widget>[
                    Card(
                      color: Colors.grey,
                      child: Text("card"),
                    ),
                    Text(
                      "DL Mock Test",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: <Widget>[
                    Card(
                      color: Colors.grey,
                      child: Text("card"),
                    ),
                    Text(
                      "Tax Receipt",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: <Widget>[
                    Card(
                      color: Colors.grey,
                      child: Text("card"),
                    ),
                    Text(
                      "Traffic  Status",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ],
          ),
          Divider(
            color: Colors.grey,
          ),
          Text(
            "RC Information",
            style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.grey[700]),
          ),
          Container(
            height: 150.0,
            color: Colors.grey,
            child: Center(
              child: Wrap(
                children: <Widget>[
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        child: Column(
                          children: <Widget>[
                            Card(
                              child: Icon(Icons.calendar_today),
                            ),
                            Text("Temporary Registration")
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: <Widget>[
                            Card(
                              child: Icon(Icons.calendar_today),
                            ),
                            Text("Permanent Registration")
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: <Widget>[
                            Card(
                              child: Icon(Icons.calendar_today),
                            ),
                            Text("Renewal of Registration")
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: <Widget>[
                            Card(
                              child: Icon(Icons.calendar_today),
                            ),
                            Text("Duplicate RC")
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: <Widget>[
                            Card(
                              child: Icon(Icons.calendar_today),
                            ),
                            Text("No Objection Certificate")
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
