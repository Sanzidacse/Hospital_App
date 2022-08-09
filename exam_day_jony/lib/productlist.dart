import 'package:exam_day_jony/cash.dart';
import 'package:exam_day_jony/modelclass.dart';
import 'package:flutter/material.dart';

class View extends StatefulWidget {
  View({Key? key, this.productsInfo}) : super(key: key);

  ProductsInfo? productsInfo;

  @override
  State<View> createState() => _ViewState();
}

class _ViewState extends State<View> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product List"),
      ),
      body: Column(
        children: [
          InkWell(
            onTap: (() {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => CashPayment(
                            product_card: widget.productsInfo,
                          )));
            }),
            child: Container(
              height: 200,
              width: double.infinity,
              child: Image.asset(
                widget.productsInfo!.img.toString(),
                width: double.infinity,
                height: double.infinity,
              ),
            ),
          ),
          SizedBox(
            height: 20,
            width: 5,
          ),
          Text(widget.productsInfo!.name.toString()),
          SizedBox(
            height: 20,
            width: 5,
          ),
          Text(widget.productsInfo!.price.toString())
        ],
      ),
    );
  }
}
