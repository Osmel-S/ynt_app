import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/apresentation/UI/CarouselTest.dart';
import 'package:flutter_app/apresentation/UI/home_screen/components/search_appbar.dart';
import 'package:flutter_app/data/repositories/recuperar_lista_de_icones.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../domains/entities/lugar_entitty.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int select = 0;
  int initialPage = 0;
  String category = 'Destaques';
  final CarouselController carouselController = CarouselController();


  @override
  Widget build(BuildContext context) {
    print("reconstruido");
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: container(context),
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          // mainAxisSize: MainAxisSize.min,

          children: [
            // Container(
            //   height:  MediaQuery.of(context).size.height*0.05,
            //   color: Colors.grey,
            // ),
            // Container(
            //     margin: const EdgeInsets.symmetric(horizontal: 12),
            //     height: 50,
            //     alignment: Alignment.center,
            //     decoration: BoxDecoration(
            //       color: Color.fromRGBO(239, 239, 239, 1),
            //       borderRadius: BorderRadius.all(Radius.circular(25)),
            //     ),
            //     child: Row(
            //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //       children: [
            //         Icon(Icons.search),
            //         Text(
            //           "Pesquise por preços ou produtos",
            //           style: TextStyle(fontWeight: FontWeight.w500,fontSize: 19,color: Colors.grey.shade400),
            //         ),
            //         SizedBox(width: 30,)
            //       ],
            //     )),
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                  height: 50,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: listCategories.length,
                      itemBuilder: (_, index) {
                        print(listCategories[index].length);
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              select = index;
                              category = listCategories[index];
                              carouselController.jumpToPage(0);
                            });
                          },
                          child: Container(
                            margin: const EdgeInsets.symmetric(
                                vertical: 5.0, horizontal: 5),
                            height: 50,
                            alignment: Alignment.center,
                            // width: MediaQuery.of(context).size.width * 0.25,]
                            width: listCategories[index].length * 9.1,
                            decoration: BoxDecoration(
                              border: Border.all(width: 0.5,color: Colors.grey),
                              color: index == select
                                  ? Colors.black
                                  : Color.fromRGBO(242, 242, 242, 1),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(25)),
                            ),
                            child: Text(
                              listCategories[index],
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: index == select ? FontWeight.bold : FontWeight.w400,
                                  color: index == select ? Colors.white : Colors.black),
                            ),
                          ),
                        );
                      })),
            ),
            Expanded(
                child: Container(
                    alignment: Alignment.topLeft,
                    child: CarouselTest(category: category,carouselController: carouselController,)))
          ],
        ),
      ),
    );
  }
  Widget container(BuildContext context){
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 0.1),
        height: 50,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Color.fromRGBO(255, 255, 255, 1),
          borderRadius: BorderRadius.all(Radius.circular(25)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              Icons.search,
              color: Colors.grey,
            ),
            GestureDetector(
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => SearchAppbar())),
              child: Text(
                "Pesquise por lugares ou produtos...",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: Colors.grey.shade400),
              ),
            ),
            SizedBox(
              width: 30,
            )
          ],
        ));
  }
}



