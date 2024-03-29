import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tutorial_provider/models/saldo.dart';

class SaldoCard extends StatelessWidget {

  SaldoCard() ;

  @override
  Widget build(BuildContext context) {
    return
        Card(
          child: Padding(
            padding: EdgeInsets.all(20),
          child:
          Consumer<Saldo>(
            builder: (context, valor, child){
              return Text(valor.toString(),
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold
                ),);
            }
          ),

          )
        );
  }
}
