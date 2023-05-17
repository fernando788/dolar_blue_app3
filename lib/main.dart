import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';

List<String> images = [
  "https://img.europapress.es/fotoweb/fotonoticia_20150418125944_1024.jpg",
  "https://laopinion.com/wp-content/uploads/sites/3/2019/03/billete-un-dolar.jpg?quality=80&strip=all",
  "https://www.freejpg.com.ar/image-900/39/3944/F100011074-dolares.jpg"
];

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Cotizacion Dolar'),
          ),
          body: Container(
            child: _swiper(),
          )),
    );
  }
}

Widget _swiper() {
  return Container(
      width: double.infinity,
      height: 250.0,
      child: Swiper(
        viewportFraction: 0.8,
        scale: 0.9,
        itemBuilder: (BuildContext context, int index) {
          return Image.network(
            images[index],
            fit: BoxFit.fill,
          );
        },
        itemCount: 3,
        pagination: SwiperPagination(),
        control: SwiperControl(),
      ));
}
