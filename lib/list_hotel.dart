import 'package:flutter/material.dart';
import 'package:kuis_e_123190057/detail_hotel.dart';
import 'data_hotel.dart';

class ListHotel extends StatefulWidget {
  const ListHotel({Key? key}) : super(key: key);

  @override
  State<ListHotel> createState() => _ListHotelState();
}

class _ListHotelState extends State<ListHotel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("List Hotel"),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            final DataHotel place = hotelList[index];
            return InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return DetailHotel(
                    nama: place.name,
                    gambar: place.imageUrl,
                    bintang: place.stars,
                    lokasi: place.location,
                    harga: place.roomPrice,
                    fasilitas: place.facility,

                  );
                }));
              },
              child: Card(
                child: Row(
                  children: [
                    Image.network(place.imageUrl[0], width: 64,),
                    Text(place.name),
                    Text(place.stars),
                    Text(place.roomPrice)
                  ],
                ),
              ),
            );
          },
          itemCount: hotelList.length,),
    );
  }
}


