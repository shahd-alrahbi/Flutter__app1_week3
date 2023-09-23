import 'package:class1_17_9/model/prodects_model.dart';
import 'package:class1_17_9/screens/prodect_details_screen.dart';
import 'package:flutter/material.dart';

class ProdectsScreen extends StatefulWidget {
  ProdectsScreen({super.key});

  @override
  State<ProdectsScreen> createState() => _ProdectsScreenState();
}

class _ProdectsScreenState extends State<ProdectsScreen> {
  int index = 0;

  List<ProdectModel> products = [
    ProdectModel(
      name: "Shoes1",
      price: 500.0,
      image:
          "https://i.pinimg.com/236x/56/b6/cb/56b6cb97185099a8cfee9a220b588b87.jpg",
      category: "Shoes",
    ),
    ProdectModel(
      name: "Shoes2",
      price: 400.0,
      image:
          "https://i.pinimg.com/236x/cb/fa/c4/cbfac459152fedf49a5c25bbe7fbfb4a.jpg",
      category: "Shoes",
    ),
    ProdectModel(
      name: "Shoes3",
      price: 600.0,
      image:
          "https://i.pinimg.com/236x/a1/28/90/a128900565f58da46dec98058c204efa.jpg",
      category: "Shoes",
    ),
    ProdectModel(
      name: "Shoes4",
      price: 750.0,
      image:
          "https://i.pinimg.com/236x/c5/d8/ea/c5d8ea68ad723c00262c73dfd448b9d1.jpg",
      category: "Shoes",
    ),
    ProdectModel(
      name: "Shoes5",
      price: 300.0,
      image:
          "https://i.pinimg.com/564x/fa/c7/4a/fac74a696c351aa46a7921a5c9fe9a89.jpg",
      category: "Shoes",
    ),
    ProdectModel(
      name: "Shoes6",
      price: 450.0,
      image:
          "https://i.pinimg.com/236x/3c/50/98/3c50980c376a394d9bd2cc1ad5a1dc63.jpg",
      category: "Shoes",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: index,
          onTap: (value) {
            index = value;
            setState(() {});
          },
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
            BottomNavigationBarItem(
                icon: Icon(Icons.category), label: "Producats"),
          ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        title: const Text("Products"),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProdectDetailsScreen(
                      product: products[index],
                    ),
                  ));
            },
            leading: Hero(
              tag: products[index].name!,
              child: Image.network(
                products[index].image!,
                width: 70,
                height: 70,
              ),
            ),
            title: Text(products[index].name!),
            subtitle: Text(products[index].category!),
            trailing: Text(products[index].price!.toString()),
          );
        },
        itemCount: products.length,
      ),
    );
  }
}
