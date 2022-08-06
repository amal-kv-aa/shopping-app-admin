import 'package:admin_app/utils/Textcustom/text.dart';
import 'package:flutter/material.dart';

class Cardformat extends StatelessWidget {
 const  Cardformat({Key? key,required this.image,required this.title}) : super(key: key);
  final String image;
  final String title;
  @override
  Widget build(BuildContext context) {
    return
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 120,
                  child: Stack(
                    alignment: AlignmentDirectional.center,
                    children: [
                      Container(
                        width: double.infinity,
                        decoration:  BoxDecoration(
                          border: Border.all(width: 2,color: Colors.white),
                          borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                image: AssetImage(
                                  image,
                                ),
                                fit: BoxFit.cover,
                                filterQuality: FilterQuality.high,
                                colorFilter: const ColorFilter.mode(
                                    Colors.white24, BlendMode.screen))),
                      ),
                       TextHead(text: title)
                    ],
                  ),
                ),
              );
  }
}