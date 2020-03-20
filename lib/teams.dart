import 'package:flutter/material.dart';
import 'models/team_model.dart';

class Teams extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemCount: teams.length,
        itemBuilder: (_, index) {
          return ListTile(
            leading: Image(image: teams[index].assetImage()),
            title: Text(
              teams[index].name,
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            trailing: SizedBox(
              width: 100.0,
              child: Row(
                children: [
                  Tooltip(
                    message: teams[index].isCurrentlyActive ? 'Is currently active' : 'Is not currently active',
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Icon(
                        Icons.whatshot,
                        color: teams[index].isCurrentlyActive ? Colors.red : Colors.grey,
                      ),
                    ),
                  ),
                  Tooltip(
                    message: teams[index].hasWonPrizes ? 'Has won prizes' : 'Has not won prizes',
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Icon(
                        Icons.stars,
                        color: teams[index].hasWonPrizes ? Colors.blueAccent : Colors.grey,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        separatorBuilder: (_, __) => Divider(),
      ),
    );
  }
}