import 'package:amazon_clone/constants/global_variable.dart';
import 'package:amazon_clone/features/account/widgets/single_product.dart';
// import 'package:amazon_clone/common/widgets/loader.dart';
// import 'package:amazon_clone/features/account/services/account_services.dart';
// import 'package:amazon_clone/features/account/widgets/single_product.dart';
// import 'package:amazon_clone/features/order_details/screens/order_details.dart';
// import 'package:amazon_clone/models/order.dart';
import 'package:flutter/material.dart';

class Orders extends StatefulWidget {
  const Orders({Key? key}) : super(key: key);

  @override
  State<Orders> createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  List list = [
    'https://images.unsplash.com/photo-1633174524827-db00a6b7bc74?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1196&q=80',
    'https://images.unsplash.com/photo-1633174524827-db00a6b7bc74?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1196&q=80',
    'https://images.unsplash.com/photo-1633174524827-db00a6b7bc74?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1196&q=80',
    'https://images.unsplash.com/photo-1633174524827-db00a6b7bc74?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1196&q=80',
  ];
  // List<Order>? orders;
  // final AccountServices accountServices = AccountServices();

  // @override
  // void initState() {
  //   super.initState();
  //   fetchOrders();
  // }

  // void fetchOrders() async {
  //   orders = await accountServices.fetchMyOrders(context: context);
  //   setState(() {});
  // }

  @override
  Widget build(BuildContext context) {
    // orders == null
    //     ? const Loader()
    //     :

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: const EdgeInsets.only(
                left: 15,
              ),
              child: const Text(
                'Your Orders',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(
                right: 15,
              ),
              child: Text(
                'See all',
                style: TextStyle(
                  color: GlobalVariables.selectedNavBarColor,
                ),
              ),
            ),
          ],
        ),
        // display orders

        Container(
          height: 170,
          padding: const EdgeInsets.only(
            left: 10,
            top: 20,
            right: 0,
          ),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: list.length,
            itemBuilder: (context, index) {
              return SingleProduct(
                image: list[index],
              );
            },
          ),
          //     scrollDirection: Axis.horizontal,
          //     itemCount: orders!.length,
          //     itemBuilder: (context, index) {
          //       return GestureDetector(
          //         onTap: () {
          //           Navigator.pushNamed(
          //             context,
          //             OrderDetailScreen.routeName,
          //             arguments: orders![index],
          //           );
          //         },
          //         child: SingleProduct(
          //           image: orders![index].products[0].images[0],
          //         ),
          //       );
          //     },
          //   ),
        ),
      ],
    );
  }
}
