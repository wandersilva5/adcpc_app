import 'package:flutter/material.dart';
import 'full_card_mamber.dart';

class MembroCard extends StatelessWidget {
  final String name;
  final IconData icon;

  const MembroCard({Key key, this.name, this.icon = Icons.check})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => FullCardMember()),
        );
      },
      child: Padding(
          padding: EdgeInsets.only(top: 1),
          child: Card(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 0),
                          blurRadius: 20,
                          color: Colors.black12.withOpacity(0.30)),
                    ],
                  ),
                  child: Card(
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    clipBehavior: Clip.antiAlias,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Image.asset(
                          "assets/images/card-member-fundo.png",
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
