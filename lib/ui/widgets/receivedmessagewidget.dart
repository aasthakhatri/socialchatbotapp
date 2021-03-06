import 'package:flutter/material.dart';
import 'package:socialchatbotapp/global.dart';

import 'mycircleavatar.dart';
class ReceivedMessagesWidget extends StatelessWidget {
  final String message;
  final String imageUrl;
  const ReceivedMessagesWidget({
    Key key,
    @required this.message, this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 7.0),
      child: Row(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'anonymous',
                style: Theme.of(context).textTheme.caption,
              ),
              Container(
                constraints: BoxConstraints(
                    maxWidth: MediaQuery.of(context).size.width * .6),
                padding: const EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                  color: Colors.black26,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(25),
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25),
                  ),
                ),
                child: Text(
                  message,
                  style: Theme.of(context).textTheme.body1.apply(
                        color: Colors.black87,
                      ),
                ),
              ),
            ],
          ),
          SizedBox(width: 15),
        ],
      ),
    );
  }
}
