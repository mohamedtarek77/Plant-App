import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/presentation_layer/screens/details/components/icon_card.dart';

class Bodydiatal extends StatelessWidget {
  final String id;
  final String title;
  final String country;
  final String image;
  final int price;
  const Bodydiatal({
    required this.country,
    required this.price,
    required this.id,
    required this.title,
    required this.image,
  });
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Row(
              children: <Widget>[
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: '$title\n',
                        style: Theme.of(context).textTheme.headline4!.copyWith(
                              color: kTextColor,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      TextSpan(
                        text: country,
                        style: TextStyle(
                            fontSize: 20,
                            color: kPrimaryColor,
                            fontWeight: FontWeight.w300),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Text(
                  '\$$price',
                  style: Theme.of(context)
                      .textTheme
                      .headline5!
                      .copyWith(color: kPrimaryColor),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: kDefaultPadding * 3),
            child: SizedBox(
              height: size.height * .8,
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: kDefaultPadding * 3),
                      child: Column(
                        children: <Widget>[
                          Align(
                            alignment: Alignment.topLeft,
                            child: IconButton(
                              padding: EdgeInsets.symmetric(
                                  horizontal: kDefaultPadding),
                              icon: SvgPicture.asset(
                                  'assets/icons/back_arrow.svg'),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),
                          ),
                          Spacer(),
                          IconCard(icon: 'assets/icons/sun.svg'),
                          IconCard(icon: 'assets/icons/icon_2.svg'),
                          IconCard(icon: 'assets/icons/icon_3.svg'),
                          IconCard(icon: 'assets/icons/icon_4.svg'),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: size.height * .8,
                    width: size.width * .75,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(63),
                        bottomLeft: Radius.circular(63),
                      ),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 10),
                          blurRadius: 60,
                          color: kPrimaryColor.withOpacity(0.29),
                        ),
                      ],
                      image: DecorationImage(
                        alignment: Alignment.centerLeft,
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/img.png'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          //TitleAndPrice(title: 'Angelica', country: 'Russia', price: 440),
          SizedBox(height: kDefaultPadding),
          Row(
            children: <Widget>[
              SizedBox(
                width: size.width / 2,
                height: 84,
                // ignore: deprecated_member_use
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                    ),
                  ),
                  color: kPrimaryColor,
                  onPressed: () {},
                  child: Text(
                    'buy now',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              Expanded(
                // ignore: deprecated_member_use
                child: FlatButton(
                  onPressed: () {},
                  child: Text('Description'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
