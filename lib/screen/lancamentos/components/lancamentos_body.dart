import 'package:adcpc/common/custom_form/text_field_container.dart';
import 'package:flutter/material.dart';

class LancamentosBody extends StatelessWidget {
  final String name;
  final IconData icon;

  const LancamentosBody({Key key, this.name, this.icon = Icons.check})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(top: 1),
      child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: <Widget>[
                  TextFieldContainer(
                    iconField: Icons.search,
                    hint: "Pesquisa Nome",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
