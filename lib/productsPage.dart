import 'package:ecommerceapp/productsViewPage.dart';
import 'package:flutter/material.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text("Products", style: TextStyle(color: Colors.black)),
          centerTitle: true,
          leading: IconButton(
            onPressed: () {Navigator.pop(context);},
            icon: Icon(
              Icons.logout,
              color: Colors.black,
            ),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.add_box,
                  color: Colors.black,
                ))
          ],
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Colors.white,
          child: ListView(
            children: [
              Column(
                children: [
                  ProductPage(),
                  ProductPage(),
                  ProductPage(),
                  ProductPage()
                ],
              )
            ],
          ),
        ));
  }
}

class ProductPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0), // Adjust padding as needed
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ProductWidget(
            imageUrl:
                'https://t3.ftcdn.net/jpg/04/28/85/92/360_F_428859200_CTHoIdJdz7TdhGHE57uiwlUEh88iqS9t.webp',
            companyname: 'Mango',
            productName: 'T-Shirt SPANISH',
            price: '\$9',
          ),
          ProductWidget(
            companyname: 'Dorothy Perkins',
            imageUrl:
                'https://t4.ftcdn.net/jpg/06/31/00/21/240_F_631002120_Q8Lr44ekH7ovO8dg33z7q9tpqOHCwt4U.jpg',
            productName: 'Blouse',
            price: '\$14',
          ),
        ],
      ),
    );
  }
}

class ProductWidget extends StatelessWidget {
  final String imageUrl;
  final String companyname;
  final String productName;
  final String price;

  ProductWidget({
    required this.imageUrl,
    required this.productName,
    required this.price,
    required this.companyname,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GestureDetector(
          onTap: () {
            {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProductViewPage()),
              );
            }
          },
          child: Container(
            width: 160,
            height: 210,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                  child: Image.network(
                    imageUrl,
                    height: 138,
                    fit: BoxFit.cover,
                  ),
                ),
                //  SizedBox(height: 8),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        companyname,
                        style: TextStyle(
                          fontSize: 8,
                        ),
                      ),
                      SizedBox(height: 2),
                      Text(
                        productName,
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 2),
                      Text(
                        'Price: $price',
                        style: TextStyle(fontSize: 10, color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          bottom: 2,
          right: 2,
          child: CircleAvatar(
            radius: 13,
            backgroundColor: Colors.white,
            child: Icon(Icons.favorite_border, color: Colors.grey[400]),
          ),
        )
      ],
    );
  }
}
