import 'package:flutter/material.dart';
// import 'package:get/get.dart';

class CartScreen extends StatefulWidget {
  CartScreen({super.key, required this.names});
  List<String> names;
  //  استلم فيه البيانات الي جايه من برع واللي هو من الصفحة الثانية مثلام

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cart"),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
            child: Text(widget.names[index]),
          );
        },
        itemCount: widget.names.length,
      ),
    );
  }
}
