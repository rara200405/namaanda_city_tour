import 'package:flutter/material.dart';
import 'package:flutter/cached_network_image/cached_network_image';
import 'package:citytour/models/citytour,dart';


class DetailScreen extends StatelessWidget {
final tour;

const DetailScreen({super.key, required this.tour});

@override
    Widget build(BuildContext context) {
      return Scaffold(
          body: SingleChildScrollView( // Tambahkan SingleChildScrollView di sini
            child: Column(
              children: [
              Stack(
              children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
          child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
              child: Image.asset(
            tour.imageAsset,
            width: double.infinity,
              height: 300,
              fit: BoxFit.cover,
),
          ),
        ),
//padding back button



      Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16, vertical: 32),
        child: Container(
        decoration: BoxDecoration(
        color: Colors.deepPurple[100]?.withOpacity(0.8),
        shape: BoxShape.circle,
          ),
        child: IconButton(
        onPressed: () {},
        icon: const Icon(Icons.arrow_back),
          ),
        ),
      ),
    ],
              ),
//detail info
      Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          SizedBox(height: 16),
// info atas(nama tour dan tombol favorit)
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
          Text(
          tour.name,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
          IconButton(
            onPressed: () {},
              icon: Icon(Icons.favorite_border),
          ),
        ],
          ),

              Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Divider(color: Colors.deepPurple.shade100),
                    Text(
                  'Galeri',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    ),
                ), // Koma sudah ada
                        SizedBox(height: 10), // Ukuran box
                            SizedBox(
                  height: 100,
                  child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: tour.imageUrls.length,
                    itemBuilder: (context, index) {
                      return Padding(
                      padding: EdgeInsets.only(left: 8),
                        child: GestureDetector(
                        onTap: () {},
                          child: Container(
                          decoration: BoxDecoration(),
                            child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
//child: CachedNetworkImage(
//imageUrl: tour.imageUrls[index],
//),
                  ),
                  ),
                ),
            );
          },
        ),
                            ),
                  SizedBox(height: 4),
                      Text('Tap untuk memperbesar', style: TextStyle(),
                    ),
                        ],
                          ),
                      ),
                    ],
                  ),
          ),
      );
            row (
            children:[
              text("EXPLORE,ENJOY,EXPERIENCE",
              syle :TextStyle(fontWeight:FontWeight.bold)),

  ],
  ),
  container(
  margin:EdgeInsets.only(top:16),
  child:Text(
  "Expolone the charm of our city's "
  ),
  ),
  },
  ),
}
}


