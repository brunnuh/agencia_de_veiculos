import 'package:agencia_de_veiculos/repositories/parse_repository.dart';
import 'package:agencia_de_veiculos/view/available/available_screen.dart';
import 'package:agencia_de_veiculos/view/sold/sold_screen.dart';
import 'package:flutter/material.dart';

class BaseScreen extends StatefulWidget {
  @override
  _BaseScreenState createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          AvailableScreen(),
          SoldScreen(),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        color: Color(0xff10101E),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
                icon: Icon(
                  Icons.directions_car_sharp,
                  color: Colors.white,
                ),
                onPressed: () async {
                  await ParseRepository().getVehicleAvailable();
                }),
            IconButton(
                icon: Icon(Icons.electric_car, color: Colors.white),
                onPressed: () {}),
            IconButton(
                icon: Icon(Icons.car_rental, color: Colors.white),
                onPressed: () {}),
            IconButton(
                icon: Icon(Icons.local_car_wash_outlined, color: Colors.white),
                onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
