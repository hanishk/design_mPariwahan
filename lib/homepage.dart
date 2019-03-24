import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  Widget services(Color color, String text) {
    return Expanded(
      child: Column(
        children: <Widget>[
          Card(
            color: color,
            child: Text("card"),
          ),
          Padding(padding: EdgeInsets.symmetric(vertical: 10.0)),
          Text(
            text,
            style: TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }

  Widget info(IconData icon, String text) {
    return Expanded(
      child: Column(
        children: <Widget>[
          Card(
            child: Icon(icon),
          ),
          Text(text)
        ],
      ),
    );
  }

  Widget flatbutton(String text, IconData icon, Function fun) {
    return FlatButton.icon(
        onPressed: fun,
        icon: Icon(
          icon,
          size: 10.0,
        ),
        label: Text(
          text,
          style: TextStyle(fontSize: 10.0, fontWeight: FontWeight.bold),
        ));
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
                    Text(
                      'mParivahan',
                      style: TextStyle(
                          fontSize: 30.0, fontWeight: FontWeight.bold),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        flatbutton(
                            "Get RC/DC Details", Icons.calendar_today, () {}),
                        flatbutton(
                            "Create Virtual RC/DC", Icons.calendar_today, () {}),
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
              services(Colors.grey, "DL Mock Test"),
              services(Colors.grey, "Tax Receipt"),
              services(Colors.grey, "Traffic Status"),
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
            child: Center(
              child: Wrap(
                children: <Widget>[
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      info(Icons.calendar_today, "Temporary Registration"),
                      info(Icons.calendar_today, "Permanent Registration"),
                      info(Icons.calendar_today, "Renewal of Registration"),
                      info(Icons.calendar_today, "Duplicate RC"),
                      info(Icons.calendar_today, "No Objection Certificate"),
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
