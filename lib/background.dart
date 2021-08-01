import 'package:flutter/material.dart';
import 'package:uiflutter/theme.dart';

class Background extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: Icon(
          Icons.grid_view,
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                size: 35,
              )),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Stack(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/avatar.png'),
                ),
                Positioned(
                  right: 0,
                  top: 1,
                  child: Container(
                    height: 12,
                    width: 12,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(8)),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                Container(
                  color: MyTheme.secondry,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: MyTheme.primary,
                    borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(80)),
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 170,
            child: Stack(
              children: [
                Container(
                  color: MyTheme.primary,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: MyTheme.secondry,
                    borderRadius:
                        BorderRadius.only(topRight: Radius.circular(80)),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
