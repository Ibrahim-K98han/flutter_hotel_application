import 'package:flutter/material.dart';
import 'package:flutter_listview/temp_db.dart';

class SecondPage extends StatefulWidget {
  static const String routeName = '/second_page';
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  late Hotel hotel;

  @override
  void didChangeDependencies() {
    hotel = ModalRoute.of(context)!.settings.arguments as Hotel;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(hotel.name),
      ),
      body: ListView(
        children: [
          Hero(
            tag: hotel.id,
            child: Image.network(
              hotel.image,
              width: double.maxFinite,
              height: 350,
              fit: BoxFit.cover,
            ),
          ),
          ListTile(
            title: Text(hotel.name),
            subtitle: Text(hotel.address),
            trailing: Text('\$${hotel.price}'),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(hotel.description),
          )
        ],
      ),
    );
  }
}
