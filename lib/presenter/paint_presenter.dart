import 'package:app_xtintas/model/paint.dart';
import 'package:flutter/material.dart';
import '../model/repository/paint_repository.dart';

class PaintPresenter with ChangeNotifier {
  final PaintRepository paintOptionsRepository;
  PaintPresenter(this.paintOptionsRepository);

  late List<PaintProduct> listPaintOptions = [];

  void getPaintOptions() async {
    listPaintOptions = await paintOptionsRepository
        .getPaintOptions()
        .then((value) => null) as List<PaintProduct>;
    notifyListeners();
  }
}
