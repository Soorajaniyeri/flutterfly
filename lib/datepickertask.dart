import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DatePickerTask extends StatefulWidget {
  const DatePickerTask({super.key});

  @override
  State<DatePickerTask> createState() => _DatePickerTaskState();
}

class _DatePickerTaskState extends State<DatePickerTask> {

  String gender = "Not Selected";
  GlobalKey<FormState> myForm = GlobalKey<FormState>();
  String? myDob = "please select dob";


 Future<String> selectDob() async{

  DateTime? dob =await showDatePicker(context: context, initialDate: DateTime.now(), firstDate: DateTime(1980), lastDate: DateTime(2025));

  return dob.toString();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SafeArea(
        child: Form(
          key: myForm,
          child: Column(
            children: [
              
              Padding(
                padding: EdgeInsets.all(30),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: "Enter your name",
                    prefixIcon: Icon(Icons.supervised_user_circle_outlined,color: Colors.indigo,),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))
                    )
                  ),
                  validator: (myValue){
                    
                    if(myValue!.isEmpty){
                      
                      return "Please enter your name";
                    }
                    
                    
                  },
                ),
              ),
              
              




              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Text("Select gender"),

                  SizedBox(
                    width: 20,),
                  Radio(value: "male", groupValue: gender, onChanged:(gettingValue){

                    setState(() {
                      gender = gettingValue!;
                    });


                  }),

                  Text("male"),

                  Radio(value: "female", groupValue: gender, onChanged:(gettingValue){

                    setState(() {
                      gender = gettingValue!;
                    });


                  }),

                  Text("female"),
                ],
              ),

              Padding(
                padding: const EdgeInsets.all(20),
                child: Divider(
                  color: Colors.grey.shade300,

                ),
              ),


              
              
              ElevatedButton(onPressed: (){

                selectDob();


              }, child: Text("Select date of birth")),

              SizedBox(
                height: 20,
              ),

              ElevatedButton(
                  onPressed: (){
                    
                    bool myStatus = myForm.currentState!.validate();
                    
                    if(myStatus==true && gender!="Not Selected"){
                      

                    }
                    
                  }, child: Text("Submit")),


                     ListTile(
                       leading: Icon(Icons.verified_user,size: 35,color: Colors.green,),
                       title:  Text("name"),
                       subtitle: Text("male"),
                       trailing: Text("sgh"),
                     )


            ],
          ),
        ),
      ),
    );
  }
}
