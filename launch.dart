import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

var osname, imagename;
mywebData(osname, imagename) async {
  var url =
      "http://192.168.43.119/cgi-bin/launch.py?a=${osname}&b=${imagename}";
  var r = await http.get(url);
  //var sc = r.statusCode;
  var data = r.body;
  //print(sc);
  print(data);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[300],
      appBar: AppBar(
        title: Text('Flucker : Launch'),
        backgroundColor: Colors.blueAccent,
      ),
      body: myBody,
    );
  }
}

var myBody = Center(
    child: SizedBox.expand(
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    //crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
      Container(
        width: 100,
        height: 100,
        child: Image.network(
            'https://raw.githubusercontent.com/whytedork/photos/master/clipart1469815.png'),
      ),
      Card(
        color: Colors.white,
        child: TextField(
          autocorrect: false,
          autofocus: true,
          cursorColor: Colors.red,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: "Enter os name",
            prefixIcon: Icon(Icons.attach_money),
          ),
          //onChanged: (value) => print(value),
          onChanged: (val) {
            osname = val;
          },
        ),
      ),
      Card(
        color: Colors.white,
        child: TextField(
          autocorrect: false,
          autofocus: true,
          cursorColor: Colors.red,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: "Enter image name",
            prefixIcon: Icon(Icons.attach_money),
          ),
          //onChanged: (value) => print(value),
          onChanged: (val) {
            imagename = val;
          },
        ),
      ),
      Card(
          child: FlatButton(
        onPressed: () {
          mywebData(osname, imagename);
          //print(x);
        },
        child: Text('Launch'),
      ))
    ],
  ),
));
