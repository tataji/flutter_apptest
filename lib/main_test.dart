import 'package:flutter_apptest/commonMain.dart';
import 'constants.dart';

void main(){
  Constants.setEnvironment(Environment.STAGING);
  mainDelegate();
}