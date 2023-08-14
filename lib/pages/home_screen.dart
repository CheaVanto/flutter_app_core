import 'package:flutter/material.dart';

class MenuItem {
  final String name;
  final String imageUrl;
  final String routeName;

  MenuItem(this.name, this.imageUrl, this.routeName);
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Web View'),
        ),
        body: buildBody(context));
  }

  Widget buildBody(BuildContext context) {
    // List<Model> products = controller.homeLayouts![2].items;
    List<MenuItem> menuItems = [
      MenuItem('六合圖庫', 'https://img.icons8.com/color/100/lotto.png', ''),
      MenuItem('視頻開獎', 'https://img.icons8.com/flat-round/64/image-file.png',
          'webview'),
      MenuItem('査詢助手', 'https://img.icons8.com/color/48/help--v1.png', ''),
      MenuItem(
          '𢟍史開獎',
          'https://img.icons8.com/external-dreamcreateicons-flat-dreamcreateicons/100/external-time-left-time-and-date-dreamcreateicons-flat-dreamcreateicons.png',
          ''),
      MenuItem('資訊統計', 'https://img.icons8.com/color/48/pie-chart--v1.png', ''),
      MenuItem(
          '挑碼助手',
          'https://img.icons8.com/color/48/circled-user-male-skin-type-3--v1.png',
          '')
    ];
    return CustomScrollView(
        controller: PageController(),
        // physics: BouncingScrollPhysics(),
        slivers: <Widget>[listMenuItem(menuItems)]);
  }

  SliverPadding listMenuItem(List<MenuItem> menuItems) {
    return SliverPadding(
      padding: const EdgeInsets.all(12.0),
      sliver: SliverGrid(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 0,
          mainAxisSpacing: 0,
          childAspectRatio: 1, // Modify this aspect ratio as needed
        ),
        delegate: SliverChildBuilderDelegate(
          (BuildContext context, int index) {
            MenuItem menuItem = menuItems[index];
            return Padding(
                padding: const EdgeInsets.all(0), // Padding for inner border
                child: GestureDetector(
                  onTap: () => {
                    if (menuItem.routeName.isNotEmpty)
                      {Navigator.pushNamed(context, menuItem.routeName)}
                  },
                  child: Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey.shade300,
                          width: 0.5, // Outer border width
                        ),
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            width: 56,
                            height: 56,
                            child: Image.network(
                              menuItem
                                  .imageUrl, // Replace with actual image URL
                              fit: BoxFit
                                  .cover, // Scale and crop the image to cover the entire container
                            ),
                          ),
                          Expanded(
                              child: Center(
                            child: Text(menuItem.name),
                          )),
                          menuItem.routeName.isEmpty ? Expanded(
                              child: const Center(
                            child: Text("Comming Soon!", style: TextStyle(fontSize: 10)),
                          )) : Container()
                        ],
                      )),
                ));
          },
          childCount: menuItems.length,
        ),
      ),
    );
  }
}
