import 'package:flutter/material.dart';
import 'package:plant_app/presentation_layer/screens/details/components/body.dart';
import '../../../../models/plants.dart';

//import 'package:plant_app/models/categories_plants.dart';

class DetailsScreen1 extends StatefulWidget {
  static const routeName = '/category-meals';

  final List<Plants> availableplants;

  DetailsScreen1(this.availableplants);

  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen1> {
  late String categoryplants;

  late List<Plants> displayedplants;
  var _loadedInitData = false;

  @override
  void initState() {
    // ...
    super.initState();
  }

  @override
  void didChangeDependencies() {
    if (!_loadedInitData) {
      final routeArgs =
          ModalRoute.of(context)!.settings.arguments as Map<String, String>;
      // categoryplants = routeArgs['title'];
      final categoryId = routeArgs['id'];
      displayedplants = widget.availableplants.where((tarek) {
        return tarek.categories.contains(categoryId);
      }).toList();
      _loadedInitData = true;
    }
    super.didChangeDependencies();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('categoryplants'),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return Bodydiatal(
            id: displayedplants[index].id,
            title: displayedplants[index].title,
            country: displayedplants[index].country,
            image: displayedplants[index].image,
            price: displayedplants[index].price,
          );
        },
        itemCount: displayedplants.length,
      ),
    );
  }
}
