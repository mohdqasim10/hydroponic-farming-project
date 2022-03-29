import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

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
    var size = MediaQuery.of(context).size;

    /*24 is for notification bar on Android*/
    final double itemHeight = (size.height - kToolbarHeight - 24) / 5;
    final double itemWidth = size.width / 2;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 16, 32, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "Monitoring",
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
              child: GridView(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 16,
                  childAspectRatio: (itemWidth / itemHeight),
                ),
                children: [
                  _buildCustomGridCard(
                    title: "Temperature",
                    subtitle: "31° C",
                    iconName: Icons.thermostat_auto_outlined,
                    footer: "Good",
                  ),
                  _buildCustomGridCard(
                    title: "Humidity",
                    subtitle: "54 %",
                    iconName: Icons.water_outlined,
                    footer: "Good",
                  ),
                  _buildCustomGridCard(
                    title: "Moisture",
                    subtitle: "100",
                    iconName: Icons.air_outlined,
                    footer: "Bad",
                  ),
                  _buildCustomGridCard(
                    title: "Water",
                    subtitle: "3",
                    iconName: Icons.invert_colors_off_outlined,
                    footer: "Good",
                  ),
                  _buildCustomGridCard(
                    title: "Humidity",
                    subtitle: "54 %",
                    iconName: Icons.water_outlined,
                    footer: "Good",
                  ),
                  _buildCustomGridCard(
                    title: "Moisture",
                    subtitle: "100",
                    iconName: Icons.hot_tub_outlined,
                    footer: "Bad",
                  ),
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

  Widget _buildCustomGridCard(
      {String? title, String? subtitle, IconData? iconName, String? footer}) {
    return Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: GridTile(
            header: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  title as String,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  subtitle as String,
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.green),
                ),
              ],
            ),
            footer: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(8, 1, 8, 1),
                    child: Text(
                      footer as String,
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: footer == "Good" ? Colors.green : Colors.red,
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(iconName, size: 58.0),
              ],
            ),
          ),
        ));
  }
}
