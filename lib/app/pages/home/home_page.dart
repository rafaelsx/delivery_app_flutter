import 'package:delivery_app/app/core/ui/helpers/loader.dart';
import 'package:delivery_app/app/core/ui/helpers/messages.dart';
import 'package:delivery_app/app/core/ui/widgets/delivery_appbar.dart';
import 'package:delivery_app/app/models/product_model.dart';
import 'package:delivery_app/app/pages/home/widgets/delivery_product_tile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with Loader, Messages {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DeliveryAppbar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          showLoader();
          await Future.delayed(Duration(seconds: 2));
          hideLoader();
          // showError('Erro ao carregar a lista de produtos.');
        },
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return DeliveryProductTile(
                  product: ProductModel(
                      id: 0,
                      name: 'Lanche XYZ',
                      description: 'Lanche acompanha pão, hamburguer, mussarela e maionese',
                      price: 20.5,
                      image:
                          'https://assets.unileversolutions.com/recipes-v2/106684.jpg?imwidth=800'),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
