// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:spacex_project/Models/lanuchesVM.dart';


class LanchesDetail extends StatefulWidget {



  LanuchesVm selectedItem;
  LanchesDetail({this.selectedItem});


  @override
  _LanchesDetailState createState() => _LanchesDetailState();
}

class _LanchesDetailState extends State<LanchesDetail> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height,
      width: size.width,
      color: Colors.black,
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network(
                  widget.selectedItem.links.patch.small,
                  height: size.height * .4,
                  width: size.width,
                ),
                Text(
                  "Rocket",
                  style: TextStyle(
                      decoration: TextDecoration.none,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: Colors.red),
                ),
                SizedBox(height: 10.0,),
                Text(
                  widget.selectedItem.name.toString(),
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 17.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20.0,),
                Text(
                  "Landing Type",
                  style: TextStyle(
                      decoration: TextDecoration.none,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: Colors.red),
                ),
                SizedBox(height: 10.0,),
                Text(
                  widget.selectedItem.cores.first.landingType.toString(),
                  style: const TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 17.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20.0,),
                Text(
                  "Details",
                  style: TextStyle(
                      decoration: TextDecoration.none,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: Colors.red),
                ),
                SizedBox(height: 10.0,),
                Text(
                  widget.selectedItem.details.toString(),
                  style: const TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 17.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20.0,),
                Text(
                  "Type ",
                  style: TextStyle(
                      decoration: TextDecoration.none,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: Colors.red),
                ),
                SizedBox(height: 10.0,),
                Text(
                  widget.selectedItem.cores.first.flight.toString(),
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 17.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
