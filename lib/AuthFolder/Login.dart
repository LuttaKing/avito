
import 'package:avito/AuthFolder/Register.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  String email='';
  String password='';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.grey[200],leading:  IconButton(icon: Icon(Icons.arrow_back,color: Colors.black,),onPressed: (){
        Navigator.pop(context);
      },),),
      backgroundColor: Colors.grey[200],
      body: Center(child: Container(child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: SingleChildScrollView(
                  child: Center(
                    child: Column(children: <Widget>[
 Text('Login',style: TextStyle(fontSize: 40,fontFamily: 'Ptsans'),),
 SizedBox(height: MediaQuery.of(context).size.height*0.037,),
            

            Container(decoration: BoxDecoration(color: Colors.blue[600],
                                          borderRadius: BorderRadius.all(Radius.circular(8)),),
              child: SizedBox(
                 height:MediaQuery.of(context).size.height*0.06,
            width: MediaQuery.of(context).size.width*0.79,
              child: FlatButton(onPressed: null,
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                Icon(MdiIcons.facebook,color: Colors.white,),
                Text('Continue with Facebook',style: TextStyle(fontFamily: 'Ptsans',color: Colors.white),),
              ],),),),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[SizedBox(width: 140,child: Divider()),Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text('OR'),
              ),SizedBox(width:MediaQuery.of(context).size.width*0.3,child: Divider())],),
            ),

             Padding(
               padding: const EdgeInsets.all(12.0),
               child: Form(
                        key: _formKey,
                        child: Column(children: [
                          Container(decoration: BoxDecoration(color: Colors.white,
                                          borderRadius: BorderRadius.all(Radius.circular(8)),),
                            child: TextFormField(
                              
                               validator: (val)=> val.length<7 || !val.contains('@') ? 'Enter Valid Email' : null,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  prefixIcon: Icon(Icons.email),
                              labelText: ' EMAIL',
                              labelStyle: TextStyle(fontSize: 14),
                            ),
                            onChanged: (val){
                              setState(()=> email=val);
                            },
                            ),
                          ),
                          SizedBox(   height:MediaQuery.of(context).size.height*0.03,),
                        
                          Container(decoration: BoxDecoration(color: Colors.white,
                                          borderRadius: BorderRadius.all(Radius.circular(8)),),
                            child: TextFormField(
                              
                              validator: (val)=> val.length<6 ? 'Password Should Be Longer' : null,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                prefixIcon: Icon(Icons.lock_outline),
                                  labelText: ' PASSWORD',
                                  labelStyle: TextStyle(fontSize: 14)),
                                  onChanged: (val){
                              setState(()=> password=val);
                            },
                            ),
                          )
                        ]),
                      ),
             ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 160.0, top: 30, bottom: 21),
                      child: Text('Forgot Password?',
                          style: TextStyle(
                            fontFamily: 'Muli',
                            decoration: TextDecoration.underline,
                            color: Colors.blue[400],
                            fontSize: 13,
                          )),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(color: Colors.blue[600],
                                            borderRadius: BorderRadius.all(Radius.circular(8)),),
                        child: SizedBox(
                           height:MediaQuery.of(context).size.height*0.06,
            width: MediaQuery.of(context).size.width*0.75,
                          child: FlatButton(onPressed: (){
                          if(_formKey.currentState.validate()){

                          }
                        },
            child: Text('LOGIN',style: TextStyle(fontFamily: 'Ptsans',color: Colors.white),),),),
                      ),
                    ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Dont Have An Account ?'),
            ),

            GestureDetector(child: Text('Create One Here',style: TextStyle(color: Colors.blue),),
            onTap: (){
              Navigator.push(
                                  context,
                                   MaterialPageRoute(fullscreenDialog: true,
                                   builder: (context) => RegisterPage(),
                                   ));
            },)
          ],),
                  ),
        ),
      ),),),
    );
  }
}