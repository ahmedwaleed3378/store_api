import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:store_api/screens/update_product.dart';

import '../models/product_model.dart';
import '../services/get_all_products_services.dart';
import '../widgets/item_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  static String id = 'HomePAge';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                FontAwesomeIcons.cartPlus,
                color: Colors.black,
              ))
        ],
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'New Trend',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 65),
        child: FutureBuilder<List<ProductModel>>(
          future: AllProductsService().getAllProducts(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              List<ProductModel> products = snapshot.data!;
              return GridView.builder(
                  itemCount: products.length,
                  clipBehavior: Clip.none,
                  gridDelegate:
                      const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1.5,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 100,
                  ),
                  itemBuilder: (context, index) {
                    return CustomCard(product: products[index]);
                  });
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
      ),
    );
  }
}
// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:store_api/models/product_model.dart';
// import 'package:store_api/services/get_all_products_services.dart';
// import 'package:store_api/widgets/item_widget.dart';

// class HomePage extends StatelessWidget {
//   const HomePage({super.key});
//   static String id = 'HomePage';
  
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         elevation: 0,
//         centerTitle: true,
//         title: const Text(
//           'New Trend',
//           style: TextStyle(color: Colors.black),
//         ),
//         actions: const [
//           Padding(
//             padding: EdgeInsets.all(12),
//             child: FaIcon(FontAwesomeIcons.cartShopping, color: Colors.black),
//           )
//         ],
//       ),
//       body:


      
      
//        FutureBuilder(
//         future: AllProductService().getAllProducts(),
//         builder: (context, snapshot) {
//           if(snapshot.hasData){
//             List<ProductModel> products =snapshot.data!;
//           return Padding(
//         padding: const EdgeInsets.only(top: 50,right: 16,left:16),
//         child: GridView.builder(
//           clipBehavior: Clip.none,
//           gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//             crossAxisCount: 2,
//             mainAxisSpacing: 100,childAspectRatio: 1.5,crossAxisSpacing: 10
//           ),
//           itemCount: products.length,
//           itemBuilder: (BuildContext context, int index) {
//             return ProductWidget(product: products[index], isFav: false);
//           },
//         ),
//       )
//       ;}
//           else{
//             return const Center(child: CircularProgressIndicator());
//           }
//         },
//       ),
        
//   );}
// }




