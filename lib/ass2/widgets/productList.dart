import 'package:flutter/material.dart';
import 'package:flutter_application_1_godigital/ass2/model/data.dart';

class ProductList extends StatelessWidget {
  final List<Product> products;

  ProductList(this.products);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
      ),
      itemCount: products.length,
      itemBuilder: (context, index) {
        return GridTile(
          child: Card(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  child: Image.network(
                    products[index].img!,
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        products[index].name!,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('\$${products[index].price}'),
                    ),
                  ],
                ),
                Text(products[index].description!),
                 ElevatedButton(onPressed: (){}, child: Text("أضف الى السلة"),
                  style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 234, 172, 78),
              ),),
              ],
            ),
          ),
        );
      },
    );
  }
}
