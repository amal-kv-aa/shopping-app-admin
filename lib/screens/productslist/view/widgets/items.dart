import 'package:admin_app/screens/productslist/models/model.dart';
import 'package:admin_app/screens/productslist/provider/provider_home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CardItems {
  CardItems({required this.context,required this.name});
  String? name;
  BuildContext context;
  Widget builditems(Item user) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
            height: 120,
            child: Card(
              child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      SizedBox(height: 100,
                      child: Image.network(user.image),)
                    ],
                  ),Column(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(user.name)
                    ],
                  ),Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(children: [
                        IconButton(onPressed: (){}, icon:const Icon(Icons.edit,color: Colors.green,)),
                        IconButton(onPressed: (){
                          context.read<Collectionprovider>().deleteProduct(name,user.id);
                        },icon:const Icon(Icons.delete,color: Colors.red,))
                      ],)
                    ],
                  )
                ],
              ),
            )));
  }
}
