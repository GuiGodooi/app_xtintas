import 'package:flutter/cupertino.dart';
import '../model/repository/paint_repository.dart';

class PaintPresenter with ChangeNotifier {
  final PaintRepository paintOptionsRepository;
  PaintPresenter(this.paintOptionsRepository);
  late List<Paint> listPaintOptions = [];

  void getPaintOptions() async {
    listPaintOptions =
        (await paintOptionsRepository.getPaintOptions()) as List<Paint>;
    notifyListeners();
  }
}
