import 'package:flutter/material.dart';

class Grids extends StatefulWidget {
  const Grids({Key? key}) : super(key: key);

  @override
  State<Grids> createState() => _GridsState();
}

class _GridsState extends State<Grids> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          padding: const EdgeInsets.only(top: 8.0),
          shrinkWrap: true,
          // itemCount: products.length,
          // itemBuilder: (context, index) {
          children: [
            Card(
              color: Colors.blueGrey.shade200,
              elevation: 5.0,
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Image(
                        height: 80,
                        width: 80,
                        image: NetworkImage(
                            "https://images.unsplash.com/photo-1601004890684-d8cbf643f5f2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=415&q=80")),
                    SizedBox(
                      width: 130,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 5.0,
                          ),
                          RichText(
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            text: TextSpan(
                              text: 'Name: ',
                              style: TextStyle(
                                  color: Colors.blueGrey.shade800,
                                  fontSize: 16.0),
                              // children: [
                              //   TextSpan(
                              //       text:"name"
                              //       // '${products[
                              // index].name.toString()}\n',
                              //       style: const TextStyle(
                              //           fontWeight: FontWeight.bold)),
                              // ]
                            ),
                          ),
                          RichText(
                            maxLines: 1,
                            text: TextSpan(
                              text: 'Unit: ',
                              style: TextStyle(
                                  color: Colors.blueGrey.shade800,
                                  fontSize: 16.0),
                            ),
                          ),
                          RichText(
                            maxLines: 1,
                            text: TextSpan(
                              text: 'Price: ' r"$",
                              style: TextStyle(
                                  color: Colors.blueGrey.shade800,
                                  fontSize: 16.0),
                              children: [
                                TextSpan(
                                  text: "price",
                                  // '${products[index].price.toString()}\n',
                                  // style: const TextStyle(
                                  //     fontWeight: FontWeight.bold)),
                                  //     ],
                                  // ),
                                ),
                              ],
                            ),
                          ),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.blueGrey.shade900),
                              onPressed: () {
                                // saveData(index);
                              },
                              child: const Text('Add to Cart')),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
