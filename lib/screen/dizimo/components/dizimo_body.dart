import 'package:flutter/material.dart';

import 'lista_item_dizimo.dart';

class DizimoBody extends StatelessWidget {
  final List<String> meses = [
    "Janeiro",
    "Fevereiro",
    "Março",
    "Abril",
    "Maio",
    "Junho",
    "Julho",
    "Agosto",
    "Setembro",
    "Outubro",
    "Novembro",
    "Dezembro",
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          ListDataItem(
            name: "Janeiro",
            entregue: true,
          ),
          ListDataItem(
            name: "Fevereiro",
            entregue: false,
          ),
          ListDataItem(
            name: "Março",
            entregue: false,
          ),
          ListDataItem(
            name: "Abril",
            entregue: false,
          ),
          ListDataItem(
            name: "Maio",
            entregue: false,
          ),
          ListDataItem(
            name: "Junho",
            entregue: false,
          ),
          ListDataItem(
            name: "Julho",
            entregue: false,
          ),
          ListDataItem(
            name: "Agosto",
            entregue: false,
          ),
          ListDataItem(
            name: "Setembro",
            entregue: false,
          ),
          ListDataItem(
            name: "Outubro",
            entregue: false,
          ),
          ListDataItem(
            name: "Novembro",
            entregue: false,
          ),
          ListDataItem(
            name: "Dezembro",
            entregue: false,
          ),
        ],
      ),
    );
  }
}
