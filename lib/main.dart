import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/apresentation/UI/CarouselTest.dart';
import 'package:flutter_app/apresentation/UI/home_screen/components/search_appbar.dart';
import 'package:flutter_app/data/repositories/recuperar_lista_de_icones.dart';

import 'apresentation/UI/base_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            primarySwatch: Colors.blue,
            appBarTheme: AppBarTheme(
                systemOverlayStyle: SystemUiOverlayStyle(

                    //statusBarColor: Color.fromRGBO(68, 64, 64, 0.5)
                    ))),
        home: BaseScreen());
  }
}

