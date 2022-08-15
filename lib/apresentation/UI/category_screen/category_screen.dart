import 'package:flutter/material.dart';
import 'package:flutter_app/apresentation/UI/category_screen/components/icon_list.dart';
import 'package:flutter_app/data/repositories/recuperar_lista_de_icones.dart';

class CategoryScreen extends StatefulWidget {
  @override
  _CategoryScreenState createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 10.0),
        child: ListView.builder(
            itemCount: listIcon.length,
            itemBuilder: (_, index) {
              return GestureDetector(
                onTap: () {},
                child: Container(

                  margin: const EdgeInsets.symmetric(horizontal: 5),

                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(width:0.5,color: Colors.grey.shade400)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(

                          height: 50,
                          width: 50,
                          color: Colors.white,
                          child: Icon(listIcon[index].icon)),

                      Container(

                          color: Colors.white,
                          child: Text(listIcon[index].name!,style: TextStyle(fontWeight: FontWeight.w500),)),
                      Expanded(child: Container()),
                    ],
                  ),
                ),
              );
            }));
  }
}
