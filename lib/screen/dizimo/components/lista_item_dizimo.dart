import 'package:flutter/material.dart';

class ListDataItem extends StatelessWidget {
  final String name;
  final bool entregue;

  const ListDataItem({Key key, this.name, this.entregue}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(top: 0.5),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
            width: size.width - 30,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(38.5),
              boxShadow: [
                BoxShadow(
                    offset: Offset(0, 0),
                    blurRadius: 20,
                    color: Colors.black12.withOpacity(0.15)),
              ],
            ),
            child: Row(
              children: <Widget>[
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: name,
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                IconButton(
                  icon: entregue == true
                      ? Icon(
                          Icons.check,
                          size: 35,
                          color: Colors.green,
                        )
                      : Icon(
                          Icons.clear,
                          size: 35,
                          color: Colors.red,
                        ),
                  onPressed: () {},
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
