import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tutorial_provider/models/transferencias.dart';

import 'lista.dart';

final _titulo = 'Últimas transferencias';

class UltimasTransferencias extends StatelessWidget {
  const UltimasTransferencias({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(_titulo),
        Consumer<Transferencias>(
          builder: (context, transferencias, child){
           final _ultimasTransferencias = transferencias.transferencias.reversed.toList();
            final _quantidade = transferencias.transferencias.length;
            int tamanho = 2;

            if(_quantidade == 0)
              return SemTransferenciaCadastrada();

            if(_quantidade < 3)
              tamanho = _quantidade;

            return ListView.builder(
              shrinkWrap: true,
            padding: const EdgeInsets.all(8),
                itemCount:2 ,
                itemBuilder: (context, indice){
                  return ItemTransferencia(_ultimasTransferencias[indice]);
                }
            );
          },
        ),
        ElevatedButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(
                  builder: (context){
                    return ListaTransferencias();
                  }
              ));
            }, child: Text('Ver todas transferências')),
      ],
    );
  }
}

class SemTransferenciaCadastrada extends StatelessWidget {
  const SemTransferenciaCadastrada({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(40),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Text('Você ainda não possui transferências',
          textAlign: TextAlign.center ,),

      ),
    );
  }
}

