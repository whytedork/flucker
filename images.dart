import 'package:http/http.dart' as http;

myImages() async {
  var url = "http://192.168.43.119/cgi-bin/images.py";
  var r = await http.get(url);
  //var sc = r.statusCode;
  var data = r.body;
  //print(sc);
  print(data);
}

myContainers() async {
  var url = "http://192.168.43.119/cgi-bin/containers.py";
  var r = await http.get(url);
  //var sc = r.statusCode;
  var data = r.body;
  //print(sc);
  print(data);
}
