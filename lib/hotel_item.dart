import 'package:flutter/material.dart';
import 'package:flutter_listview/temp_db.dart';

class HotelItem extends StatefulWidget {
  final Hotel hotel;
  const HotelItem({Key? key, required this.hotel}) : super(key: key);

  @override
  State<HotelItem> createState() => _HotelItemState();
}

class _HotelItemState extends State<HotelItem> {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16)
      ),
      child: Column(
        children: [
          Stack(
            children: [
              Image.network(
                widget.hotel.image,
                width: double.maxFinite,
                height: 200,
                fit: BoxFit.cover,
              ),
              Positioned(
                right: 0,
                child: IconButton(
                  icon: Icon(widget.hotel.favorite ? Icons.favorite : Icons.favorite_border),
                  onPressed: (){},
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
