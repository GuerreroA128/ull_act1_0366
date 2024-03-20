import 'package:flutter/material.dart';
import 'package:guerrero0366/pantalla0366/panel0366/item_mercado.dart';

class PanelPantalla0366 extends StatelessWidget {
  const PanelPantalla0366({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
              color: Color(0xff056b72),
            ),
          ),
          backgroundColor: const Color(0x4f09e275),
          actions: [
            const Padding(
              padding: EdgeInsets.only(right: 15),
              child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://raw.githubusercontent.com/GuerreroA128/img_iOS/main/iconmercado.png")),
            )
          ],
          title: const Text(
            'Merca Guerrero0366',
            style: TextStyle(
              color: Color(0xff056b72),
            ),
          ),
        ),
        body: Column(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.all(15),
              padding: EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Color(0x4f09e275),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 5),
                        color: Theme.of(context)
                            .colorScheme
                            .primary
                            .withOpacity(.1),
                        spreadRadius: 5,
                        blurRadius: 5)
                  ]),
              child: const TextField(
                decoration: InputDecoration(
                    hintText: "¿Que Buscas?",
                    hintStyle: TextStyle(
                      fontWeight: FontWeight.w300,
                      color: Color(0xff056b72),
                    ),
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.search, color: Colors.white)),
              ),
            ),
            Container(
              height: 180,
              margin: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        "https://raw.githubusercontent.com/GuerreroA128/img_iOS/main/ml2.jpg")),
              ),
            ),
            ListTile(
              title: Text("TOP PRODUCTOS"),
              titleTextStyle: Theme.of(context).textTheme.titleLarge,
              trailing: Icon(Icons.filter_list_outlined),
            ),
            Expanded(
                child: GridView.count(
              padding: EdgeInsets.all(15),
              crossAxisCount: 2,
              mainAxisSpacing: 20,
              crossAxisSpacing: 15,
              children: [for (int i = 1; i <= 10; i++) const Itemmercado()],
            ))
          ],
        ));
  }
}
