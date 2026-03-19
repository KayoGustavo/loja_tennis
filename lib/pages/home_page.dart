import 'package:flutter/material.dart';
import 'package:loja_tennis/components/bottom_nav_bar.dart';
import 'package:loja_tennis/pages/cart_page.dart';
import 'package:loja_tennis/pages/shop_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //isso faz o inex para controlar o botão nav
  int _selecionarIndex = 0;

  void navigatorButton(int index){
    setState(() {
      _selecionarIndex = index;
    });
  }

  final List<Widget> _pages = [
    const ShopPage(),
    const CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: MyBottomNav(
        onTabChange: (index) => navigatorButton(index) ,
      ),
      body: _pages[_selecionarIndex],
    );
  }
}
