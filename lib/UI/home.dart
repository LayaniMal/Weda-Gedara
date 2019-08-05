import 'package:flutter/material.dart';
import 'package:weda_gedara/Componants/colors.dart';
import 'package:weda_gedara/UI/herbal.dart';
import 'package:weda_gedara/UI/login.dart';

class ChoiseCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Select Catogory"),
          textTheme: TextTheme(title: TextStyle(color:kWhiteColor,fontSize: 20)),

          backgroundColor: kGreenColor1,
          //setting the icon for the AppBar
          titleSpacing: 20,
          actions: <Widget>[
            
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: Icon(Icons.select_all,size: 35.0),
            ),
          ],
        ),
        body: GridView.count(
            primary: false,
            padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
            crossAxisCount: 2,
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 3.0,
            children: List.generate(choices.length, (index) {
              return Center(
                child: ChoiceCard(choice: choices[index]),
              );
            }
            )
        )
    );
  }
}
class Choice {
  const Choice({this.title, this.path});

  final String title;
  final String path;
}
const List<Choice> choices = const <Choice>[
  const Choice(title: 'Herbal', path: 'assets/herbal.jpg'),
  const Choice(title: 'Yoga', path: 'assets/yoga.jpeg'),
  const Choice(title: 'Book', path: 'assets/book.png'),
  const Choice(title: 'Foods', path: 'assets/foods.jpg'),
  const Choice(title: 'Beauty', path: 'assets/beauty.jpg'),
  const Choice(title: 'Home Remedies', path: 'assets/homeremedies.jpg'), 

  
];

class ChoiceCard extends StatelessWidget {
  const ChoiceCard({Key key, this.choice}) : super(key: key);
  final Choice choice;

  @override
  Widget build(BuildContext context) {

    final TextStyle textStyle = Theme.of(context).textTheme.title;
    return Card(
        elevation: 2.0,
        color:kGreenColor6,
        child: Center(child: InkWell(
          onTap: () {
            Navigator.push(context, new MaterialPageRoute(
                builder: (context) => Herbal()
            ));
          },
          child: Column(children: <Widget>[

            Expanded(
              child: Image.asset(choice.path, width: 200.0, height: 200.0,),
              flex: 4,),
            SizedBox(height: 0.0,),
            Expanded(child: Text(choice.title,), flex: 1,),
          ],),
        ),
        )
    );
  }
}
