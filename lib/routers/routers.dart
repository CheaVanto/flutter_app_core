import 'package:flutter_app_core/pages/article_details/article_details_binding.dart';
import 'package:flutter_app_core/pages/article_details/article_details_view.dart';
import 'package:flutter_app_core/pages/article_lists/article_lists_binding.dart';
import 'package:flutter_app_core/pages/article_lists/article_lists_view.dart';
import 'package:flutter_app_core/pages/article_lists/article_webview.dart';
import 'package:flutter_app_core/pages/counter/binding.dart';
import 'package:flutter_app_core/pages/counter/view.dart';
import 'package:flutter_app_core/pages/home_screen.dart';
import 'package:get/get.dart';
 
class RouteGet { 
  ///root page 
  static const String main = "/"; 
  static const String webview = "/webview";
  static const String article = "/article";
  static const String articleDetails = "/articleDetails";

  // GetPage(
  //       name: main,
  //       page: () => CounterPage(),
  //       binding: CounterBinding()
  //   ),

  ///pages map 
  static final List<GetPage> getPages = [ 
    GetPage(
        name: main,
        page: () => const HomeScreen(),
        binding: CounterBinding()
    ),
    GetPage(
        name: webview,
        page: () => const ArticleWebviewPage(),
        binding: ArticleListsBinding()
    ),
    GetPage(
        name: article,
        page: () => ArticleListsPage(),
        binding: ArticleListsBinding()
    ),
    GetPage(
        name: articleDetails,
        page: () => ArticleDetailsPage(),
        binding: ArticleDetailsBinding()
    ),
  ]; 
}