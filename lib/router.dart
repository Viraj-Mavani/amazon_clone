import 'package:amazon_clone/common/widgets/bottom_bar.dart';
import 'package:amazon_clone/features/admin/screens/add_product_screen.dart';
import 'package:amazon_clone/features/auth/screens/auth_screen.dart';
import 'package:amazon_clone/features/home/screens/category_deals_screen.dart';
import 'package:amazon_clone/features/search/screens/search_screen.dart';
import 'package:flutter/material.dart';

import 'features/home/screens/home_screen.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case AuthScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const AuthScreen(),
      );
    case HomeScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const HomeScreen(),
      );
    case BottomBar.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const BottomBar(),
      );
    case AddProductScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const AddProductScreen(),
      );
    case CategoryDealsScreen.routeName:
      var category = routeSettings.arguments as String;
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => CategoryDealsScreen(
          category: category,
        ),
      );
    case SearchScreen.routeName:
      var searchQuery = routeSettings.arguments as String;
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => SearchScreen(
          searchQuery: searchQuery,
        ),
      );
    // case ProductDetailScreen.routeName:
    // var product = routeSettings.arguments as Product;
    // return MaterialPageRoute(
    //   settings: routeSettings,
    //   builder: (_) => ProductDetailScreen(
    //     product: product,
    //   ),
    // );
    // case AddressScreen.routeName:
    // var totalAmount = routeSettings.arguments as String;
    // return MaterialPageRoute(
    //   settings: routeSettings,
    //   builder: (_) => AddressScreen(
    //     totalAmount: totalAmount,
    //   ),
    // );
    // case OrderDetailScreen.routeName:
    // var order = routeSettings.arguments as Order;
    // return MaterialPageRoute(
    //   settings: routeSettings,
    //   builder: (_) => OrderDetailScreen(
    //     order: order,
    //   ),
    // );
    default:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const Scaffold(
          body: Center(
            child: Text('Screen dose not exist! 404'),
          ),
        ),
      );
  }
}
