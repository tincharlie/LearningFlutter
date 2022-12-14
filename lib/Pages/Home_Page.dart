// ignore: file_names
// ignore_for_file: prefer_const_constructors, sort_child_properties_last, use_key_in_widget_constructors, unused_import, import_of_legacy_library_into_null_safe

import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/models/mlapp.dart';
import 'package:flutter_application_1/utils/route.dart';
import 'package:flutter_application_1/widgets/drawer.dart';
import 'package:velocity_x/velocity_x.dart';
import '../widgets/item_widget.dart';
import '../widgets/themes.dart';
import '../widgets/home_widgets/catalog_header.dart';
import '../widgets/home_widgets/catalog_image.dart';
import '../widgets/home_widgets/catalog_list.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final int days = 30;

  final String name = "Vipul";

  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    final catalogueJson =
        await rootBundle.loadString("assets/files/catalog.json");
    // print(catalogueJson);

    //decoding json string into another format(map)
    final decodedData = jsonDecode(catalogueJson);
    // print(decodedData);
    // if we have a map and we want to convert it to string -> jsonEncode()

    var productsData = decodedData["products"];
    // print(productsData);

    CatalogModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // final dummyList = List.generate(20, (index) => CatalogModel.items[0]);
    return Scaffold(
        // backgroundColor: Theme.of(context).canvasColor,
        backgroundColor: context.cardColor,
        floatingActionButton: FloatingActionButton(
          onPressed: () => Navigator.pushNamed(context, RouterAuto.cartRoute),
          // backgroundColor: MyTheme.darkBlueColor,
          // ignore: deprecated_member_use
          backgroundColor: context.theme.buttonColor,
          child: Icon(
            CupertinoIcons.cart,
            color: Colors.white,
          ),
        ),
        body: SafeArea(
          child: Container(
            padding: Vx.m32,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              CatalogHeader(),
              if (CatalogModel.items != null && CatalogModel.items!.isNotEmpty)
                CatalogList().py20().expand()
              else
                CircularProgressIndicator().centered().py16()
            ]),
          ),
        ));
  }
}

// class CatalogHeader extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       // ignore: prefer_const_literals_to_create_immutables
//       children: [
//         "MLApp".text.xl5.bold.color(MyTheme.darkBlueColor).make(),
//         "Trending Products".text.make()
//         // Text("MLApp"), // Both the things are same
//       ],
//     );
//   }
// }

// class CatalogList extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       itemCount: CatalogModel.items?.length,
//       itemBuilder: (context, index) {
//         final catalog = CatalogModel.items![index];
//         // ignore: missing_required_param
//         return CatalogItem(key: null,
//           catalog: catalog ,
//           // key: null,
//         );
//       },
//     );
//   }
// }

// class CatalogItem extends StatelessWidget {
//   final Item catalog;
//   const CatalogItem({required Key key, required this.catalog})
//       : assert(catalog != null),
//         super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return VxBox(
//         child: Row(children: [
//       Image.network(
//         catalog.image,
//       )
//     ])).white.square(100).make();
//   }
// }





/*return Scaffold(
      appBar: AppBar(
        title: Text("ML Class App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: (CatalogModel.items != null && CatalogModel.items!.isNotEmpty)
            ? GridView.builder(
                // itemCount: CatalogueModel.items.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 16,
                ),
                itemBuilder: (context, index) {
                  final item = CatalogModel.items![index];
                  return Card(
                    clipBehavior: Clip.antiAlias,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: GridTile(
                      header: Container(
                        child: Text(
                          item.name,
                          style: TextStyle(color: Colors.white),
                        ),
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Colors.deepPurple,
                        ),
                      ),
                      child: Image.network(item.image),
                      footer: Container(
                        child: Text(
                          item.price.toString(),
                          style: TextStyle(color: Colors.white),
                        ),
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Colors.black,
                        ),
                      ),
                      // Text(item.price.toString()),
                    ),
                  );
                },
                itemCount: CatalogModel.items?.length,
              )
            // ListView.builder(
            //   // itemCount: CatalogueModel.items.length,
            //   itemCount: CatalogModel.items?.length,
            //   itemBuilder: (context, index) => ItemWidget(
            //     item: CatalogModel.items![index],
            //   ),
            // )

            : Center(
                child: CircularProgressIndicator(),
              ),
        // highknu
      ),
      drawer: MyDrawer(),
      );//Scafold
 */
