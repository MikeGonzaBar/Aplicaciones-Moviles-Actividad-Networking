import 'package:flutter/material.dart';
import 'package:networking/providers/request_provider.dart';
import 'package:provider/provider.dart';

class GetPage extends StatelessWidget {
  const GetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: context.watch<RequestProvider>().getReqList.length,
        itemBuilder: (BuildContext context, int index) {
          var itemReq = context.read<RequestProvider>().getReqList[index];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  border: Border.all(width: 2),
                  shape: BoxShape.circle,
                  // You can use like this way or like the below line
                  //borderRadius: new BorderRadius.circular(30.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("${itemReq["id"]}"),
                  ],
                ),
              ),
              title: Text(
                "${itemReq["title"]}",
                overflow: TextOverflow.ellipsis,
              ),
              subtitle: Text(
                "${itemReq["body"]}",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              trailing: Text("UserId: ${itemReq["userId"]}"),
            ),
          );
        },
      ),
    );
  }
}
