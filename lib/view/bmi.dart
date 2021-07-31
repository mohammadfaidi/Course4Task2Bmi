import 'package:flutter/material.dart';
import '../widgets/text.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


	
 
class BMICalculator extends StatefulWidget {
  
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
 
class _MyHomePageState extends State<BMICalculator> {
 double _currentSliderValue = 100;
  double _currentSliderValue2 = 70;
  bool isSelected = false;
int fav = Colors.white.value;
 double _weight = 60;
 double h=0.0;
 double w=0.0;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    //double values =70;
    
    return 
   Scaffold(
      appBar: AppBar(
        //backgroundColor: Colors.black,
        //
        
        //The following elevations have defined shadows: 1, 2, 3, 4, 6, 8, 9, 12, 16, 24.
elevation: 8,
        backgroundColor: Color(0xff12153b),
        //title: Text("BMI CALCULATER",),
         centerTitle: true,
         title:text
         (
           title:"BMI CALCULATOR ",
         color:Colors.white,
         fontWeight:FontWeight.bold
         
         ),


      ), 
      backgroundColor: Color(0xff12153b),
  body: Container(
height: height ,
            width: width,
    child: Column(
      children: [
        Expanded(
          flex: 9,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
            height: height *8,
            width: width,
            child: SingleChildScrollView(
                          child: Column(
                children: <Widget>[
                 
SizedBox(height:20,),
Container(
  decoration: BoxDecoration(
  color: Colors.white30,
borderRadius: BorderRadius.circular(18)
  ),
  height: height*.7,
  width: width,
  child:Column(
  children:[
              SizedBox(height:8,),
text(title:"Height",
color:Colors.white,
size:18,

),
SizedBox(height:10,),
Row(
  mainAxisAlignment: MainAxisAlignment.center,
  crossAxisAlignment: CrossAxisAlignment.end,

  children: [
  //title:"183"
text(title:_currentSliderValue.round().toString(),
align: Alignment.bottomCenter,
color:Colors.white,
size:35,
),
text(title:"CM",
color:Colors.white70,
size:18,
),




  ],
),
SizedBox(height:5 ,),
//pub.dev ->help you 
Slider(
  activeColor: Colors.black,
  inactiveColor: Colors.white.withOpacity(.5),
  value: _currentSliderValue, 
  label: _currentSliderValue.round().toString(),
  onChanged: (double newvalue){
  setState(() {
              _currentSliderValue =newvalue;
  });
  },
  min:50,
  max:200),
 SizedBox(height:8,),
text(title:"Weight",
color:Colors.white,
size:18,

),
SizedBox(height:5,),
Row(
  mainAxisAlignment: MainAxisAlignment.center,
  crossAxisAlignment: CrossAxisAlignment.end,

  children: [
  //title:"183"
text(title:_currentSliderValue2.round().toString(),
align: Alignment.bottomCenter,
color:Colors.white,
size:35,
),
text(title:"KG",
color:Colors.white70,
size:18,
),




  ],
),
SizedBox(height:5 ,),
//pub.dev ->help you 
Slider(
  activeColor: Colors.black,
  inactiveColor: Colors.white.withOpacity(.5),
  value: _currentSliderValue2, 
  label: _currentSliderValue2.round().toString(),
  onChanged: (double newvalue){
  setState(() {
              _currentSliderValue2 =newvalue;
  });
  },
  min:50,
  max:200),
  ListTile(
    title: text(title:"Male",
color:Colors.white70,
size:18,
),
    leading: Radio(
      value: 1,
      groupValue:fav ,
      onChanged: (val){
        setState(() {
                    fav =val;
                  });
      },
      
    ),
  ),
  ListTile(
    title: text(title:"Female",
color:Colors.white70,
size:18,
),
    leading: Radio(
      value: 2,
      groupValue:fav ,
      onChanged: (val){
        setState(() {
                    fav =val;
                  });
      },
      
    ),
  ),

 AnimatedContainer(
        width: isSelected?100:h,
        height: isSelected?100:w,
        alignment: isSelected?Alignment.center:Alignment.center,
        duration: Duration(seconds: 2),
         decoration: BoxDecoration (
                   color: isSelected?Colors.black:Colors.white,

            borderRadius: BorderRadius.circular(25.0)
          ),
      //  child: Text("${_currentSliderValue2.round() / (_currentSliderValue2.round() * _currentSliderValue2.round()) }",style: TextStyle(color: Colors.white),),
      child: Text("BMI:${(_weight / (_currentSliderValue/100 * _currentSliderValue/100)).toStringAsFixed(2) }",style: TextStyle(color: isSelected?Colors.white:Colors.black,fontWeight: FontWeight.bold,)),
      ),

  ]



  ),
),

SizedBox(height:20),


                ],

              ),
            ),
          ),
                    ),
        ),
Expanded(
  child:   Container(
    width : width,
    height: height*.1,
    color:Colors.white,
    child: FlatButton(
       
      child: text(title:"Calculate your BMI",fontWeight:FontWeight.bold,size:17),
      onPressed: (){
setState(() {
  isSelected = !isSelected;
  h=100;
  w=100;


});
//print("${_weight / (_currentSliderValue * _currentSliderValue) }");


//show dialog
      },

    ),
    
  ),


),

      ],
    ),
  ),
    



    );
 }

}



