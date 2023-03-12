import 'package:fashion_app/models/product_model.dart';
import 'package:fashion_app/services/update_product.dart';
import 'package:fashion_app/widgets/custom_btn.dart';
import 'package:fashion_app/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class UpdateProductScreen extends StatefulWidget {
  UpdateProductScreen({super.key});
  static String id = 'update product';

  @override
  State<UpdateProductScreen> createState() => _UpdateProductScreenState();
}

class _UpdateProductScreenState extends State<UpdateProductScreen> {
  String? productName, description, image;

  String? price;
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    ProductModel product =
        ModalRoute.of(context)!.settings.arguments as ProductModel;
    return ModalProgressHUD(
      inAsyncCall: isLoading,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Update Product',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(children: [
              SizedBox(
                height: 100,
              ),
              CustomTextField(
                onChanged: (data) {
                  productName = data;
                },
                hintText: 'Product Name',
              ),
              SizedBox(
                height: 10,
              ),
              CustomTextField(
                onChanged: (data) {
                  description = data;
                },
                hintText: 'Description',
              ),
              SizedBox(
                height: 10,
              ),
              CustomTextField(
                inputType: TextInputType.number,
                onChanged: (data) {
                  price = data;
                },
                hintText: 'price',
              ),
              SizedBox(
                height: 10,
              ),
              CustomTextField(
                onChanged: (data) {
                  image = data;
                },
                hintText: 'Image',
              ),
              SizedBox(
                height: 50,
              ),
              CustomBtn(
                titleBtn: 'Update',
                onTap: () async {
                  isLoading = true;
                  setState(() {});

                  try {
                    await updateProduct(product);

                    print('sucess');
                  } catch (e) {
                    print(e.toString());
                  }
                  isLoading = false;
                  setState(() {});
                },
              ),
            ]),
          ),
        ),
      ),
    );
  }

  Future<void> updateProduct(ProductModel product) async {
    await UpdateProductService().updateProduct(
        id: product.id,
        title: productName == null ? product.title : productName!,
        price: price == null ? product.price.toString() : price!,
        description: description == null ? product.description : description!,
        image: image == null ? product.image : image!,
        category: product.category);
  }
}
