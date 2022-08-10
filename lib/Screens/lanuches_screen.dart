import 'package:flutter/material.dart';
import 'package:spacex_project/Logic/API.dart';
import 'package:spacex_project/Models/lanuchesVM.dart';

import 'lanuches_details.dart';

class Lanuches extends StatefulWidget {


  @override
  _LanuchesState createState() => _LanuchesState();
}

class _LanuchesState extends State<Lanuches> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return  FutureBuilder<List<LanuchesVm>>(
      future: getLanuchesFun(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return Container(
            height: size.height,
            width: size.width,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(70.0),
                  topRight: Radius.circular(70.0)),
              color: Colors.white,
            ),
            child: ListView(
              children: List.generate(
                  snapshot.data.length,
                      (index) => Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: size.width * .05,
                        vertical: size.height * .035),
                    child: Card(
                      color: Colors.white,
                      shadowColor: Colors.black,
                      elevation: 20.0,
                      child: Row(
                        children: [
                          Expanded(
                            child: InkWell(

                              child: Image.network(
                                snapshot.data[index].links.patch.small,
                                height: size.height * .2,
                              ),

                              onTap: (){

                                Navigator.push(context, MaterialPageRoute(
                                    builder: (context) => LanchesDetail(selectedItem: snapshot.data[index],)
                                ));

                              },



                            ),
                            flex: 1,
                          ),
                          Expanded(
                            flex: 2,
                            child: Column(
                              children: [
                                ListTile(
                                  title: Text(
                                    "${snapshot.data[index].name}",
                                    maxLines: 1,
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      overflow:
                                      TextOverflow.ellipsis,
                                    ),
                                  ),
                                  subtitle: Text(
                                    "${snapshot.data[index].details}",
                                    maxLines: 1,
                                    style: const TextStyle(
                                      color: Colors.black,
                                      overflow:
                                      TextOverflow.ellipsis,
                                    ),
                                  ),
                                ),
                                Text(
                                  "${snapshot.data[index].dateLocal}",
                                  maxLines: 1,
                                  style: const TextStyle(
                                    color: Colors.black,
                                    overflow:
                                    TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  )),
            ),
          );
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
  Future<List<LanuchesVm>> getLanuchesFun() async {
    return await API.getLanuches();
  }
}
