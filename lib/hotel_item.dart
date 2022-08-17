import 'package:flutter/material.dart';
import 'package:flutter_listview/pages/second_page.dart';
import 'package:flutter_listview/temp_db.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class HotelItem extends StatefulWidget {
  final Hotel hotel;
  const HotelItem({Key? key, required this.hotel}) : super(key: key);

  @override
  State<HotelItem> createState() => _HotelItemState();
}

class _HotelItemState extends State<HotelItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: InkWell(
        onTap: (){
          Navigator.pushNamed(context, SecondPage.routeName,arguments: widget.hotel);
        },
        child: Card(
          elevation: 10,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16)
          ),
          child: Column(
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    //borderRadius: BorderRadius.only(topRight: Radius.circular(16),topLeft: Radius.circular(16)),
                    child: Hero(
                      tag: widget.hotel.id,
                      child: Image.asset(
                        widget.hotel.image,
                        width: double.maxFinite,
                        height: 200,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    right: 0,
                    child: IconButton(
                      icon: Icon(widget.hotel.favorite ? Icons.favorite : Icons.favorite_border,color: Colors.red,),
                      onPressed: (){},
                    ),
                  )
                ],
              ),
              ListTile(
                title: Text(widget.hotel.name,style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                trailing: Text('\$${widget.hotel.price}',style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(widget.hotel.address),
                    Row(
                      children: [
                        RatingBar.builder(
                            itemSize: 20,
                            ignoreGestures: true,
                            initialRating: 3,
                            minRating: 1,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemPadding: EdgeInsets.symmetric(horizontal: 0),
                            itemBuilder: (context, value){
                              return Icon(Icons.star, color: Colors.amber,);
                            },
                            onRatingUpdate: (value){

                            }
                        ),
                        SizedBox(width: 10,),
                        Text('80 reviews'),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
