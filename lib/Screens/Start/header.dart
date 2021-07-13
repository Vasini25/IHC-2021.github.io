import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({Key? key, required this.changeScreen}) : super(key: key);
  final Function changeScreen;

  Widget logo() {
    return Image(
      image: AssetImage('assets/logo.jpeg'),
    );
  }

  Widget searchbar() {
    return Container(
      color: Colors.grey,
      child: Row(
        children: [
          Icon(Icons.search),
          Container(width: 70),
        ],
      ),
    );
  }

  Widget location() {
    return Container(
      child: Row(
        children: [
          Text('São Carlos - SP'),
          Icon(Icons.location_city),
        ],
      ),
    );
  }

  Widget shoppingCart() {
    return TextButton(
      onPressed: changeScreen('carrinho'),
      child: Container(
        child: Row(
          children: [
            Text('Carrinho'),
            Icon(Icons.shopping_cart),
          ],
        ),
      ),
    );
  }

  Widget login() {
    return Container(
      child: Row(
        children: [
          Text('Carrinho'),
          Icon(Icons.person),
        ],
      ),
    );
  }

  Widget accessibility() {
    return Container(
      child: Row(
        children: [
          Icon(Icons.accessibility, color: Colors.blueAccent),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: logo()),
        Expanded(child: searchbar()),
        Expanded(child: location()),
        Expanded(child: shoppingCart()),
        Expanded(child: login()),
        Expanded(child: accessibility()),
      ],
    );
  }
}