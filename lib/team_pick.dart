import 'package:flutter/material.dart';
import 'models/team_model.dart';

class TeamPick extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Container(
        //   margin: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 30.0),
        //   child: Text('Choose your favorite team'),
        // ),
        TeamsCarroussel(),
        ButtonBar(
          alignment: MainAxisAlignment.center,
          buttonPadding: EdgeInsets.all(20.0),
          children: [
            MaterialButton(
              // color: Colors.blue,
              textColor: Colors.white,
              disabledColor: Colors.grey,
              disabledTextColor: Colors.black,
              padding: EdgeInsets.all(16.0),
              splashColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(16.0),
                side: BorderSide(color: Colors.transparent, width: 2.0)
              ),
              onPressed: () {
                // TODO: show team page
              },
              child: Text('See team', style: TextStyle(fontSize: 20.0))
            ),
            MaterialButton(
              textColor: Colors.white,
              disabledColor: Colors.grey,
              disabledTextColor: Colors.black,
              padding: EdgeInsets.all(16.0),
              splashColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(16.0),
                side: BorderSide(color: Colors.white, width: 2.0)
              ),
              onPressed: () {
                // TODO: pick team
              },
              child: Text('Pick team', style: TextStyle(fontSize: 20.0))
            ),
          ],
        ),
      ],
    );
  }
}

class TeamsCarroussel extends StatefulWidget {
  @override
  _TeamsCarrousselState createState() => _TeamsCarrousselState();
}

class _TeamsCarrousselState extends State<TeamsCarroussel> {
  PageController controller;
  int _teamID = 0;

  @override
  void initState() {
    super.initState();
    controller = PageController(
      initialPage: _teamID,
      keepPage: false,
      viewportFraction: 0.4,
    );
  }

  @override
  dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 160,
          child: PageView.builder(
            itemCount: teams.length,
            controller: controller,
            onPageChanged: (int index) => setState(() => _teamID = index),
            itemBuilder: (_, i) {
              return Transform.scale(
                scale: i == _teamID ? 1 : 0.7,
                child: Container(
                  margin: const EdgeInsets.all(10.0),
                  child: Image(image: teams[i].assetImage()),
                )
              );
            },
          ),
        ),
        Container(
            margin: const EdgeInsets.symmetric(vertical: 10.0),
            child: Text(
              teams[_teamID].name,
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
          ),
      ],
    );
  }
}
