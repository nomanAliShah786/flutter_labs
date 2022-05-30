import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'locationScreen.dart';
import 'network.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

var weatherdata;

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  var permissions;
  var longitude;
  var lattitude;
  void getCurrentPosition() async {
    permissions = await Geolocator.checkPermission();
    if (permissions == LocationPermission.denied) {
      permissions = Geolocator.requestPermission();

      if (permissions == LocationPermission.denied) {
        print('Permission denied');
      }
    }

    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.best);

    lattitude = position.latitude;
    longitude = position.longitude;
    networkhelper helper = networkhelper(Uri.parse(
        'http://api.openweathermap.org/data/2.5/weather?units=metric&lat=$lattitude&lon=$longitude&appid=85cf63925a26a238b55c13b64e1e6dea'));

    weatherdata = await helper.getdata();
    print(weatherdata);

    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return LocationScreen(locationWeather: weatherdata);
    }));

    print(position.latitude);
    print(position.longitude);
  }

  @override
  void initState() {
    super.initState();
    getCurrentPosition();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text('Abrera Lab 9'))),
      body: Column(children: [
        Center(
          child: SpinKitChasingDots(
            color: Colors.grey,
            size: 40,
          ),
        ),
        TextButton(
          onPressed: () {
            setState(() {
              getCurrentPosition();
            });
          },
          child: Text("Get Location"),
        ),
        Text('$longitude'),
        Text('$lattitude'),
        ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => LocationScreen(
                            locationWeather: weatherdata,
                          )));
            },
            child: Text("Go to Screen 2")),
      ]),
    );
  }
}
