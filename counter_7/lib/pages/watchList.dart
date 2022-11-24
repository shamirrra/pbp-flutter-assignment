import 'package:counter_7/data_source/watchListDataSource.dart';
import 'package:counter_7/pages/watchListDetail.dart';
import 'package:counter_7/drawer.dart';
import 'package:flutter/material.dart';

import '../pages/budgetForm.dart';
import '../models/watchItem.dart';
import '../widgets/watchListCard.dart';

class MyWatchListPage extends StatefulWidget {
  final List<Budget> data;
  const MyWatchListPage({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  State<MyWatchListPage> createState() => _MyWatchListPageState();
}

class _MyWatchListPageState extends State<MyWatchListPage> {
  late Future<List<watchItem>> _futureWatchList;
  late WatchListRemoteDataSource _remoteDataSource;

  @override
  void initState() {
    _remoteDataSource = WatchListRemoteDataSource();
    _futureWatchList = _remoteDataSource.fecthWatchList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('My Watch List'),
          elevation: 0,
        ),
        drawer: const MyDrawer(),
        body: Center(
          child: FutureBuilder(
            future: _futureWatchList,
            builder: (context, AsyncSnapshot snapshot) {
              if (snapshot.data == null) {
                return const Center(child: CircularProgressIndicator());
              } else {
                return !snapshot.hasData
                    ? Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text(
                          'You doesnt have any watch list yet :(',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.deepPurple.shade200,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    : ListView.builder(
                        itemCount: snapshot.data.length,
                        itemBuilder: (context, index) => Padding(
                          padding: const EdgeInsets.fromLTRB(12, 12, 12, 0),
                          child: GestureDetector(
                            onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => WatchItemDetail(
                                  data: widget.data,
                                  WatchItem: snapshot.data[index],
                                ),
                              ),
                            ),
                            child: WacthItemCard(
                              WatchItem: snapshot.data[index],
                            ),
                          ),
                        ),
                        padding: const EdgeInsets.only(bottom: 12),
                      );
              }
            },
          ),
        ),
      );
}
