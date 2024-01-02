import 'package:flutter/material.dart';

class ProductViewPage extends StatelessWidget {
  const ProductViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
            child: Text(
          "Product View",
          style: TextStyle(color: Colors.black),
        )),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_outlined,
            color: Colors.black,
          ),
        ),
      ),
      body: ListView(
        children: [
          ImageScroll(),
          Container(
            height: 300,
            color: Colors.white,
            child: Column(
              children: [
                Row(
                    // DropdownButton(items: items, onChanged: onChanged),-> dropdown button to select size)
                    // DropdownButton(items: items, onChanged: onChanged),-> dropdown button to select color)
                    //favorite icon
                    ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "H&M",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 35,
                      ),
                    ),
                    Text("\$5000",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        )),
                  ],
                ),
                Center(
                    child: Text(
                        "Experience unparalleled comfort and style with our premium Tshirt collection. Crafted from high-quality, breathable cotton, these shirts offer a soft touch against your skin. The timeless design ensures versatility, making them perfect for any casual occasion. Elevate your wardrobe with our T-shirts that effortlessly blend fashion and comfort, embodying the perfect balance of laidback charm and contemporary sophistication."))
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ImageScroll extends StatelessWidget {
  final List<String> images = [
    'https://t4.ftcdn.net/jpg/06/17/92/93/240_F_617929369_bfcjWgSluJTcItq1q0QGppNAIAAIN1a8.jpg',
    'https://t4.ftcdn.net/jpg/06/28/39/09/240_F_628390904_XHgs4tXeV5qeUcOHzzEOo0gc9KbiK7Wv.jpg',
    'https://t4.ftcdn.net/jpg/06/26/57/69/240_F_626576914_DOD3dTA8oTLWbWOXlKoM0ccHiBEicoRR.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350, // Adjust the height as needed
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: images.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(1.0),
            child: Image.network(
              images[index],
              width: 290.0, // Adjust the width of each image
              fit: BoxFit.cover,
            ),
          );
        },
      ),
    );
  }
}
