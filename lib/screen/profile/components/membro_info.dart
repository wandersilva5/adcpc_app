import 'package:adcpc/constants.dart';
import 'package:adcpc/models/user_manager.dart';
import 'package:adcpc/size_config.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MembroInfo extends StatelessWidget {
  const MembroInfo({
    Key key,
    this.titleLivre,
    this.image,
  }) : super(key: key);
  final String titleLivre, image;

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    return SizedBox(
      height: defaultSize * 70,
      child: Stack(
        children: <Widget>[
          ClipPath(
            clipper: CustomShapePerfil(),
            child: Container(
              height: defaultSize * 20,
              color: kPrimaryColor,
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: defaultSize * 16,
                  width: defaultSize * 39,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.contain,
                        image: AssetImage(image),
                        alignment: Alignment.topRight),
                  ),
                ),
                Text(
                  titleLivre,
                  style: TextStyle(
                    fontSize: defaultSize * 2.2,
                    color: kTextColo2,
                  ),
                ),
                CustomListProfile(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CustomShapePerfil extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    double height = size.height;
    double width = size.width;
    path.lineTo(0, height - 100);
    path.quadraticBezierTo(width / 2, height, width, height - 100);
    path.lineTo(width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}

class CustomListProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      margin: EdgeInsets.all(15),
      height: 400,
      child: Consumer<UserManager>(
        builder: (_, userManager, __) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ItemListMember(
                icon: Icons.check_circle,
                textBold: 'Nome Completo: ',
                text:
                    '${userManager.user?.name ?? ''} ${userManager.user?.sobrenome ?? ''}',
              ),
              ItemListMember(
                icon: Icons.email,
                textBold: 'E-mail: ',
                text: '${userManager.user?.email ?? ''}',
              ),
              ItemListMember(
                icon: Icons.person_add,
                textBold: 'Filiação: ',
                text: '${userManager.user?.filiacao ?? ''}',
              ),
              ItemListMember(
                icon: Icons.date_range,
                textBold: 'Nascimento: ',
                text: ' ${userManager.user?.dataNascimento ?? ''}',
              ),
              ItemListMember(
                icon: Icons.card_membership,
                textBold: 'Membro desde: ',
                text: ' ${userManager.user?.membro ?? ''}',
              ),
              ItemListMember(
                icon: Icons.domain_verification,
                textBold: 'Cargo: ',
                text: ' ${userManager.user?.cargo ?? ''}',
              ),
              ItemListMember(
                icon: Icons.verified,
                textBold: 'Dizimista? ',
                text: userManager.user.dizimista == true
                    ? 'Sou Dizimista'
                    : 'Não sou Dizimista',
              ),
            ],
          );
        },
      ),
    );
  }
}

class ItemListMember extends StatelessWidget {
  final IconData icon;
  final String text, textBold;
  const ItemListMember({
    Key key,
    this.icon,
    this.text,
    this.textBold,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
              offset: Offset(0, 0),
              blurRadius: 3,
              color: Colors.black12.withOpacity(0.20)),
        ],
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Icon(
              icon,
              color: kPrimaryColor,
            ),
          ),
          Text(
            textBold,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Text(
            text,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            style: TextStyle(
              fontSize: 16,
            ),
          )
        ],
      ),
    );
  }
}
