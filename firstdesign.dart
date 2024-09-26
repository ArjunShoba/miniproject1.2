import 'package:flutter/material.dart';
import 'package:miniproject2/database.dart';

class Firstdesign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
        title: Text(
          "Cuisines",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        actions: [
          Icon(
            Icons.more_vert,
            color: Colors.white,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
            itemCount: DataBase.MyList.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 15,
                crossAxisSpacing: 15,
                childAspectRatio: 0.7),
            itemBuilder: (context, index) {
              return Container(
                height: 40,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Column(
                  children: [
                    Container(
                      height: 200,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          image: DecorationImage(
                            image: AssetImage(DataBase.MyList[index]["image"]),
                            fit: BoxFit.cover,
                          )),
                    ),
                    Text(
                      DataBase.MyList[index]["name"],
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    Text(
                      DataBase.MyList[index]["place"],
                      style: TextStyle(color: Colors.grey, fontSize: 15),
                    )
                  ],
                ),
              );
            }),
      ),
    );
  }
}
