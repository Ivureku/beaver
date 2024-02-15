import 'package:flutter/material.dart';

class IndexScreen extends StatelessWidget {
  const IndexScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Wrap(
        children: [
          itemCard(
              'Agriculture is good for both humans and animals',
              'https://www.howtocook.recipes/wp-content/uploads/2022/11/rare-steak-recipejpg-500x375.jpg',
              'I eat meat for a living because I want to piss of vegans',
              'Farmer Juan',
              'https://i.kym-cdn.com/entries/icons/facebook/000/035/644/juancover.jpg'),
          itemCard(
              'Did you know I am a vegan',
              'https://i.guim.co.uk/img/static/sys-images/Guardian/Pix/pictures/2015/6/21/1434885572206/32dd2ac1-ed8e-46b4-8414-e754840287bb-2060x1236.jpeg?width=465&dpr=1&s=none',
              'ambot ninyo',
              'Farmer Adolpo',
              'https://upload.wikimedia.org/wikipedia/commons/e/e1/Hitler_portrait_crop.jpg'),
          itemCard(
              'Moo',
              'https://images.pexels.com/photos/33550/cows-curious-cattle-agriculture.jpg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
              'Moo.',
              'Moo O. Oo',
              'data:image/jpeg;base64,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'),
        ],
      ),
    );
  }

  Card itemCard(String title, String imageURL, String desc, String authorName,
      String profileURL) {
    return Card(
      child: Container(
        width: 700,
        height: 340,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover, image: NetworkImage(imageURL)),
                  color: Colors.green.shade200,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(5),
                      bottomLeft: Radius.circular(5)),
                ),
              ),
            ),
            Expanded(
              child: Container(
                  padding: EdgeInsets.all(20),
                  color: Colors.white,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ItemTag(),
                        Text(
                          title,
                          style: TextStyle(
                              fontSize: 21, fontWeight: FontWeight.bold),
                        ),
                        Text(desc, style: TextStyle(color: Colors.grey)),
                        Divider(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          fit: BoxFit.fill,
                                          image: NetworkImage(profileURL)),
                                      shape: BoxShape.circle,
                                      color: Colors.green),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  authorName,
                                  style: TextStyle(fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            Text(
                              "Sept 11, 2001",
                              style: TextStyle(color: Colors.grey),
                            )
                          ],
                        )
                      ])),
            ),
          ],
        ),
      ),
    );
  }

  Container ItemTag() {
    return Container(
        decoration: BoxDecoration(
            color: Colors.green.shade100,
            borderRadius: BorderRadius.all(Radius.circular(3))),
        padding: EdgeInsets.symmetric(horizontal: 7, vertical: 4),
        child: Text(
          "FOOD",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.green,
              letterSpacing: 1),
        ));
  }
}
