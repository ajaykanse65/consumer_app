// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
//
// // Model class for User Profile
// class UserProfile {
//   final int id;
//   final String firstName;
//   final String lastName;
//   final String email;
//   final String avatar;
//
//   UserProfile({
//     required this.id,
//     required this.firstName,
//     required this.lastName,
//     required this.email,
//     required this.avatar,
//   });
//
//   factory UserProfile.fromJson(Map<String, dynamic> json) {
//     return UserProfile(
//       id: json['id'],
//       firstName: json['first_name'],
//       lastName: json['last_name'],
//       email: json['email'],
//       avatar: json['avatar'],
//     );
//   }
// }
//
// class UserProfileScreen extends StatefulWidget {
//   @override
//   _UserProfileScreenState createState() => _UserProfileScreenState();
// }
//
// class _UserProfileScreenState extends State<UserProfileScreen> {
//   late Future<UserProfile> _userProfileFuture;
//
//   @override
//   void initState() {
//     super.initState();
//     _userProfileFuture = fetchUserProfile();
//   }
//
//   Future<UserProfile> fetchUserProfile() async {
//     final response = await http.get(Uri.parse('https://reqres.in/api/users/2'));
//
//     if (response.statusCode == 200) {
//       final jsonBody = json.decode(response.body);
//       final userProfileData = jsonBody['data'];
//       return UserProfile.fromJson(userProfileData);
//     } else {
//       throw Exception('Failed to fetch user profile');
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('User Profile'),
//       ),
//       body: FutureBuilder<UserProfile>(
//         future: _userProfileFuture,
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return Center(child: CircularProgressIndicator());
//           } else if (snapshot.hasError) {
//             return Center(child: Text('Error: ${snapshot.error}'));
//           } else if (snapshot.hasData) {
//             final userProfile = snapshot.data!;
//
//             return Padding(
//               padding: EdgeInsets.all(16.0),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   CircleAvatar(
//                     backgroundImage: NetworkImage(userProfile.avatar),
//                     radius: 50,
//                   ),
//                   SizedBox(height: 16.0),
//                   Text('Name: ${userProfile.firstName} ${userProfile.lastName}'),
//                   Text('Email: ${userProfile.email}'),
//                 ],
//               ),
//             );
//           } else {
//             return Center(child: Text('No data found'));
//           }
//         },
//       ),
//     );
//   }
// }
//
// void main() {
//   runApp(MaterialApp(
//     home: UserProfileScreen(),
//   ));
// }

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

// Model class for User Data
class UserData {
  final String name;
  final String email;
  final String phone;
  final String address;

  UserData({
    required this.name,
    required this.email,
    required this.phone,
    required this.address,
  });

  factory UserData.fromJson(Map<String, dynamic> json) {
    return UserData(
      name: json['name'],
      email: json['email'],
      phone: json['phone'],
      address: json['address'],
    );
  }
}

class UserDataScreen extends StatefulWidget {
  @override
  _UserDataScreenState createState() => _UserDataScreenState();
}

class _UserDataScreenState extends State<UserDataScreen> {
  late Future<UserData> _userDataFuture;

  @override
  void initState() {
    super.initState();
    _userDataFuture = fetchUserData();
  }

  Future<UserData> fetchUserData() async {
    final response = await http.get(Uri.parse('https://zippyrepair.in/partner/portal/webservice_test/customer/check_mobile.php'));

    if (response.statusCode == 200) {
      final jsonBody = json.decode(response.body);
      return UserData.fromJson(jsonBody);
    } else {
      throw Exception('Failed to fetch user data');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Data'),
      ),
      body: FutureBuilder<UserData>(
        future: _userDataFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (snapshot.hasData) {
            final userData = snapshot.data!;

            return Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Name: ${userData.name}'),
                  Text('Email: ${userData.email}'),
                  Text('Phone: ${userData.phone}'),
                  Text('Address: ${userData.address}'),
                ],
              ),
            );
          } else {
            return Center(child: Text('No data found'));
          }
        },
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: UserDataScreen(),
  ));
}
