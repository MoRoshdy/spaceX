import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Ships extends StatefulWidget {
  @override
  _ShipsState createState() => _ShipsState();
}

class _ShipsState extends State<Ships> {
  @override
  Widget build(BuildContext context) {
    //Size size = MediaQuery.of(context).size;
    return Container();
    //   FutureBuilder<List<ShipsVm>>(
    //   future: getShipsFun(),
    //   builder: (context, snapshot) {
    //     if (snapshot.connectionState == ConnectionState.done) {
    //       return Container(
    //         height: size.height,
    //         width: size.width,
    //         decoration: const BoxDecoration(
    //           borderRadius: BorderRadius.only(
    //               topLeft: Radius.circular(70.0),
    //               topRight: Radius.circular(70.0)),
    //           color: Colors.white,
    //         ),
    //         child: ListView(
    //           children: List.generate(
    //               snapshot.data.length,
    //               (index) => Padding(
    //                     padding: EdgeInsets.symmetric(
    //                         horizontal: size.width * .05,
    //                         vertical: size.height * .035),
    //                     child: Card(
    //                       color: Colors.white,
    //                       shadowColor: Colors.black,
    //                       elevation: 40.0,
    //                       child: Row(
    //                         children: [
    //                           Expanded(
    //                             child: Image.network(
    //                               "${snapshot.data[index].image}",
    //                               height: size.height * .2,
    //                               fit: BoxFit.fill,
    //                             ),
    //                             flex: 1,
    //                           ),
    //                           Expanded(
    //                             flex: 2,
    //                             child: Column(
    //                               children: [
    //                                 ListTile(
    //                                   title: Text(
    //                                     "${snapshot.data[index].name}",
    //                                     maxLines: 1,
    //                                     style: const TextStyle(
    //                                       fontWeight: FontWeight.bold,
    //                                       color: Colors.black,
    //                                       overflow: TextOverflow.ellipsis,
    //                                     ),
    //                                   ),
    //                                   subtitle: Text(
    //                                     "Type : ${snapshot.data[index].type}",
    //                                     maxLines: 1,
    //                                     style: const TextStyle(
    //                                       color: Colors.black,
    //                                       overflow: TextOverflow.ellipsis,
    //                                     ),
    //                                   ),
    //                                 ),
    //                                 Container(
    //                                   width: size.width * .2,
    //                                   height: size.height * .05,
    //                                   decoration: BoxDecoration(
    //                                     borderRadius:
    //                                         BorderRadius.circular(8.0),
    //                                     color:
    //                                         snapshot.data[index].active == true
    //                                             ? Colors.green
    //                                             : Colors.red,
    //                                   ),
    //                                   child: Center(
    //                                     child: Text(
    //                                       "${snapshot.data[index].active}",
    //                                       maxLines: 1,
    //                                       style: const TextStyle(
    //                                         color: Colors.white,
    //                                         overflow: TextOverflow.ellipsis,
    //                                       ),
    //                                     ),
    //                                   ),
    //                                 ),
    //                               ],
    //                             ),
    //                           ),
    //                         ],
    //                       ),
    //                     ),
    //                   )),
    //         ),
    //       );
    //     } else {
    //       return const Center(child: CircularProgressIndicator());
    //     }
    //   },
    // );
  }

  // Future<List<ShipsVm>> getShipsFun() async {
  //   return await API.getShips();
  // }
}
