import 'package:flutter/material.dart';
import 'category_screen/category_screen.dart';
import 'home_screen/home_screen.dart';
import 'package:flutter_app/apresentation/UI/promotion_screen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BaseScreen extends StatefulWidget {
  @override
  _BaseScreenState createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
    List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    CategoryScreen(),
    Promotion(),
    Text(
      'Index 3: Settings',
      style: optionStyle,
    ),
  ];

  //batata
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home,color: Colors.black,),
            label: 'Home',
           // backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category,color: Colors.black,),
            label: 'Categorias',
            //backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.percent,color: Colors.black,),
            label: 'Promoções',
            //backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.user,color: Colors.black,),
            label: 'Eu',
          ),
        ],
        selectedLabelStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),
        currentIndex: _selectedIndex,
        backgroundColor: Colors.black,
        selectedItemColor: Colors.black,
        onTap: _onItemTapped,
      ),
    );
  }
}
