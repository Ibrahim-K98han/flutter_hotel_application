final List<String> items = List.generate(100, (index) => 'Item ${index + 1}');
final List<Hotel> hotels = [
  Hotel(id: 1, name: 'Pan Pacific Hotel Sonargaon', address: 'Kazi Nazrul Islam Aveniu Dhaka', rating: 6.0, price: 16000, description: 'Pan Pacific Hotels Group is a member of Singapore-listed UOL Group Limited, one of Asia’s most established hotel and property companies with an outstanding portfolio of investment and development properties.', image: 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1a/36/a3/58/international-suite.jpg?w=1100&h=-1&s=1'),
  Hotel(id: 2, name: 'Six Seasons Hotel', address: 'Nr 96 House Nr 19 Road Gulshan 2, Dhaka City 1212 Bangladesh', rating: 5.0, price: 6000, description: 'Even before the shovel first hit the ground to build the hotels foundation, we had one goal in mind to provide unrivaled luxury for all of our guests.', image: 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/15/21/e4/dc/six-seasons-hotel.jpg?w=1200&h=-1&s=1'),
  Hotel(id: 3, name: 'Sea Pearl Beach Resort & Spa Coxs Bazar', address: 'Jaliapalong, Inani, Ukhia, Coxs Bazar 4750 Bangladesh', rating: 5.0, price: 5000, description: 'Located on worlds longest undivided coastline - Coxs Bazar. > Largest Eco Resort located on Inani Beach - Excellent coral viewing. ', image: 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/15/99/54/30/swimming-pool.jpg?w=1200&h=-1&s=1'),
  Hotel(id: 4, name: 'Radisson Blu Chattogram Bay View', address: 'SS Khaled Road Lalkhan Bazar, Chittagong City 4000 Bangladesh', rating: 8.0, price: 7000, description: 'As the city’s premiere upscale international hotel, the Radisson Blu Chattogram Bay View offers guests an unforgettable lodging experience in Chattogram. ', image: 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/21/72/48/2f/exterior.jpg?w=1100&h=-1&s=1'),
  Hotel(id: 5, name: 'Radisson Blu Dhaka Water Garden', address: 'Airport Road, Dhaka Cantonment, Dhaka City 1206 Bangladesh', rating: 7.0, price: 5000, description: 'Finding an ideal family-friendly hotel in Dhaka City does not have to be difficult. Welcome to Radisson Blu Dhaka Water Garden, a nice option for travelers like you.', image: 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/21/72/27/7e/exterior.jpg?w=1100&h=-1&s=1'),
];

class Hotel{
  int id;
  String name;
  String address;
  double rating;
  double price;
  String description;
  bool favorite;
  String image;

  Hotel({
    required this.id,
    required this.name,
    required this.address,
    required this.rating,
    required this.price,
    required this.description,
    this.favorite = false,
    required this.image});
}