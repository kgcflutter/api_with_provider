import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home_Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List Myproduct = [
      {"name": "Hilsa Fish", "img": "https://nomadparadise.com/wp-content/uploads/2021/03/bangladeshi-food-01-735x490.jpg.webp"},
      {"name": "Mutton Biriyani", "img": "https://nomadparadise.com/wp-content/uploads/2021/03/bangladeshi-food-02-735x490.jpg.webp"},
      {"name": "Beef Curry", "img": "https://nomadparadise.com/wp-content/uploads/2021/03/bangladeshi-food-04-735x490.jpg.webp"},
      {"name": "Flatbread", "img": "https://nomadparadise.com/wp-content/uploads/2021/03/bangladeshi-food-05b-735x490.jpg.webp"},
      {"name": "Lentil Soup", "img": "https://nomadparadise.com/wp-content/uploads/2021/03/bangladeshi-food-06-735x490.jpg.webp"},
      {"name": "Bhorta ", "img": "https://nomadparadise.com/wp-content/uploads/2021/03/bangladeshi-food-07-735x490.jpg.webp"},
      {"name": "Fuchka", "img": "https://nomadparadise.com/wp-content/uploads/2021/03/bangladeshi-food-08-735x490.jpg.webp"},
      {"name": "Shingara", "img": "https://nomadparadise.com/wp-content/uploads/2021/03/bangladeshi-food-09-735x490.jpg.webp"},

    ];

    return Scaffold(
      appBar: AppBar(
          title: Text("Provider Shop", style: TextStyle(color: Colors.black)),
          centerTitle: true,
          elevation: 0.0,
          leading: Icon(Icons.menu, color: Colors.black),
          actions: [
            Icon(
              Icons.more_vert_sharp,
              color: Colors.black,
            )
          ],
          backgroundColor: Colors.white),
      body: SingleChildScrollView(
        child: InkWell(
          onTap: () {

          },
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Card(
                child: TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      suffixIcon: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Container(child: Icon(Icons.filter_alt, size: 22)),
                      ),
                      hintText: "Search Product..",
                      hintStyle: TextStyle(fontSize: 15),
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(Radius.circular(15)))),
                ),
              ),
            ),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                alignment: Alignment.centerLeft,
                child: Text(
                  "Catagorys",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                )),
            Container(
              height: 170,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: Myproduct.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                    height: 110,
                    child: Card(
                      child: Container(
                        color: Color(0x18F3A1A1),
                        width: 120,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                  height: 70,
                                  width: 70,
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(50)),
                                      color: Colors.white),
                                  child: CircleAvatar(
                                    backgroundImage: NetworkImage(Myproduct[index]['img']),
                                  )),
                              SizedBox(
                                height: 10,
                              ),
                              Text( Myproduct[index]['name'],
                                  ),
                            ]),
                      ),
                    ),
                  );
                },
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              alignment: Alignment.centerLeft,
                child: Text("Bangladeshi Foods", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold))),
            Container(
              height: 550,
              child: GridView.builder(
                itemCount: Myproduct.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, crossAxisSpacing: 0, mainAxisSpacing: 0),
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                    decoration: BoxDecoration(color: Color(0x12A093C2)),
                    height: 120,
                    child: Column(children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.network(
                            Myproduct[index]['img']),
                      ),
                      SizedBox(height: 10),
                      Text(
                        Myproduct[index]['name'],
                        style:
                            TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                      )
                    ]),
                  );
                },
              ),
            )
          ]),
        ),
      ),
    );
  }
}
