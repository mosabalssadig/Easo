
// ignore_for_file: prefer_const_constructors

import 'package:easo/loginHandle.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'profile.dart';

class LoginPage extends StatelessWidget{
 
 final controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(title: Text(""),
      backgroundColor: Colors.deepPurple.shade200,
      ),
      backgroundColor: Colors.grey[300],
      body: 
     Center(
        
          child: Column(
            
             children: <Widget>[
              
              Image.asset(
                './assets/images/logo.png',
                color: Color.fromARGB(255, 154, 131, 194),
                scale: 2.0,
    
                
                ),
                
                 
               /*Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4.0),
                      child: Text(
                        ' ',
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                  */
        Obx((){
          if (controller.googleAccount.value == null) {
            return buildLogin();
          } else {
            return buildProfile();
          }
        }),
            ],
            
         ),
        
     ),
        
    );
  }

   buildLogin() {
    return Center(

        child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
                "Where easliy accessing.. ",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                height: 0,
               )
              ),
              
              
      GestureDetector(
        
            child: Image.asset(
         './assets/images/gog.png',
           
          width:240,
            ),
        onTap: () =>  controller.login(),
        
     ),
     Text("OR"),
     Image.asset(
         './assets/images/face.png',
           
          width: 248,
            ),
        
        
     ],
      ),
      
      );
     
     
      
        }
        
  /*Column buildProfile() {
    return Column(
          children: [
            CircleAvatar(
              backgroundImage: Image.network(controller.googleAccount.value?.photoUrl ?? '').image,
              radius: 100,
            ),
            Text( 
              controller.googleAccount.value?.displayName ?? "",
              style: Get.textTheme.headline4,
            ),
            Text(
              controller.googleAccount.value?.email ?? "",
              style: Get.textTheme.bodyMedium,
              ),
              const SizedBox(height: 20,),
              ActionChip(

                label: Text("Sign out"),
                avatar: Icon(Icons.logout_rounded),
                onPressed: () => controller.logout(),

                )
          ],
        );
  }
*/
  /*
  FloatingActionButton buildLogin() {
    return FloatingActionButton.extended(
    onPressed: (){
          controller.login();
        }, label: Text("Sign in with Google"),
       icon: Image.asset(
          'lib/assets/images/google.png',
           height: 32,
          width: 23,
         
        ),
        
        backgroundColor: Color.fromARGB(255, 255, 249, 249),
        foregroundColor: Color.fromARGB(248, 12, 9, 9),
        );
   
   */
}

