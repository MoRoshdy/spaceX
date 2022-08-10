import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Dragons extends StatefulWidget {
  @override
  _DragonsState createState() => _DragonsState();
}

class _DragonsState extends State<Dragons> {
  @override
  Widget build(BuildContext context) {
    //Size size = MediaQuery.of(context).size;
    return Container();
    //   FutureBuilder(
    //   future: getDragonsFun(),
    //   builder: (context, snapShot) {
    //     if (snapShot.connectionState == ConnectionState.done) {
    //       return Container(
    //         height: size.height,
    //         width: size.width,
    //         decoration: BoxDecoration(
    //             color: Colors.white,
    //             borderRadius: BorderRadius.only(
    //               topRight: Radius.circular(70),
    //               topLeft: Radius.circular(70),
    //             )),
    //         child: ListView(
    //           children: List.generate(
    //               snapShot.data.length,
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
    //                               snapShot.data[index].flickrImages.first,
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
    //                                     "${snapShot.data[index].name}",
    //                                     maxLines: 1,
    //                                     style: const TextStyle(
    //                                       fontWeight: FontWeight.bold,
    //                                       color: Colors.black,
    //                                       overflow: TextOverflow.ellipsis,
    //                                       fontSize: 20,
    //                                     ),
    //                                   ),
    //                                   subtitle: Text(
    //                                     "Type : ${snapShot.data[index].type}",
    //                                     maxLines: 1,
    //                                     style: const TextStyle(
    //                                       color: Colors.black,
    //                                       overflow: TextOverflow.ellipsis,
    //                                       fontSize: 20,
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
    //                                         snapShot.data[index].active == true
    //                                             ? Colors.green
    //                                             : Colors.red,
    //                                   ),
    //                                   child: Center(
    //                                     child: Text(
    //                                       "${snapShot.data[index].active}",
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
    //       return Center(child: CircularProgressIndicator());
    //     }
    //   },
    // );
  }

  // Future<List<DragonsVm>> getDragonsFun() async {
  //   return await API.getDragons();
  // }
}
