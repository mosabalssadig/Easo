  import 'package:flutter/material.dart';
  import 'loginHandle.dart';
import 'package:get/get.dart';

Scaffold bebo (){
   return Scaffold(
    appBar: null,
       body: Center(
        child: Column(
          children: [
            
              Image.asset(
                './assets/images/logo.png',
                color: Color.fromARGB(255, 154, 131, 194),
                width:100,
                
                
                ),
                Text(
                "Where easliyY accessing.. ",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                height: 0,
               )
              ),
              
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4.0),
                      child: Text(
                        ' it takes only one click...',
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                  
          ],

        )
       ),
   );
}
    Column buildProfile() {
    final controller = Get.put(LoginController());
    
    return Column(
      mainAxisSize: MainAxisSize.max,
          
          
          children: [
            
            CircleAvatar(
              backgroundImage: Image.network(controller.googleAccount.value?.photoUrl ?? '').image,
              radius: 50,
              
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