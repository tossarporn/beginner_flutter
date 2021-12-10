//ดึงข้อมูล
Future <String> loginUser () async{
  var user = await getUserFromDatabase();
  return "ชื่อผู้ใช้" +user;
}
//ได้ข้อมูลในอนาคต 10 วินาที
Future <String> getUserFromDatabase(){
  return Future.delayed(Duration(seconds: 10),()=>"kongruksiam");
}