import 'package:firebase_auth/firebase_auth.dart';
import 'package:uom_travel_buddy/user/models/user_models.dart';

final FirebaseAuth fAuth = FirebaseAuth.instance;
User? currentFirebaseUser;

UserModel? userModelCurrentInfo;
