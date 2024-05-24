

import 'package:cloud_firestore/cloud_firestore.dart';

class  DatabaseService {





  Future addUserDetails(String firstName, String lastName, int age, String email) async {
    await FirebaseFirestore.instance.collection('users').add({

    'first name': '',
      'last name': '',
      'age': '',
      'email':''

  });
  }

}