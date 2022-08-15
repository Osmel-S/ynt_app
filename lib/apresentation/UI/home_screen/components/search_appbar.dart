import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/apresentation/UI/base_screen.dart';
import 'package:flutter_app/apresentation/UI/home_screen/home_screen.dart';
import 'package:flutter_app/data/repositories/recuperar_lista_de_icones.dart';
import 'package:flutter_app/domains/entities/lugar_entitty.dart';

class SearchAppbar extends StatefulWidget {
  @override
  _SearchAppbarState createState() => _SearchAppbarState();
}

class _SearchAppbarState extends State<SearchAppbar> {
  List<LugarEntity> filterList = [];
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            child: Icon(
              Icons.arrow_back,
              color: Colors.grey,
            ),
            onTap: () {
              SystemChannels.textInput.invokeMethod('TextInput.hide');

              Future.delayed(Duration(milliseconds: 100))
                  .then((value) => Navigator.of(context).pop());
            }),
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
        title: container(context),
      ),
      body: Container(
        color: Colors.white,
        child: ListView.builder(
          itemCount: filterList.length,
          itemBuilder: (_, index) {
            final lugarEntity = filterList[index];
            return ListTile(
              leading: CircleAvatar(
                radius: 20,
                backgroundImage: NetworkImage(
                  lugarEntity.urlPlacePhoto,

                )
              ),
              trailing: Icon(Icons.clear),
              title: Text(lugarEntity.name),
              onTap: () => Navigator.push(
                  _, MaterialPageRoute(builder: (context) => BaseScreen())),
            );
          },
        ),
      ),
    );
  }

  Widget container(BuildContext context) {
    return Container(

        // decoration: BoxDecoration(
        //   borderRadius: BorderRadius.all(Radius.circular(25)),
        // ),
        child: TextField(
      controller: controller,
      autofocus: false,
      decoration: InputDecoration(
        border: InputBorder.none,
        // prefixIcon: const Icon(
        //   Icons.search,
        //   color: Colors.grey,
        // ),
        hintText: 'Pesquise por lugares ou produtos...',
      ),
      // border: OutlineInputBorder(
      //     borderRadius: BorderRadius.circular(20),
      //     borderSide: const BorderSide(color: Colors.grey))),
      onChanged: (e) {
        setState(() {
          filterList = listaDestaques.where((element) {
            return element.name
                .toLowerCase()
                .contains(controller.text.toLowerCase());
          }).toList();
          if (e.isEmpty) {
            filterList = [];
          }
        });
      },
    ));
  }
}
