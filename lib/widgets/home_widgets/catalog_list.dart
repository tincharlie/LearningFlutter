import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/Home_Page.dart';
import 'package:flutter_application_1/models/mlapp.dart';
import 'package:flutter_application_1/pages/home_detail_page.dart';
import 'package:velocity_x/velocity_x.dart';

import '../themes.dart';
import 'catalog_image.dart';

// class CatalogList extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       shrinkWrap: true,
//       itemCount: CatalogModel.items?.length,
//       itemBuilder: (context, index) {
//         final catalog = CatalogModel.items![index];
//         return InkWell(
//           onTap: () => Navigator.push(
//             context,
//             MaterialPageRoute(builder: (context) => HomeDetailPage(
//                catalog: catalog,
//                ),
//                ),

//           child: CatalogItem(
//             catalog: catalog,
//           ),
//         );
//       },
//     );
//   }
// }

class CatalogList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: CatalogModel.items?.length,
      itemBuilder: (context, index) {
        final catalog = CatalogModel.items![index];
        return InkWell(
            onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeDetailPage(catalog: catalog),
                  ),
                ),
            child: CatalogItem(catalog: catalog));
      },
    );
  }
}

class CatalogItem extends StatelessWidget {
  final Item catalog;
  const CatalogItem({Key? key, required this.catalog}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return VxBox(
      child: Row(
        children: [
          Hero(
            tag: Key(catalog.id.toString()),
            child: CatalogImage(image: catalog.image),
          ),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              catalog.name.text.lg.color(context.accentColor).bold.make(),
              catalog.desc.text.textStyle(context.captionStyle!).make(),
              10.heightBox,
              ButtonBar(
                alignment: MainAxisAlignment.spaceBetween,
                buttonPadding: EdgeInsets.zero,
                children: [
                  "\$${catalog.price}".text.bold.xl.make(),
                  ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor:
                            // ignore: deprecated_member_use
                            MaterialStateProperty.all(
                                context.theme.buttonColor),
                        // ignore: prefer_const_constructors
                        shape: MaterialStateProperty.all(StadiumBorder()),
                      ),
                      child: "Add to Cart".text.make())
                ],
              ).pOnly(right: 8.0)
            ],
          ))
        ],
      ),
    ).color(context.cardColor).rounded.square(150).make().p16();
  }
}
