import 'package:flutter/cupertino.dart';
import '../model/repository/paint_repository.dart';

class PaintOptionsPresenter with ChangeNotifier {
  final PaintOptionsRepository paintOptionsRepository;
  PaintOptionsPresenter(this.paintOptionsRepository);
  late List<Paint> listPaintOptions = [];

  void getPaintOptions() async {
    listPaintOptions =
        (await paintOptionsRepository.getPaintOptions()) as List<Paint>;
    notifyListeners();
  }
}
