import 'package:flutter/material.dart';
import 'package:online_shop/modules/hot_offers_item.dart';
import 'package:online_shop/modules/product_card.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class shopping_page extends StatefulWidget {
  const shopping_page({super.key});

  @override
  State<shopping_page> createState() => _shopping_pageState();
}

class _shopping_pageState extends State<shopping_page> {
  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> hotOffers = [
      {
        "image": "assets/images/Back To School - (153 Free Downloads).jpeg",
        "title": "Back to school",
        "description": "Get Up to 50% Off on school supplay!"
      },
      {
        "image": "assets/images/🎉 30% OFF Just for You  Dreams mosaic crochet pattern and Tashkent beaded bag pattern on discount_.jpeg",
        "title": "30% Off!",
        "description": "Special deal on all T-Shirts."
      },
      {
        "image": "assets/images/25 De Desconto E Banner De Promoção De Venda PNG , Sexta Feira Clipart, Desconto, Oferta Imagem PNG e Vetor Para Download Gratuito.jpeg",
        "title": "Discounted Laptops",
        "description": "Save up to 25% on selected laptops."
      },
      {
        "image": "assets/images/Editable Text Banner Super Sale With Megaphone Transparent Background, Sale, Text Banner, Promo PNG Transparent Clipart Image and PSD File for Free Download.jpeg",
        "title": "Accessories Sale",
        "description": "Huge discounts on bags and watches."
      },
      {
        "image":"assets/images/Special offer label icon in flat style megaphone with discount vector illustration on isolated background sale sign business concept _ Premium Vector.jpeg",
        "title": "Clearance",
        "description": "Last chance deals before stock runs out."
      },
    ];
    final PageController _pageController = PageController();
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "ourproducts",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 137, 42, 226),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Featured Products",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 4,
              child: PageView(
                controller: _pageController,
                allowImplicitScrolling: true,
                children: [
                  Image.asset(
                      "assets/images/Logitech LIGHTSPEED Wireless 60 Percent Gaming….jpeg"),
                  Image.asset("assets/images/Smart Watches - itel.jpeg"),
                  Image.asset(
                      "assets/images/KZ Castor PRO dans l'oreille écouteur 2DD….jpeg")
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SmoothPageIndicator(
                controller: _pageController, // PageController
                count: 3,
                effect: const JumpingDotEffect(
                  // you can try ExpandingDotsEffect, JumpingDotEffect etc.
                  dotHeight: 12,
                  dotWidth: 12,
                  activeDotColor: Color.fromARGB(255, 137, 42, 226),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Shop Our Collection",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                crossAxisCount: 2,
                childAspectRatio: 0.7,
                children: const [
                  ProductCard(
                    imagePath: "assets/images/dont copy this.jpeg",
                    name: "Smart Pen",
                    price: "67\$",
                  ),
                  ProductCard(
                    imagePath: "assets/images/Smart Watches - itel.jpeg",
                    name: "Smart watch",
                    price: "79\$",
                  ),
                  ProductCard(
                    imagePath:
                        "assets/images/KZ Castor PRO dans l'oreille écouteur 2DD….jpeg",
                    name: "kastor headphones",
                    price: "38\$",
                  ),
                  ProductCard(
                    imagePath:
                        "assets/images/Wireless Mouse RGB Rechargeable Bluetooth Mice….jpeg",
                    name: "Wireless mouse",
                    price: "25\$",
                  ),
                  ProductCard(
                    imagePath:
                        "assets/images/Logitech LIGHTSPEED Wireless 60 Percent Gaming….jpeg",
                    name: "Wireless Keyboard",
                    price: "40\$",
                  ),
                  ProductCard(
                    imagePath:
                        "assets/images/a81c434f-e151-48d0-b97e-014ae1c57699.jpeg",
                    name: "Desginer Backpack",
                    price: "88\$",
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Hot Offers!!!",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold ,color: Colors.red),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: hotOffers.length,
              itemBuilder: (context, index) {
                final offer = hotOffers[index]; // pick each offer
                return HotOfferItem(
                  imagePath: offer["image"]!,
                  title: offer["title"]!,
                  description: offer["description"]!,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
