import 'package:flutter/material.dart';
import '../widget/FavouriteCard.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top:10.0,bottom:10),
              child: Row(
                mainAxisAlignment:MainAxisAlignment.spaceBetween,

                children: [
                  Padding(
                    padding: EdgeInsets.only(left:5.0),
                    child: Icon(Icons.arrow_back),
                  ),
                  Text('Favourites'),
                  SizedBox(),

                ],
              ),
            ),
            Expanded(
              child: Container(
                width:394,
                height: 372,
                child:ListView.builder(
              
                  itemCount: CatelogfavModel.items.length,
                  itemBuilder: (BuildContext context, int index) {
                    return buildCard(
                        CatelogfavModel.items[index]);
                  },
                ),
              ),
            ),

          ],



          ),
      ),
    );

  }
}
