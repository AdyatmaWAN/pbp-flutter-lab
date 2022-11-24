import 'package:flutter/material.dart';
import 'package:counter_7/Components/drawer.dart';
import 'package:counter_7/Utils/fetchMyWatchList.dart';
import 'package:counter_7/Page/watchListDetail.dart';

class MyWatchListPage extends StatefulWidget {
  const MyWatchListPage({super.key});
  @override
  State<MyWatchListPage> createState() => _MyWatchListPageState();
}

class _MyWatchListPageState extends State<MyWatchListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Watch List'),
      ),
      drawer: DrawerClass(parentScreen: ScreenName.MyWatchListPage),
      body: FutureBuilder(
        future: fetchWatchList(),
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.data == null) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else {
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (_, index) => InkWell(
                  child: Container(
                      margin: const EdgeInsets.symmetric(
                        horizontal: 50, vertical: 12),
                      padding: const EdgeInsets.all(20.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30.0),
                        boxShadow: const [
                          BoxShadow(color: Colors.black, blurRadius: 2.0)
                        ]
                      ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "${snapshot.data![index].title}",
                          style: const TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                        "${snapshot.data![index].rating}/5 ",
                        style: const TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey
                        ),
                      ),
                        const SizedBox(height: 5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              " ${snapshot.data![index].date}",
                              style: const TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => watchListDetail(
                        data: snapshot.data![index],
                      )
                    )
                  );
              }
              )
            );
            }
          }

      ),
    );
  }
}

