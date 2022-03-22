import 'dart:ui';

import 'package:best_flutter_ui_templates/model/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../main.dart';
import 'homelist.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
class SchoolMap extends StatefulWidget {
  @override
  _SchoolMapState createState() => _SchoolMapState();
}

class _SchoolMapState extends State<SchoolMap> {
  List<Marker> myMarker = [];
  @override
  static const _initialCameraPosition = CameraPosition(
    target: LatLng(41.2093244, 32.656347915),
    zoom: 15.4,

  );

  late GoogleMapController _googleMapController;

  @override
  void dispose(){
    _googleMapController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {

    BitmapDescriptor myIcon;
    return Scaffold(
      body: GoogleMap(

        myLocationButtonEnabled: true,

        compassEnabled: true,
        mapToolbarEnabled: true,
        buildingsEnabled: true,
        indoorViewEnabled: true,
        zoomGesturesEnabled: true,
        scrollGesturesEnabled:true,
        rotateGesturesEnabled: true,
        zoomControlsEnabled: true,
        initialCameraPosition: _initialCameraPosition,
        onMapCreated: (controller) => _googleMapController = controller,
        mapType: MapType.normal,

        markers: Set<Marker>.of(
          <Marker>[
            Marker(
              draggable: true,
              markerId: MarkerId("1"),
              position: LatLng(41.21613592748467, 32.65162947327104),
              icon: BitmapDescriptor.defaultMarker,
              infoWindow: const InfoWindow(
                title: 'Rektörlük',
              ),
            ),
            Marker(
              draggable: true,
              markerId: MarkerId("1"),
              position: LatLng(41.214304183418264, 32.652133638446905),
              icon: BitmapDescriptor.defaultMarker,
              infoWindow: const InfoWindow(
                title: 'Tıp ve Diş Hekimliği Fakültesi',
              ),
            ),

            Marker(
              draggable: true,
              markerId: MarkerId("1"),
              position: LatLng(41.214035393220435, 32.65381321002365),
              icon: BitmapDescriptor.defaultMarker,
              infoWindow: const InfoWindow(
                title: 'Teknoloji Fakültesi',
              ),
            ),
            Marker(
              draggable: true,
              markerId: MarkerId("1"),
              position: LatLng(41.21319602921475, 32.65418871458157),
              icon:  BitmapDescriptor.defaultMarker,
              infoWindow: const InfoWindow(
                title: 'Sağlık Bilimleri ve İletişim Fakültesi',
              ),
            ),
            Marker(
              draggable: true,
              markerId: MarkerId("1"),
              position: LatLng(41.21279249058986, 32.653641547611784),
              icon: BitmapDescriptor.defaultMarker,
              infoWindow: const InfoWindow(
                title: 'Hazırlık Fakültesi',
              ),
            ),
            Marker(
              draggable: true,
              markerId: MarkerId("1"),
              position: LatLng(41.213930476707965, 32.655454741526604),
              icon: BitmapDescriptor.defaultMarker,
              infoWindow: const InfoWindow(
                title: 'Teknokent',
              ),
            ),
            Marker(
              draggable: true,
              markerId: MarkerId("1"),
              position: LatLng(41.21326058929891, 32.65554055987565),
              icon: BitmapDescriptor.defaultMarker,
              infoWindow: const InfoWindow(
                title: 'Spor Salonu',
              ),
            ),
            Marker(
              draggable: true,
              markerId: MarkerId("1"),
              position: LatLng(41.211888533443876, 32.655433247169555),
              icon: BitmapDescriptor.defaultMarker,
              infoWindow: const InfoWindow(
                title: 'Sosyal Yaşam Merkezi',
              ),
            ),
            Marker(
              draggable: true,
              markerId: MarkerId("1"),
              position: LatLng(41.206169469196176, 32.65970259815663),
              icon: BitmapDescriptor.defaultMarker,
              infoWindow: const InfoWindow(
                title: 'Mühendislik Fakültesi',
              ),
            ),
            Marker(
              draggable: true,
              markerId: MarkerId("1"),
              position: LatLng(41.205564139344894, 32.657073995024135),
              icon: BitmapDescriptor.defaultMarker,
              infoWindow: const InfoWindow(
                title: 'Besyo',
              ),
            ),
            Marker(
              draggable: true,
              markerId: MarkerId("1"),
              position: LatLng(41.20829236856302, 32.65742808679668),
              icon: BitmapDescriptor.defaultMarker,
              infoWindow: const InfoWindow(
                title: 'Kütüphane',
              ),
            ),
            Marker(
              draggable: true,
              markerId: MarkerId("1"),
              position: LatLng(41.20843767341943, 32.65588310651517),
              icon: BitmapDescriptor.defaultMarker,
              infoWindow: const InfoWindow(
                title: 'Karabük Üniversitesi Demir Çelik Enstitüsi',
              ),
            ),
            Marker(
              draggable: true,
              markerId: MarkerId("1"),
              position: LatLng(41.21085795404698, 32.65687694885472),
              icon: BitmapDescriptor.defaultMarker,
              infoWindow: const InfoWindow(
                title: 'İlahiyat Fakültesi',
              ),
            ),
            Marker(
              draggable: true,
              markerId: MarkerId("1"),
              position: LatLng(41.21155208807718, 32.65615809003065),
              icon: BitmapDescriptor.defaultMarker,
              infoWindow: const InfoWindow(
                title: 'İktisadi Ve İdari Birimler Fakültesi',
              ),
            ),
            Marker(
              draggable: true,
              markerId: MarkerId("1"),
              position: LatLng(41.21197178620832, 32.65458091592894),
              icon: BitmapDescriptor.defaultMarker,
              infoWindow: const InfoWindow(
                title: 'Karabük Üniversitesi Cami',
              ),
            ),

            Marker(
              draggable: true,
              markerId: MarkerId("1"),
              position: LatLng(41.210551252315256, 32.65481693500328),
              icon: BitmapDescriptor.defaultMarker,
              infoWindow: const InfoWindow(
                title: 'Karabük Üniversitesi Öğrenci İşleri',
              ),
            ),

          ],
        ),

      ),
           );

       }

  }



