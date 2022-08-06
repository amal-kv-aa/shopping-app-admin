import 'package:admin_app/screens/productslist/models/model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';

class Collectionprovider with ChangeNotifier{
  Stream<List<Item>> readUser(name) {
    return 
    FirebaseFirestore.instance
        .collection(name)
        .snapshots()
        .map((snapshot) => snapshot.docs
            .map((doc) => Item.fromJson(doc.data()))
            .toList());
  }
  deleteProduct(name,id)async{
    final product=FirebaseFirestore.instance.collection(name).doc(id);
   await product.delete();
  }
}