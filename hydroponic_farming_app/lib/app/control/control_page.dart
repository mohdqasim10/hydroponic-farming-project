import 'package:flutter/material.dart';

class ControlPage extends StatelessWidget {
  const ControlPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.primaryVariant,
        body: SafeArea(
            child: Stack(
          alignment: Alignment.topLeft,
          children: [
            SizedBox(
              height: 210,
              child: Image.asset("assets/roots.png"),
            ),
            Stack(
              alignment: Alignment.topCenter,
              children: [
                _buildStackFirstChild(context),
                _buildStackSecondChild(),
              ],
            ),
          ],
        )));
  }

  Widget _buildStackFirstChild(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 16, 32, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "Control",
                style: TextStyle(
                    color: Colors.white70,
                    fontSize: 28,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 32, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "Status",
                style: TextStyle(
                    color: Colors.white70,
                    fontSize: 28,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.15,
        ),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.green[50],
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(48),
                topRight: Radius.circular(48),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 130, 16, 16),
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                children: [
                  _buildCustomListCard(
                    title: "Lamp",
                    subtitle: "On",
                    icon: Icon(Icons.light, size: 48.0, color: Colors.black),
                  ),
                  SizedBox(height: 8.0),
                  Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32)),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: ListTile(
                          leading: ImageIcon(
                            AssetImage("assets/ac.png"),
                            size: 34.0,
                            color: Colors.black,
                          ),
                          title: Text(
                            "Fan",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(
                            "Off",
                            style: TextStyle(
                                color: Colors.red, fontWeight: FontWeight.bold),
                          ),
                        ),
                      )),
                  SizedBox(height: 8.0),
                  _buildCustomListCard(
                    title: "Water Pump",
                    subtitle: "On",
                    icon: Icon(Icons.countertops,
                        size: 48.0, color: Colors.black),
                  ),
                  SizedBox(height: 8.0),
                  _buildCustomListCard(
                    title: "Filter Water Pump",
                    subtitle: "On",
                    icon: Icon(Icons.invert_colors_off_outlined,
                        size: 48.0, color: Colors.black),
                  ),
                  SizedBox(height: 8.0),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildStackSecondChild() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 130, 0, 0),
      child: Container(
        height: 180,
        width: 320,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(38),
            )),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 100,
                  child: Image.asset("assets/plant.png"),
                ),
                Text(
                  "Hydroponic",
                  style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w800),
                ),
                Text(
                  "Farming",
                  style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w800),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 32, 0, 32),
              child: VerticalDivider(thickness: 4.0),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 8.0, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 100,
                    child: Image.asset("assets/clouds.png"),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 4, 0, 0),
                    child: Text(
                      "Humidity 35%",
                      style: TextStyle(
                          fontSize: 14.0, fontWeight: FontWeight.w800),
                    ),
                  ),
                  Text(
                    "Wind 13km/h",
                    style:
                        TextStyle(fontSize: 14.0, fontWeight: FontWeight.w800),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildCustomListCard({String? title, String? subtitle, Icon? icon}) {
    return Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListTile(
            leading: icon,
            title: Text(
              title as String,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              subtitle as String,
              style:
                  TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
            ),
          ),
        ));
  }
}
