import 'package:flutter/material.dart';
import 'package:sale_your_food/screens/order_detail_finished.dart';

class HistoryItemFinished extends StatelessWidget {
  const HistoryItemFinished({
    Key key,
    @required this.ordernumber,
    @required this.pickupdetails,
    @required this.status,
  }) : super(key: key);

  final Text ordernumber;
  final Text pickupdetails;
  final Text status;

  @override
  Widget build(BuildContext context) {
    return Row(
        children: <Widget>[
          Flexible(
            child: ListTile(
              leading: Icon(
                Icons.alarm_on,
                size: 40,
                color: Colors.green
              ),
              onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => OrderDetailFinished()));
            },
              contentPadding: const EdgeInsets.symmetric(horizontal: 20),
              title: ordernumber,
              subtitle: pickupdetails,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(33)),
                color: Colors.green,
              ),
              child: status,
            ),
          ),
        ],
      );
  }
}