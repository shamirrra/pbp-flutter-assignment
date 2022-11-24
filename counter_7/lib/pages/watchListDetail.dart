import 'package:counter_7/models/watchItem.dart';
import 'package:flutter/material.dart';

import '../models/watchItem.dart';
import '../pages/budgetForm.dart';
import '../drawer.dart';

class WatchItemDetail extends StatefulWidget {
  final List<Budget> data;
  final watchItem WatchItem;
  const WatchItemDetail({
    Key? key,
    required this.data,
    required this.WatchItem,
  }) : super(key: key);

  @override
  State<WatchItemDetail> createState() => _WatchItemDetailState();
}

class _WatchItemDetailState extends State<WatchItemDetail> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Wacth Item Detail'),
          elevation: 0,
        ),
        drawer: const MyDrawer(),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(16, 20, 16, 12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      widget.WatchItem.title,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: Row(
                      children: [
                        const Text(
                          'Release Date: ',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(widget.WatchItem.release_date)
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Row(
                      children: [
                        const Text(
                          'Rating: ',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text('${widget.WatchItem.rating}/5')
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            const Text(
                              'Status: ',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              widget.WatchItem.watched == "yes"
                                  ? 'watched'
                                  : 'not watched',
                            )
                          ],
                        ),
                        // SizedBox(
                        //   height: 12,
                        //   width: 12,
                        //   child: Checkbox(
                        //     value: widget.WatchItem.watched,
                        //     onChanged: (value) {
                        //       setState(() {
                        //         widget.watchItem.watched = value!;
                        //       });
                        //     },
                        //   ),
                        // )
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 8),
                    child: Text(
                      'Review: ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 2),
                    child: Text(
                      widget.WatchItem.review,
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ],
              ),
              ElevatedButton(
                onPressed: () => Navigator.pop(context),
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(50)),
                child: const Text('Back'),
              ),
            ],
          ),
        ),
      );
}
