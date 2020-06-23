import 'package:quizapp/questions.dart';

List<Questions> getQuestion() {

  List<Questions> ques = new List<Questions>();
  Questions que = new Questions(
      que:"Paris is the Capital City of ?",
      op1:"France", op2:"Norway", op3:"Canada",op4: "Greece",
      answer:"France",
      imgUrl: "https://media.cntraveler.com/photos/5cf96a9dd9fb41f17ed08435/16:9/w_1440,c_limit/Eiffel%2520Tower_GettyImages-1005348968.jpg"    );
  ques.add(que);

  que = new Questions(
      que:"The world famous Ajanta caves are situated in?",
      op1:"Orissa", op2:"Karnataka", op3:"Madhya Pradesh",op4: "Maharashtra",
      answer:"Maharashtra",
      imgUrl: "https://cdn.britannica.com/70/153470-050-F4594C27/Ajanta-Caves-Maharashtra-India.jpg"  );
  ques.add(que);

  que = new Questions(
      que:"We remember Charles Babbage (1792-1871) for what ?",
      op1:"Computers", op2:"Radio-Telegraphy", op3:"Steam Boating",op4: "Telescope",
      answer:"Computers",
      imgUrl: "https://www.surveyhistory.org/images/babbage_small.jpg");
  ques.add(que);

  que = new Questions(
      que: "The Famous 'Golconda Fort' is located in which state ?",
      op1: "Punjab", op2:"Telangana", op3:"Goa",op4: "Andhra Pradesh",
      answer:"Telangana",
      imgUrl: "https://onlinehyderabad.in/wp-content/uploads/2019/04/10-Mindblowing-Facts-About-Golconda-Fort-Hyderabad.jpg");
  ques.add(que);

  que = new Questions(
      que: "What is the capital of Australia?",
      op1: "Copenhagen", op2:"Canberra", op3:"Athens",op4: "Helsinki",
      answer:"Canberra",
      imgUrl: "https://www.planetware.com/photos-large/AUS/australia-canberra-national-carillon.jpg");
      ques.add(que);
  return ques;
}