// ignore_for_file: prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:mobile_int/home.dart';

class CreateToDoView extends StatelessWidget {
  const CreateToDoView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
          onPressed:(){
                 Navigator.push(
            context,
            MaterialPageRoute(builder: (context) {
              return const HomePage();
            }),
          );       

            }, 


        icon:Icon(Icons.arrow_back, color: Colors.black),),
          title: const Center(
            child: Text(
              'Create Todo',
              style: TextStyle(
                color: Color(0xFF25396f),
                fontSize: 25,
              ),
            ),
          ),
        ),
        

body:Padding(
  padding: const EdgeInsets.all(8.0),
  child:   Form(
    child:   ListView(
    children: [
    TextFormField(
    textCapitalization: TextCapitalization.sentences,
    maxLines: 1,
    keyboardType: TextInputType.text,
    decoration: InputDecoration(
    icon: Icon(Icons.person, color: Colors.black),
    label: Text('Name'),
    //labelStyle: TextStyle(color: myFocusMode.hasFocus ? Colors.black : Colors.red),
    //labelStyle: TextStyle(color: Colors.red),
    hintText: ('Can we know your name?'),
    focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Color(0x00ffb2b5))),
              ),
            ),
  
  
  
  
  
  
  
   TextFormField(
    textCapitalization: TextCapitalization.sentences,
    maxLines: 5,
    keyboardType: TextInputType.text,
    decoration: InputDecoration(
    icon: Icon(Icons.description_outlined,color: Colors.black),
    label: Text('Description'),
    //labelStyle: TextStyle(color: focusMode.hasFocus ? Colors.black : Colors.red),
    //labelStyle: TextStyle(color: Colors.red),
    hintText: ('Please tell us about you?'),
    focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.red),),
  
    
  
              ),
            ),
Row(children: [

 
              Expanded(
                 child: TextFormField(
  maxLines: 1,
  decoration: const InputDecoration(
    icon: Icon(Icons.calendar_today),
    labelText: 'Date',
    hintText: 'When were you born?',
  ),
  onSaved: (String? value) {
    // This optional block of code can be used to run
    // code when the user saves the form.
  },
  validator: (String? value) {
    return (value != null && value.contains('@')) ? 'Do not use the alphabetes.' : null;
  },
)
              ),


                SizedBox(width:10),
              Expanded(
                child: TextFormField(
  maxLines: 1,
  decoration: const InputDecoration(
    icon: Icon(Icons.watch),
    labelText: 'Time',
    hintText: 'What time was it?',
  ),
  onSaved: (String? value) {
    // This optional block of code can be used to run
    // code when the user saves the form.
  },
  validator: (String? value) {
    return (value != null && value.contains('@')) ? 'Do not use the alphabetes.' : null;
  },
)
              ),
],),

SizedBox(height: 50,),



TextButton(
                  
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: const Text('Create new ToDo'),
                  ),
                  style: TextButton.styleFrom(textStyle: 
                    const TextStyle(fontSize: 20),
                      primary: Colors.white,
                      backgroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.5)

                    
                  ),
),

)],
        ),
  
  
  
  
  
           
  
  
  
  
  
    ),
),

);




    
  }
}
