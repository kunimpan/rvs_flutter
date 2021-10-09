import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TabBarMaterialWidget extends StatefulWidget {
  // const TabBarMaterialWidget({Key? key}) : super(key: key);
  final int index;
  final ValueChanged<int> onChangedTab;

  const TabBarMaterialWidget({
    required this.index,
    required this.onChangedTab,
    Key? key,
}) : super(key: key);


  @override
  _TabBarMaterialWidgetState createState() => _TabBarMaterialWidgetState();
}

class _TabBarMaterialWidgetState extends State<TabBarMaterialWidget> {
  @override
  Widget build(BuildContext context) {
    // final placeholder = Opacity(
    //   opacity: 0,
    //   child: IconButton(icon: Icon(Icons.no_cell), onPressed: null),
    // );

    return BottomAppBar(
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xFF00A3FF)
        ),
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            buildTabItem(
              index: 0,
              icon: Icon(
                FontAwesomeIcons.home,
                size: 30,),
            ),
            buildTabItem(
              index: 1,
              icon: Icon(FontAwesomeIcons.swatchbook,
                size: 30),
            ),
            // placeholder,
            buildTabItem(
              index: 2,
              icon: Icon(Icons.settings,
                  size: 35),
            ),
            // buildTabItem(
            //   index: 3,
            //   icon: Icon(Icons.settings),
            // ),
          ],
        ),
      ),
    );
  }

  Widget buildTabItem({required int index, required Icon icon}) {

    final isSelected = index == widget.index;

    return IconTheme(
      data: IconThemeData(
        color: isSelected? Colors.orange : Colors.white,
      ),
      child: IconButton(
        icon: icon,
        onPressed: () => widget.onChangedTab(index),
      ),
    );
  }
}
