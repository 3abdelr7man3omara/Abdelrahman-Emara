import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String imagePath;
  final String name;
  final String price;
  // final VoidCallback onAddToCart;

  const ProductCard({
    super.key,
    required this.imagePath,
    required this.name,
    required this.price,
    // required this.onAddToCart,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.90),
            spreadRadius: 2,
            blurRadius: 5,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(16),
              topRight: Radius.circular(16),
            ),
            child: Image.asset(
              imagePath,
              height: MediaQuery.of(context).size.height/4.4,
              width: double.infinity,
              fit: BoxFit.fill,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: Column(
              children: [
                Text(name, style: const TextStyle(fontWeight: FontWeight.bold)),
                Text(price, style: const TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          IconButton(
            icon: const Icon(Icons.add_shopping_cart,
                color: Color.fromARGB(255, 137, 42, 226)),
            onPressed: () { ScaffoldMessenger.of(context).showSnackBar( const SnackBar( content: Text("Item added to the cart"), showCloseIcon: true,duration: Duration(milliseconds:500 ), ), ); },
          ),
        ],
      ),
    );
  }
}
