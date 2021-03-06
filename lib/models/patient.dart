import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutterappmain/models/user.dart';

class Patient extends User {
  String name;
  int age;
  String gender;
  final DocumentReference reference;
  Patient.fromSnapshot(DocumentSnapshot snapshot)
      : this.name = snapshot.data['name'],
        this.age = snapshot.data['age'],
        this.gender = snapshot.data['gender'],
        this.reference = snapshot.reference,
        super(uid: snapshot.data['uid'], email: snapshot.data['email']);
  void updateData(Map<String, dynamic> data) {
    this.name = data['name'];
    this.age = data['age'];
    this.gender = data['gender'];
  }
}
