import 'package:flutter/material.dart';
import 'package:store_api/screens/home_page.dart';
import 'package:store_api/screens/update_product.dart';

void main() {
  runApp(const StoreApp());
}
class StoreApp extends StatelessWidget {
  const StoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute:HomePage.id ,
      routes: {
        HomePage.id:(context) => const HomePage(),
        UpdateProduct.id:(context) =>  UpdateProduct(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}