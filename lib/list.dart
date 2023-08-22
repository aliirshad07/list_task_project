import 'package:flutter/material.dart';

class ListWidget extends StatelessWidget {
  const ListWidget({super.key});
  final int itemCount = 100;
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff9DC183),
          elevation: 0.0,
          title: Text(
            'Task List',
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
              letterSpacing: 1.0,
              fontWeight: FontWeight.w700,
            ),
          ),
          leading: Icon(
            Icons.menu_outlined,
            color: Colors.white,
            size: 30,
          ),
          leadingWidth: 40,
        ),
        body: ListView.builder(
          itemCount: itemCount,
          itemBuilder: (context,index)=> ListItemWidget()
        )
      ),
    );
  }
}

class ListItemWidget extends StatefulWidget {
  const ListItemWidget({super.key});
  @override
  State<ListItemWidget> createState() => _ListItemWidgetState();
}


class _ListItemWidgetState extends State<ListItemWidget> {
  var count = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 17, vertical: 5),
              decoration: BoxDecoration(
                  color: Color(0xff9DC183),
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Text(
                count.toString(),
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                  color: Colors.white
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  borderRadius: BorderRadius.circular(10)
                ),
                child: IconButton(
                  onPressed: () {
                    setState(() {
                      count++;
                    });
                  },
                  icon: Icon(Icons.add, size: 24, color: Colors.white,),
                ),
              ),
            ),
          ],
        )
    );
  }
}
