import 'package:flutter/material.dart';

class TimeClock extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _TimeClockState();
  }
}

class _TimeClockState extends State<TimeClock> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColorDark,
        centerTitle: true,
        title: Text(
          "Time Clock",
        ),
      ),
      body: ListView(children: [
        Card(
          child: new Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              new ListTile(
                onTap: () {
                  print('hello');
                },
                title: Text(
                  '00:00:00',
                  textAlign: TextAlign.center,
                  style: new TextStyle(
                      fontSize: 40.0, fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  'You are currently clocked out!',
                  textAlign: TextAlign.center,
                ),
              ),
              new ButtonTheme.bar(
                // make buttons use the appropriate styles for cards
                child: new ButtonBar(
                  alignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new RaisedButton(
                      child: new Text(
                        'Clock In',
                        style: new TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17.0),
                      ),
                      textColor: Colors.white,
                      color: Colors.green[700],
                      splashColor: Colors.green,
                      padding: EdgeInsets.symmetric(horizontal: 50.0),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6.0)),
                      onPressed: () {/* ... */},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ]),
      floatingActionButton: new FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
          foregroundColor: Colors.white,
          backgroundColor: Theme.of(context).primaryColor),
    );
  }
}
