import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/data/repositories/recuperar_lista_de_icones.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../domains/entities/lugar_entitty.dart';

class CarouselTest extends StatefulWidget {
  final String? category;
  final CarouselController carouselController;
  const CarouselTest({Key? key, required this.category,required this.carouselController}) : super(key: key);

  @override
  State<CarouselTest> createState() => _CarouselTestState();
}

class _CarouselTestState extends State<CarouselTest> {



  @override
  void initState() {
    super.initState();

    listaDestaques.map((e) {
      NetworkImage(e.urlPlacePhoto);
      NetworkImage(e.urlProduct);
    }).toList();
  }

  @override
  void didChangeDependencies() {
    listaDestaques.map((e) {
      precacheImage(NetworkImage(e.urlProduct), context);
      precacheImage(NetworkImage(e.urlPlacePhoto), context);
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    filterList = listaDestaques.where((element) => element.categoryEntity.nameCategory == widget.category).toList();

    print('tamanho lista ${filterList.length}');
    print('foi');
    return Container(
      color: Colors.white,
      child: CarouselSlider(
        carouselController: widget.carouselController,
        options: CarouselOptions(
          //height: 600,
          height: double.infinity,
          aspectRatio: 21.0,
          viewportFraction: 1,
          initialPage: 0,
          enableInfiniteScroll: false,
          reverse: false,
          autoPlay: false,
          autoPlayInterval: Duration(seconds: 3),
          autoPlayAnimationDuration: Duration(milliseconds: 500),
          autoPlayCurve: Curves.fastOutSlowIn,
          enlargeCenterPage: true,
          scrollDirection: Axis.horizontal,
        ),
        items: filterList.map((i) {
          print("AAAAAAAAA");
          return Builder(
            builder: (BuildContext context) {
              return Container(
                // padding: const EdgeInsets.only(right: 14.0),
                child: Column(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.57,
                      width: MediaQuery.of(context).size.width,
                      //  margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        image: DecorationImage(
                          //filterQuality: FilterQuality.high,
                          image: NetworkImage(
                            i.urlProduct,
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        // height: 300,
                        width: MediaQuery.of(context).size.width,
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        color: Colors.white,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // CachedNetworkImage(
                            //   placeholder: (context, url) => CircularProgressIndicator(),
                            //   errorWidget: (context, url, error) => new Icon(Icons.error),
                            //   fit: BoxFit.contain,
                            //   imageUrl: i.urlPlacePhoto!,
                            //   imageBuilder: (context, imageProvider) { // you can access to imageProvider
                            //     return CircleAvatar(
                            //       radius: 50,// or any widget that use imageProvider like (PhotoView)
                            //       backgroundImage: imageProvider,
                            //     );
                            //   },
                            // ),
                            CircleAvatar(
                              backgroundColor: Colors.grey.shade100,
                              radius: 51,
                              child: CircleAvatar(
                                radius: 50,
                                backgroundColor: Colors.transparent,
                                backgroundImage: NetworkImage(i.urlPlacePhoto),
                              ),
                            ),
                            SizedBox(
                              width: 5.0,
                            ),
                            Text(
                              i.name,
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            Expanded(
                              child: Container(),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                CircleAvatar(
                                  radius: 15,
                                  backgroundColor: Colors.grey.shade50,
                                  child: Icon(
                                    FontAwesomeIcons.instagram,
                                    color: Colors.red,
                                    size: 25,
                                  ),
                                ),
                                CircleAvatar(
                                  radius: 15,
                                  backgroundColor: Colors.grey.shade50,
                                  child: Icon(
                                    FontAwesomeIcons.whatsapp,
                                    color: Colors.green,
                                    size: 25,
                                  ),
                                ),
                                CircleAvatar(
                                  radius: 15,
                                  backgroundColor: Colors.grey.shade50,
                                  child: Icon(
                                    FontAwesomeIcons.globe,
                                    color: Colors.blue,
                                    size: 25,
                                  ),
                                ),
                                CircleAvatar(
                                  radius: 15,
                                  backgroundColor: Colors.grey.shade50,
                                  child: Icon(
                                    FontAwesomeIcons.locationDot,
                                    color: Colors.red,
                                    size: 25,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              );
            },
          );
        }).toList(),
      ),
    );
  }
}
