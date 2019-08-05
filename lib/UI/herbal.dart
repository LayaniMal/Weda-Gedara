import 'package:flutter/material.dart';
import 'package:weda_gedara/Componants/colors.dart';
import 'package:weda_gedara/UI/home.dart';

class Herbal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Herbal"),
          textTheme: TextTheme(title: TextStyle(color:kWhiteColor,fontSize: 20)),

          backgroundColor: kGreenColor1,
          //setting the icon for the AppBar
          titleSpacing: 20,
          actions: <Widget>[
            
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: Icon(Icons.edit,size: 35.0),
            ),
          ],
        ),
        body: GridView.count(
            primary: false,
            padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
            crossAxisCount: 1,
            mainAxisSpacing: 30.0,
            crossAxisSpacing: 30.0,
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
  const Choice({this.title, this.path,this.discription});

  final String title;
  final String path;
  final String discription;
}
const List<Choice> choices = const <Choice>[
  const Choice(title: 'herbal',
   path: 'assets/herbal.jpg',
   discription:'When we think of medicinal herbs, most people’s minds go right to small weeds and flowers growing at the edge of your lawn or on a roadside.  We don’t usually think of trees as a source of medicine, but medicinal trees are all around us, hiding in plain sight.  Historically, much of the country was forested and the people had to find medicinal uses for the forest trees to stay healthy.USING TREES AS MEDICINEUsing trees as medicine breaks allows for some rather interesting preparations, as just about any part of the tree can be medicinal.  How do you work with medicinal wood?  It’s not edible, but still, you have to find a way to extract its potent medicine.  In those cases, the wood is boiled for extended periods or added to hot baths for topical use.For the most part, medicinal trees are used in the same way as other herbal preparations.  They can be infused into teas, tinctures, oils and made into salves and poultices.'),
   
];

class ChoiceCard extends StatelessWidget {
  const ChoiceCard({Key key, this.choice}) : super(key: key);
  final Choice choice;

  @override
  Widget build(BuildContext context) {

   TextStyle  textStyle = Theme.of(context).textTheme.title;
   TextStyle style=Theme.of(context).textTheme.display1;
    return Center(
      child: Card(
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
                child: Image.asset(choice.path, width: 500.0, height: 400.0,),
                flex: 2,),
              SizedBox(height: 10.0,),
              Expanded(child: Text(choice.title,), flex: 1,),
              Container(child: Expanded(
                child: Text(choice.discription),flex: 2,)
                ),
            
            ],),
          ),
          )
      ),
    );
  }
}
