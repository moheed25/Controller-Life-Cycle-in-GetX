import 'package:get/get.dart';
import '../screens/hompage.dart';
import '../screens/second_page.dart';
import 'app_routes.dart';

class GetAppRoute{

  List<GetPage> getRoutes(){
    return [
      GetPage(
        name: AppRoute.initial,
        page: () => MyHomePage(title: 'Getx Routing'),
      ),
      GetPage(
        name: AppRoute.secondPage,
        page: () => const SecondPage(),
      ),
    ];
  }

}