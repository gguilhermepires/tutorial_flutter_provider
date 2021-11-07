import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class Saldo extends ChangeNotifier {
  double valor;
  Saldo(this.valor);

  void adiciona(double valor){
    this.valor += valor;
    notifyListeners();
  }
  void subtrai(double valor){
    this.valor -= valor;
    notifyListeners();
  }
  double getValor(){
    return this.valor;
  }
  @override
  String toString(){
    return 'R\$: $valor';
  }
}