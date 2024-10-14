import 'package:get/get.dart';
import 'package:market_app_worker/Model/Enums/order_page_enum.dart';

class HomePageController extends GetxController {
  OrderCartEnum cartState = OrderCartEnum.orders;

  void onChangecarttState(OrderCartEnum  state) {
    cartState = state;
    update();
  }
}
