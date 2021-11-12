import 'package:flutter/material.dart';
import '../../../../constants.dart';
import '../../details/components/detail1.dart';

import '../../../../dummy.dart';

class RecomendsPlants extends StatelessWidget {
  const RecomendsPlants({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: DUMMY_categories.map(
          (g) => RecomendPlantCard(
            g.id,
            g.title,
            g.country,
            g.image,
            g.price,
          ),
        ).toList(),
      ),
    );
  }
}

class RecomendPlantCard extends StatelessWidget {
  final String id;
  final String title;
  final String country;
  final String immage;
  final int price;

  RecomendPlantCard(this.id, this.title, this.country, this.immage, this.price);

  void selectCategory(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(
      DetailsScreen1.routeName,
      arguments: id,
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.only(
          left: kDefaultPadding,
          top: kDefaultPadding / 2,
          bottom: kDefaultPadding * 2.5),
      width: size.width * .4,
      child: Column(
        children: <Widget>[
          Image.asset(immage),
          GestureDetector(
            onTap: () => selectCategory(context),
            child: Container(
              padding: EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: kPrimaryColor.withOpacity(0.23),
                  ),
                ],
              ),
              child: Row(
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                            text: '$title\n'.toUpperCase(),
                            style: Theme.of(context).textTheme.button),
                        TextSpan(
                          text: '$country\n'.toUpperCase(),
                          style: TextStyle(
                            color: kPrimaryColor.withOpacity(0.5),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Text(
                    '\$$price',
                    style: Theme.of(context)
                        .textTheme
                        .button!
                        .copyWith(color: kPrimaryColor),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
