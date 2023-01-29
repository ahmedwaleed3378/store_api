




import 'package:flutter/material.dart';

import '../models/product_model.dart';
import '../screens/update_product.dart';

class CustomCard extends StatelessWidget {
  CustomCard({
    required this.product,
    Key? key,
  }) : super(key: key);

  ProductModel product;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
         Navigator.pushNamed(context, UpdateProduct.id ,arguments: product);
      },
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                blurRadius: 50,
                color: Colors.grey.withOpacity(.1),
                spreadRadius: 20,
                offset:const Offset(10, 10),
              ),
            ]),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              elevation: 10,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product.title.substring(0, 6),
                      style:const TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                      ),
                    ),
                  const  SizedBox(
                      height: 3,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          r'$' '${product.price.toString()}',
                          style:const TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      const  Icon(
                          Icons.favorite,
                          color: Colors.red,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            right: 32,
            top: -60,
            child: Image.network(
              product.image,
              height: 100,
              width: 100,
            ),
          )
        ],
      ),
    );
  }
}
// import 'package:flutter/material.dart';
// import 'package:store_api/models/product_model.dart';

// class ProductWidget extends StatelessWidget {
//   // ignore: use_key_in_widget_constructors
//   const ProductWidget({required this.product, required this.isFav});
//   // final String imgPath;
//   final bool isFav;
//   // final String price;
//   // final String name ;
//   final ProductModel product;
//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       child: Center(
//         child: Stack(
//           clipBehavior: Clip.none,
//           children: [
//             Container(
//               decoration: BoxDecoration(boxShadow: [
//                 BoxShadow(
//                     blurRadius: 40,
//                     color: Colors.grey.withOpacity(0.2),
//                     spreadRadius: 0,
//                     offset: const Offset(10, 10))
//               ]),
//               width: 220,
//               height: 130,
//               child: Padding(
//                 padding:
//                     const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
//                 child: Card(
//                   elevation: 10,
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.end,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         product.title.substring(0,10),
//                         style: const TextStyle(
//                             fontSize: 20,
//                             color: Color.fromARGB(255, 71, 71, 71)),
//                         textAlign: TextAlign.left,
//                       ),
//                    const   SizedBox(
//                         height: 6,
//                       ),
//                       Row(
//                         children: [
//                           Text('\$${product.price}'),
//                           const Spacer(),
//                           Icon(
//                             Icons.favorite,
//                             color: isFav ? Colors.red : Colors.grey,
//                           )
//                         ],
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//             Positioned(
//               right: 32,
//               top: -60,
//               child: Image.network(
//                 product.image,
//                 height: 100,
//                 width: 100,
//                 fit: BoxFit.fill,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
