import 'package:flutter/material.dart';

class Itemmercado extends StatelessWidget {
  const Itemmercado({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(offset: Offset(0, 5), spreadRadius: 5, blurRadius: 5)
          ]),
      child: Column(
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(
                "https://raw.githubusercontent.com/GuerreroA128/img_flutterFlow/main/producto14.png"),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "nuestros productos",
            style: Theme.of(context).textTheme.titleSmall,
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            children: List.generate(
                5,
                (index) =>
                    Icon(Icons.star, color: Color(0xffff2323), size: 18)),
          )
        ],
      ),
    );
  }
}
