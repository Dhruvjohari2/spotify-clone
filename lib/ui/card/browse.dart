import 'package:flutter/material.dart';

class Browse extends StatefulWidget {
  const Browse({Key? key}) : super(key: key);

  @override
  State<Browse> createState() => _BrowseState();
}

class _BrowseState extends State<Browse> {
  final _names = [
    'Pop',
    'Bollywood',
    'hollywood',
    'Drama',
    'Romance',
    'Night',
    'Search',
    'Summer',
    'Friday',
    'Weekend'
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // width: double.infinity,
      height: 200,
      child: GridView.builder(
        itemCount: 10,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: 10,
          crossAxisCount: 2,
        ),
        itemBuilder: (e, index) {
          // return Text(response.value!.data[0].productData[index].productName.toString());
          return GestureDetector(
            onTap: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (_) => ItemDetailScreen(
              //       image: response.value!.data[0].productData[index].image[0],
              //       title: response.value!.data[0].productData[index].productName,
              //       brand: response.value!.data[0].productData[index].productBrandAaray[0],
              //       rate:response.value!.data[0].productData[index].mrp.toString(),
              //     ),
              //   ),
              // );
            },
            child: Container(
              margin: EdgeInsets.all(10),
              width: 200,
              // height: 100,
              decoration: BoxDecoration(
                color: Colors.lightBlueAccent,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Container(
                padding: EdgeInsets.all(12),
                child: Text(
                  _names[index],
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            // ItemGridViewWidget(
            //   image: response.value!.data[0].productData[index].image[0],
            //   title: response.value!.data[0].productData[index].productName,
            //   brand: response.value!.data[0].productData[index].productBrandAaray[0],
            //   rate:response.value!.data[0].productData[index].mrp.toString(),
            // ),
          );
        },
      ),
    );
  }
}
