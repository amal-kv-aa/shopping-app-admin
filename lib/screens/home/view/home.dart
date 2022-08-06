import 'package:admin_app/screens/add_products/view/addproduct_provider.dart';
import 'package:admin_app/screens/home/view/widgets/cardstyle/cardstyle.dart';
import 'package:admin_app/screens/productslist/view/topbrand.dart';
import 'package:admin_app/utils/Textcustom/text.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black),
      body: Container(
        color: Colors.black,
        width: double.infinity,
        height: double.infinity,
        child: ListView(
          children: [
            Container(
              height: size.height * 0.2,
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                        'assets/images/5aa413ae2c7cd9cb683c6ec4893809df.jpg'),
                    fit: BoxFit.cover),
              ),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (ctx) => const AddNewProduct()));
                },
                child: const Center(
                  child: ColoredBox(
                      color: Colors.black54,
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: TextHead(
                          text: 'add a new product',
                          fontsize: 30,
                          color: Colors.white,
                        ),
                      )),
                ),
              ),
            ), SizedBox(
              height: size.height * 0.03,
            ),
            const 
            Center(
                child: TextHead(
                    text: 'products collections', color: Colors.white)),
            SizedBox(
              height: size.height * 0.03,
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (ctx) => const Collections(
                          text: 'top brands',
                          items: 'items',
                        )));
              },
              child: const Cardformat(
                  image: 'assets/images/most-popular-shoe-brand.jpg',
                  title: 'Brands'),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (ctx) => const Collections(
                          text: 'suggetions',
                          items: 'suggestions',
                        )));
              },
              child: const Cardformat(
                  image: 'assets/images/3afe1b47e7c1e59c51f373edf0cebfad.jpg',
                  title: 'suggetion products'),
            )
          ],
        ),
      ),
    );
  }
}
