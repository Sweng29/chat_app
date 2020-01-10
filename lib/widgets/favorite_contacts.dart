import 'package:chat_app/models/user.dart';
import 'package:flutter/material.dart';

class FavoriteContacts extends StatefulWidget {
  @override
  _FavoriteContactsState createState() => new _FavoriteContactsState();
}

class _FavoriteContactsState extends State<FavoriteContacts> {
  final User currentUser = User(0, 'Kashif Ali', 'images/kashif.jpg');

  static final User zain = User(1, 'Zain Ali', 'images/kashif.jpg');

  static final User sadiq = User(2, 'Sadique Ali', 'images/kashif.jpg');

  static final User kamran = User(3, 'Kamran Ali', 'images/kashif.jpg');

  static final User danish = User(4, 'Danish Kumar', 'images/kashif.jpg');

  static final User ali = User(5, 'Ali', 'images/kashif.jpg');

  static final User rehan = User(6, 'Rehan Ali', 'images/kashif.jpg');

  static final User asif = User(7, 'Asif Ali', 'images/kashif.jpg');

  // USERS that will appear as favorites on the top
  List<User> favorites = [zain, sadiq, kamran, asif, rehan];

  // Default messages in the list
  /**/

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Favorite',
                  style: TextStyle(
                    color: Colors.blueGrey,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.0,
                    fontSize: 16.0,
                  ),
                ),
                IconButton(
                  icon: Icon(
                    Icons.more_horiz,
                    color: Colors.blueGrey,
                    size: 30.0,
                  ),
                  onPressed: () {},
                )
              ],
            ),
          ),
          Container(
            height: 120.0,
            child: ListView.builder(
              padding: EdgeInsets.only(left: 10.0),
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    children: <Widget>[
                      CircleAvatar(
                        backgroundImage:
                            AssetImage(favorites.elementAt(index).imageUrl),
                        radius: 30.0,
                      ),
                      SizedBox(
                        height: 6.0,
                      ),
                      Text(
                        favorites.elementAt(index).name,
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.blueGrey,
                          fontSize: 14.0,
                        ),
                      ),
                    ],
                  ),
                );
              },
              itemCount: favorites.length,
            ),
          )
        ],
      ),
    );
  }
}
