import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/apresentation/UI/place_screen.dart';
import 'package:flutter_app/data/repositories/recuperar_lista_de_icones.dart';
import 'package:flutter_app/domains/entities/product_entity.dart';

class Promotion extends StatefulWidget {
  @override
  _PromotionState createState() => _PromotionState();
}

class _PromotionState extends State<Promotion> {

   int?  indexProductEntity;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // shape: RoundedRectangleBorder(
        //   borderRadius: BorderRadius.only(
        //       bottomLeft: Radius.circular(50),
        //       bottomRight: Radius.circular(50)),
        // ),
        //backgroundColor: Color.fromRGBO(255, 0, 0, 1),
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
        title: Text(
          "PRINCIPAIS",
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.black, fontSize: 30),
        ),
        // systemOverlayStyle: SystemUiOverlayStyle(
        //
        //     //systemNavigationBarColor:  Color.fromRGBO(255, 0, 0, 1),
        //     // statusBarColor: Color.fromRGBO(68, 64, 64, 0.5),
        //     ),
      ),
      body: Container(
          child: ListView.builder(
              itemCount: listaPrincipais.length,
              itemBuilder: (_, index) {

                indexProductEntity = listaPrincipais[index].productEntity!.length;
                print(indexProductEntity);
                return Container(
                    //margin: const EdgeInsets.all(5.0),
                    margin: const EdgeInsets.only(top: 20),
                    padding: const EdgeInsets.all(5),
                    child: Column(
                      // mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PlaceScreen()),
                            );
                          },
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CircleAvatar(
                                    backgroundColor:
                                        Color.fromRGBO(255, 0, 92, 0.8),
                                    radius: 36,
                                    child: CircleAvatar(
                                      radius: 34,
                                      backgroundImage: NetworkImage(
                                          listaPrincipais[index].urlPlacePhoto),
                                    )),
                                SizedBox(
                                  width: 12,
                                ),
                                Text(
                                  listaPrincipais[index].name,
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                                Expanded(
                                  child: Container(),
                                ),
                                Icon(
                                  Icons.arrow_forward,
                                  size: 50,
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 6.9),
                          height: 150,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: indexProductEntity,
                              itemBuilder: (_, idx) {


                                return Padding(
                                    padding: const EdgeInsets.all(1.0),
                                    child: Card(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(15.0),
                                      ),
                                      elevation: 4,
                                      color: Colors.white,
                                      child: Container(
                                        width: 100,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          // crossAxisAlignment: CrossAxisAlignment.s,
                                          children: [
                                            Expanded(
                                              child: Container(
                                                child: Image.network(
                                                  listaPrincipais[index].productEntity![idx].photoUrl,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            Divider(height: 1.0),
                                            Text(
                                              listaPrincipais[index].productEntity![idx].name,
                                             // 'teste',
                                              overflow: TextOverflow.ellipsis,
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                            Text(
                                               listaPrincipais[index].productEntity![idx].price.toString(),

                                              style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.green),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ));
                              }),
                        ),
                      ],
                    ));
              })),
    );
  }
}
