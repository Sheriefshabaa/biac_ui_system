// import 'package:flutter/material.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';

// class GoogleMapWidget extends StatefulWidget {
//   @override
//   _GoogleMapWidgetState createState() => _GoogleMapWidgetState();
// }

// class _GoogleMapWidgetState extends State<GoogleMapWidget> {
//   GoogleMapController? _controller;

//   // Initial position for the map (San Francisco)
//   static const LatLng _center = const LatLng(37.7749, -122.4194);

//   // Marker position
//   final Set<Marker> _markers = {};

//   // On map created
//   void _onMapCreated(GoogleMapController controller) {
//     _controller = controller;

//     // Add a marker
//     setState(() {
//       _markers.add(
//         Marker(
//           markerId: MarkerId('marker_1'),
//           position: _center,
//           infoWindow: InfoWindow(
//             title: 'San Francisco',
//             snippet: 'A cool city',
//           ),
//         ),
//       );
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return GoogleMap(
//       onMapCreated: _onMapCreated,
//       initialCameraPosition: CameraPosition(
//         target: _center,
//         zoom: 11.0,
//       ),
//       markers: _markers,
//     );
//   }}