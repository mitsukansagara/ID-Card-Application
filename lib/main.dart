import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Id(),
));

class Id extends StatefulWidget {
  @override
  _IdState createState() => _IdState();
}

class _IdState extends State<Id> {
  int sem = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Mitsu ID Card'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 50.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/100_0967.JPG'),
                radius: 100.0,
              ),
            ),
            Divider(height: 80.0, color: Colors.grey[100]),
            Text(
              'NAME:',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Mitsu Kansagara',
              style: TextStyle(
                color: Colors.amber,
                letterSpacing: 2.0,
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30.0),
            Text(
              'Currently in Sem: ',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              '$sem',
              style: TextStyle(
                color: Colors.amber,
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30.0),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                  size: 24.0,
                ),
                SizedBox(width: 10.0),
                Text(
                  'kansagaramitsu@yahoo.in',
                  style: TextStyle(
                    color: Colors.grey[100],
                    letterSpacing: 1.0,
                    fontSize: 22.0
                  ),
                ),
              ],
            ),
            ]
        ),
        ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            sem += 1;
          });
        },
        child: Icon(
          Icons.add,
        ),
        backgroundColor: Colors.grey[800],
      ),
      );
  }
}



