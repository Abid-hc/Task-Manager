import 'dart:convert';
import 'package:task_manager_with_rest_api/style/style.dart';
import 'package:http/http.dart' as http;

var BaseURL="https://task.teamrabbil.com/api/v1";
var RequestHeader= {"Content-Type":"application/json"};

Future<bool> LoginRequest(FormValus) async{
  var URl= Uri.parse("${BaseURL}/login");
  var Postbody= json.encode(FormValus);
  var response= await http.post(URl,headers: RequestHeader,body: Postbody);
  var ResultCode=response.statusCode;
  var ResultBody=json.decode(response.body);

  if(ResultCode==200 && ResultBody['status']=="success"){
    SuccessToast("Request Success");
    return true;
  }

  else{
    ErrorToast("Request fail ! try again");
    return false;
  }

}


Future<bool> RegistrationRequest(FormValus) async{
  var URl= Uri.parse("${BaseURL}/registration");
  var Postbody= json.encode(FormValus);
  var response= await http.post(URl,headers: RequestHeader,body: Postbody);
  var ResultCode=response.statusCode;
  var ResultBody=json.decode(response.body);

  if(ResultCode==200 && ResultBody['status']=="success"){
    SuccessToast("Request Success");
    return true;
  }

  else{
    ErrorToast("Request fail ! try again");
    return false;
  }

}


Future<bool> SetPasswordRequest(FormValus) async{
  var URl= Uri.parse("${BaseURL}/RecoverResetPass");
  var Postbody= json.encode(FormValus);
  var response= await http.post(URl,headers: RequestHeader,body: Postbody);
  var ResultCode=response.statusCode;
  var ResultBody=json.decode(response.body);

  if(ResultCode==200 && ResultBody['status']=="success"){
    SuccessToast("Request Success");
    return true;
  }

  else{
    ErrorToast("Request fail ! try again");
    return false;
  }

}




//Email & OTP verify GetRequest-no need body//

Future<bool> VerifyEmailRequest(Email) async{
  var URl= Uri.parse("${BaseURL}/RecoverVerifyEmail/${Email}");
  var response= await http.get(URl,headers: RequestHeader,);
  var ResultCode=response.statusCode;
  var ResultBody=json.decode(response.body);

  if(ResultCode==200 && ResultBody['status']=="success"){
    SuccessToast("Request Success");
    return true;
  }

  else{
    ErrorToast("Request fail ! try again");
    return false;
  }

}


Future<bool> VerifyOtpRequest(Email,OTP) async{
  var URl= Uri.parse("${BaseURL}/RecoverVerifyOTP/${Email}/${OTP}");
  var response= await http.get(URl,headers: RequestHeader,);
  var ResultCode=response.statusCode;
  var ResultBody=json.decode(response.body);

  if(ResultCode==200 && ResultBody['status']=="success"){
    SuccessToast("Request Success");
    return true;
  }

  else{
    ErrorToast("Request fail ! try again");
    return false;
  }

}





