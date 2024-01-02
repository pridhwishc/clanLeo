import 'package:ecommerceapp/productsPage.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          color: Colors.grey,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 495,
          child: Image.network(
            "https://4kwallpapers.com/images/walls/thumbs_3t/1525.jpg",
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          top: 300,
          left: 45,
          child: Container(
            width: 325,
            height: 304,
            color: Colors.white,
            child: Column(
              children: [
                SizedBox(height: 35),
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  textAlign: TextAlign.left,
                  decoration: InputDecoration(
                    hintText: 'Email',
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                  ),
                ),
                SizedBox(height: 16),
                TextField(
                  textAlign: TextAlign.start,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                  ),
                ),
                SizedBox(height: 8.0),
                GestureDetector(
                  onTap: () {},
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 16),
                ElevatedButton(
                    child: Text('Login'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ProductsPage()),
                      );
                    }),
              ],
            ),
          ),
        ),
        Positioned(
          top: 272,
          left: 45,
          child: Text("LOGIN",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              )),
        ),
        Positioned(
            bottom: 10,
            left: 120,
            child: GestureDetector(
              onTap: () {},
              child: Center(
                child: Text(
                  'Create new account? Sign Up',
                  style: TextStyle(
                    color: Colors.black87,
                  ),
                ),
              ),
            )),
        Positioned(
          bottom: 20,
          left: 10,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 60,
            child: Column(
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.g_mobiledata_outlined),
                        iconSize: 30,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.facebook),
                        iconSize: 20,
                      ),
                    ]),
              ],
            ),
          ),
        )
      ],
    ));
  }
}
