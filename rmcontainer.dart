import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

var id;
rmContainers(id) async {
  var url = "http://192.168.43.119/cgi-bin/rmcontainer.py?a=${id}";
  var r = await http.get(url);
  //var sc = r.statusCode;
  var data = r.body;
  //print(sc);
  print(data);
}

class RemoveContainers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[300],
      appBar: AppBar(
        title: Text('Flucker : Remove'),
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
            hintText: "Enter os/id name",
            prefixIcon: Icon(Icons.attach_money),
          ),
          //onChanged: (value) => print(value),
          onChanged: (val) {
            id = val;
          },
        ),
      ),
      Card(
          child: FlatButton(
        onPressed: () {
          rmContainers(id);
        },
        child: Text('Remove'),
      ))
    ],
  ),
));
