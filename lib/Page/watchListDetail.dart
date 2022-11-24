import 'package:counter_7/Models/myWatchlist.dart';
import 'package:flutter/material.dart';
import 'package:counter_7/Components/drawer.dart';
import 'package:counter_7/Page/myWatchListPage.dart';

class watchListDetail extends StatelessWidget {
  final WatchList data;
  watchListDetail({required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail'),
      ),
      drawer: DrawerClass(parentScreen: ScreenName.MyWatchListPageDetail),
      body: Column(
        children: [
          Text(
            "${data.title}",
            style: const TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            "${data.rating}/5 ",
            style: const TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold
            ),
          ),
          const SizedBox(height: 5),
          Text(
            "${data.date}",
            style: const TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold
            ),
          ),
          const SizedBox(height: 5),
          Text(
            "Apakah sudah ditonton? ${data.watched}",
            style: const TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold
            ),
          ),
          const SizedBox(height: 5),
          Text(
            "${data.review}",
            style: const TextStyle(
                fontSize: 15.0,
            ),
          ),
          const SizedBox(height: 5),
          TextButton(
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
            ),
            onPressed: () { Navigator.pop(context); },
            child: Text('Back'),
          )
        ],
      ),
    );
  }
}