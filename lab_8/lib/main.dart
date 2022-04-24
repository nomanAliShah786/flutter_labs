import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: LocationWidget(),
    );
  }
}

class LocationWidget extends StatefulWidget {
  const LocationWidget({Key? key}) : super(key: key);

  @override
  State<LocationWidget> createState() => _LocationWidgetState();
}

class _LocationWidgetState extends State<LocationWidget> {
  var permission;
  void getCurrentPossition() async {
    try {
      permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
        try {
          permission = await Geolocator.requestPermission();
        } catch (e) {
          print("Permission denied by user");
        }
      }
    } catch (e) {
      print(e);
    }
    Position myPosition = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.best,
    );
    print(myPosition.latitude);
    print(myPosition.longitude);
  }

  @override
  void initState() {
    super.initState();
    getCurrentPossition();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Lab 8')),
      body: Center(
        child: TextButton(
          onPressed: () {
            setState(() {
              getCurrentPossition();
            });
          },
          child: Text("Get Current Location"),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
          ),
        ),
      ),
    );
  }
}
