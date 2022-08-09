import 'package:exam_day_jony/modelclass.dart';
import 'package:flutter/material.dart';

class CashPayment extends StatefulWidget {
  CashPayment({this.product_card});

  ProductsInfo? product_card;

  @override
  State<CashPayment> createState() => _CashPaymentState();
}

class _CashPaymentState extends State<CashPayment> {
  int quantity = 1;
  dynamic? finalPrice;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Payment"),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Image.asset(
                widget.product_card!.img.toString(),
                height: 100,
                width: 100,
              ),
              Text(widget.product_card!.name.toString()),
              IconButton(
                  onPressed: () {
                    setState(() {
                      quantity = quantity - 1;
                      finalPrice = widget.product_card!.price! * quantity;
                    });
                  },
                  icon: Icon(Icons.remove)),
              Text('${quantity}'),
              IconButton(
                  onPressed: () {
                    setState(() {
                      quantity = quantity + 1;
                      finalPrice = widget.product_card!.price! * quantity;
                    });
                  },
                  icon: Icon(Icons.add)),
            ],
          ),
          Text(finalPrice == null
              ? 'Total Price = ${widget.product_card!.price.toString()}'
              : 'Total Price = ${finalPrice}'),
        ],
      ),
    );
  }
}
