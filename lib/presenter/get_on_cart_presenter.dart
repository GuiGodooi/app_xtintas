import 'package:app_xtintas/Model/add_to_cart.dart';
import 'package:flutter/cupertino.dart';
import '../model/repository/get_on_cart_repository.dart';

class GetOnCartPresenter with ChangeNotifier {
  final GetOnCartRepository getOnCartRepository;

  GetOnCartPresenter(this.getOnCartRepository);

  late List<AddToCart> showOnCart;

  void getOnCart() async {
    showOnCart = (await getOnCartRepository.getToCart()) as List<AddToCart>;
  }
}
