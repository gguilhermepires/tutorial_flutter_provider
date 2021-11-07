
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tutorial_provider/components/saldo.dart';
import 'package:tutorial_provider/models/saldo.dart';
import 'package:tutorial_provider/screens/deposito/formulario.dart';
import 'package:tutorial_provider/screens/transferencia/formulario.dart';
import 'package:tutorial_provider/screens/transferencia/lista.dart';
import 'package:tutorial_provider/screens/transferencia/ultimas.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bytebank'),
      ),
      body: ListView(
        children: [
          Align(
              alignment: Alignment.topCenter,
              child: SaldoCard()),
          ButtonBar(
            alignment: MainAxisAlignment.center,
           children: [
             ElevatedButton(
                 onPressed: (){
               Navigator.push(context, MaterialPageRoute(
                   builder: (context){
                     return FormularioDeposito();
                   }
               ));
             }, child: Text('Receber depósito')),
             ElevatedButton(
                 onPressed: (){
                   Navigator.push(context, MaterialPageRoute(
                       builder: (context){
                         return FormularioTransferencia();
                       }
                   ));
                 }, child: Text('Nova transferência'))
           ],
          ),

          UltimasTransferencias()
          // Consumer<Saldo>(
          //   builder: (context, saldo, child){
          //     return ElevatedButton(onPressed: (){
          //       Navigator.push(context, MaterialPageRoute(
          //         builder: (context){
          //           return FormularioDeposito();
          //         }
          //       ));
          //     }, child: Text('Receber depósito'));
          //   }
          // ),

        ],
      )


    );
  }
}
