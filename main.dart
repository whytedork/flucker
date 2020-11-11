import 'package:flutter/material.dart';
import 'launch.dart';
import 'images.dart';
import 'rmcontainer.dart';

void main() => runApp(MainScreen());

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Builder(
        builder: (context) => Scaffold(
          appBar: AppBar(
            title: Text("Flucker : Main"),
          ),
          backgroundColor: Colors.grey.shade300,
          body: Center(
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(5),
                  width: double.infinity,
                  child: MaterialButton(
                    child: Text("Launch Docker OS"),
                    textColor: Colors.white,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MyApp()),
                      );
                    },
                    color: Colors.blue,
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  width: double.infinity,
                  child: MaterialButton(
                    child: Text("Show Docker Images"),
                    textColor: Colors.white,
                    onPressed: myImages,
                    color: Colors.blue,
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  width: double.infinity,
                  child: MaterialButton(
                    child: Text("Show Running Containers"),
                    textColor: Colors.white,
                    onPressed: myContainers,
                    color: Colors.blue,
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  width: double.infinity,
                  child: MaterialButton(
                    child: Text("Remove Containers"),
                    textColor: Colors.white,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RemoveContainers()),
                      );
                    },
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
