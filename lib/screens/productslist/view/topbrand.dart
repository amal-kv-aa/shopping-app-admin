import 'package:admin_app/screens/productslist/models/model.dart';
import 'package:admin_app/screens/productslist/provider/provider_home.dart';
import 'package:admin_app/screens/productslist/view/widgets/items.dart';
import 'package:admin_app/utils/Textcustom/text.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Collections extends StatelessWidget {
 const Collections({Key? key,required this.text,required this.items}) : super(key: key);
 final String? text;
 final String? items;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: 
        ListView(
           children: [
            Center(child: TextHead( text:text!,color: Colors.black,)),
             SizedBox(
              height: 700,
               child: StreamBuilder<List<Item>>(
                    stream: context.watch<Collectionprovider>().readUser(items),
                    builder: (context, snapshot) {
                      if (snapshot.hasError) {
                        return Text(
                          "Somthing went wrong${snapshot.error}",
                          style: const TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                        );
                      } else if (snapshot.hasData) {
                        final user = snapshot.data;
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ListView(
                                scrollDirection: Axis.vertical,
                            children: user!
                                .map(CardItems(context: context,name: items).builditems)
                                .toList(),
                          ),
                        );
                      }
                      return const Center(
                        child: CircularProgressIndicator(
                        color: Colors.green,
                      ));
                    },
                  ),
             ),
           ],
         ),
      ),
    );
  }
//  Future<String> getDownloadURL()async{
//     img=await FirebaseStorage.instance.ref('user/lions.jpg').getDownloadURL();
//     return img;
//   }
}
