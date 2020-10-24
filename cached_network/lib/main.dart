import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Cached Network Images',
        home: CachedNetworkImage(
          imageUrl:
              'https://images.pexels.com/photos/4630010/pexels-photo-4630010.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260',
          //'https://images.pexels.com/photos/3255550/pexels-photo-3255550.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260',
          progressIndicatorBuilder: (context, url, downloadProgress) =>
              CircularProgressIndicator(
            value: downloadProgress.progress,
            backgroundColor: Colors.purpleAccent,
            valueColor: AlwaysStoppedAnimation<Color>(Colors.purple),
          ),
          errorWidget: (context, url, error) =>
              Text('Revisa la URL que he fallado de lo lindo o la conexión a internet'),
        ));
  }
}
