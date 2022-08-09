import 'package:exam_day_jony/modelclass.dart';
import 'package:exam_day_jony/productlist.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final item_list = ProductsInfo.Products;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 25, right: 25),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(1.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black26),
                          color: Colors.black12),
                      child: IconButton(
                        highlightColor: Colors.black26,
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_back,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black26),
                          color: Colors.transparent),
                      child: IconButton(
                        highlightColor: Colors.black26,
                        onPressed: () {},
                        icon: Icon(
                          Icons.search,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Hi-Fi Shop & Service",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Audio shop on Rustaveli Ave 57",
                style: TextStyle(
                  fontSize: 10,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "This shop offers both products and service",
                style: TextStyle(
                  fontSize: 10,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        "Products ",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w200,
                            color: Colors.black),
                      ),
                      Text(
                        "41 ",
                        style: TextStyle(fontSize: 15, color: Colors.black54),
                      ),
                    ],
                  ),
                  Text(
                    "Show all ",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w200,
                        color: Colors.blue),
                  ),
                ],
              ),
              Row(
                children: [
                  Column(
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        height: 200,
                        width: 450,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.black12),
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: item_list.length,
                            itemBuilder: (context, index) {
                              var item = item_list[index];
                              return InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => View(
                                                productsInfo: item,
                                              )));
                                },
                                child: Row(
                                  children: [
                                    Column(
                                      children: [
                                        Image.asset(
                                          item.img.toString(),
                                          height: 150,
                                          width: 150,
                                          //fit: BoxFit.cover,
                                        ),
                                        Text(
                                          item.name.toString(),
                                        ),
                                        Text(item.price.toString()),
                                      ],
                                    ),
                                  ],
                                ),
                              );
                            }),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        "Accessories ",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w200,
                            color: Colors.black),
                      ),
                      Text(
                        "41 ",
                        style: TextStyle(fontSize: 15, color: Colors.black54),
                      ),
                    ],
                  ),
                  Text(
                    "Show all ",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w200,
                        color: Colors.blue),
                  ),
                ],
              ),
              Row(
                children: [
                  Column(
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        height: 200,
                        width: 400,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.black12),
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: item_list.length,
                            itemBuilder: (context, index) {
                              var item = item_list[index];
                              return InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => View(
                                                productsInfo: item,
                                              )));
                                },
                                child: Row(
                                  children: [
                                    Column(
                                      children: [
                                        Image.asset(
                                          item.img.toString(),
                                          height: 150,
                                          width: 150,
                                          //fit: BoxFit.cover,
                                        ),
                                        Text(
                                          item.name.toString(),
                                        ),
                                        Text(item.price.toString()),
                                      ],
                                    ),
                                  ],
                                ),
                              );
                            }),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
