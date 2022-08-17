import 'package:flutter/material.dart';
import 'package:flutter_listview/hotel_item.dart';
import 'package:flutter_listview/temp_db.dart';

class HomePage extends StatefulWidget {
  static const String routeName = '/';
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Size size;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorite Hotel'),
      ),
      body: ListView.builder(
        itemCount: hotels.length,
        itemBuilder: (context, index){
          return HotelItem(hotel: hotels[index]);
        },
      ),
    );
  }

  ListView buildListView() {
    return ListView(
      //scrollDirection: Axis.horizontal,
      children: items.map((item) => SizedBox(
        width: size.width,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            tileColor: Colors.grey,
            title: Text(item),
          ),
        ),
      )).toList(),
    );
  }
}
