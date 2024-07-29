import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  void getLocation() async {
    bool serviceEnabled;
    LocationPermission permission;

    // Verifica si los servicios de ubicación están habilitados.
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      // Los servicios de ubicación no están habilitados.
      print("Servicios de ubicación deshabilitados.");
      return;
    }

    // Verifica el estado de los permisos de ubicación.
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      // El permiso ha sido denegado, solicita permiso.
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        // El usuario ha denegado el permiso de nuevo.
        print("Permiso de ubicación denegado.");
        return;
      }
    }

    if (permission == LocationPermission.deniedForever) {
      // El permiso ha sido denegado permanentemente, muestra un mensaje adecuado.
      print("Permiso de ubicación denegado permanentemente.");
      return;
    } 

    // Si los permisos están concedidos, procede a obtener la ubicación.
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.low);
    print(position);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            getLocation();
          },
          child: Text('Get Location'),
        ),
      ),
    );
  }
}
