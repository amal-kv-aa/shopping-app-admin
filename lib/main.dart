import 'package:admin_app/screens/add_products/provider/addprovider.dart';
import 'package:admin_app/screens/home/view/home.dart';
import 'package:admin_app/screens/productslist/provider/provider_home.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MultiProvider( 
    providers: [
      ChangeNotifierProvider(create: (_)=>Collectionprovider()),
      ChangeNotifierProvider(create: (_)=>PrudctaddProvider())
    ],
    child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
    const MaterialApp(
      home: Home(),
    );
  }
}