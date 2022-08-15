import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PlaceScreen extends StatefulWidget {
  @override
  _PlaceScreenState createState() => _PlaceScreenState();
}

class _PlaceScreenState extends State<PlaceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 50,
            ),
            Container(
              height: 200,
              color: Colors.white,
              child: Stack(
                children: [
                  Container(
                    height: 160,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                             // 'https://classic.exame.com/wp-content/uploads/2020/06/div-2-2.jpg?quality=70&strip=info&w=1024',
                              'https://i.pinimg.com/474x/c9/f9/d0/c9f9d0fc7859e8675fec0bbe210a680c.jpg'
                            ),
                            fit: BoxFit.cover)),
                  ),
                  Positioned(
                    bottom: .0,
                    left: .0,
                    right: .0,
                    child: Center(
                      child: CircleAvatar(
                        backgroundColor: Colors.grey.shade300,
                        radius: 40.0,
                        child: CircleAvatar(
                          radius: 38.0,
                          backgroundImage: NetworkImage(
                              //'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQN8qHWO7RCAQoo3prvq1DVxyMb9iq7zQwJ5caMxl0vC3wiIWA7NXnNwk884yLUr-BXyuo&usqp=CAU'
                            'https://www.crushpixel.com/static18/preview2/stock-photo-ws-initial-letter-gold-calligraphic-feminine-floral-hand-drawn-heraldic-monogram-antique-vintage-style-luxury-logo-design-premium-vector-3036035.jpg'
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Text(
              "Distribuidora WS",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 3.0),
            Text(
              "Compras na loja · Retirada na loja · Entrega",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey),
            ),
            Container(
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.all(10.0),
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.grey.shade50,
                    child: Icon(
                      FontAwesomeIcons.whatsapp,
                      color: Colors.green,
                      size: 35,
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.grey.shade50,
                    child: Icon(
                      FontAwesomeIcons.instagram,
                      color: Colors.red,
                      size: 35,
                    ),
                  ),
                ],
              ),
            ),
            // Container(
            //   height: 50,
            //   margin: const EdgeInsets.symmetric(horizontal: 12),
            //   decoration: BoxDecoration(
            //       color: Color.fromRGBO(255, 65, 65, 1),
            //       borderRadius: BorderRadius.only(topLeft: Radius.circular(25),topRight:Radius.circular(25),)
            //   ),
            //   child: Align(
            //       alignment: Alignment.center,
            //       child: Text("OFERTA DE HOJE",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 35,color: Colors.white),)),
            // ),
            // Expanded(
            //   child: ListView.builder(
            //       scrollDirection: Axis.horizontal,
            //       itemCount: 5,
            //       itemBuilder: (_, index) {
            //         return _buildContainer();
            //       }),
            // ),
            _buildContainer()
          ],
        ),
      ),
    );
  }

  Container _buildContainer() {
    return Container(
      height: 450,
      //margin: const EdgeInsets.symmetric(horizontal: 15.0),
      child: ListView.builder(
          padding: const EdgeInsets.all(1),
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          itemBuilder: (_,index){
        return Card(
          color: Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0),
          ),
          elevation: 2,
          child: Container(
            width: 300,
            decoration: BoxDecoration(
                color: Colors.white,
                // borderRadius: BorderRadius.only(bottomLeft: Radius.circular(25),bottomRight: Radius.circular(25))
                borderRadius: BorderRadius.all(Radius.circular(25))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 60,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(255, 65, 65, 1),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25),
                      )),
                  child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "OFERTA DE HOJE",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 35,
                            color: Colors.white),
                      )),
                ),
                Container(
                  height: 250,
                //  margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                  decoration: BoxDecoration(
                    color: Colors.purple,
                    image: DecorationImage(
                     filterQuality: FilterQuality.high,
                      image: NetworkImage(
                          'https://imgs.casasbahia.com.br/55048304/1g.jpg?imwidth=292',

                      ),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Divider(height: 1.5,),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Caixa Corona",
                        style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "corona 330 ml 6 unidades",
                        style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                      ),
                      Text("R\$ 65,00",
                          style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                              color: Colors.green))
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      })
    );
  }
}
