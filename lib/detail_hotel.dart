import 'package:flutter/material.dart';
import 'data_hotel.dart';

class DetailHotel extends StatefulWidget {
  final String nama;
  final gambar;
  final String bintang;
  final String lokasi;
  final String harga;
  final fasilitas;

  const DetailHotel({Key? key,
    required this.nama,
    required this.gambar,
    required this.bintang,
    required this.lokasi,
    required this.harga,
    required this.fasilitas
  }) : super(key: key);

  @override
  State<DetailHotel> createState() => _DetailHotelState();
}

class _DetailHotelState extends State<DetailHotel> {
  @override
  Widget build(BuildContext context) {
    var nama;
    return Scaffold(
      appBar: AppBar(
        title: Text("${widget.nama}"),
      ),
      body: Container(
        child: Column(
          children: [
            tampilan()
          ],
        ),
      ),
    );
  }

  Widget tampilan() {
    return InkWell(
      onTap: () {},
      child: Card(
        clipBehavior: Clip.antiAlias,
        margin: const EdgeInsets.all(10),
        child: Row(
          children: [
            Text("${widget.bintang}, ${widget.lokasi}, ${widget.harga} ")
          ],
        ),
      ),
    );
  }
}
