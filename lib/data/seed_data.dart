import '../providers/user.dart';

class DummyData {
  static const List<User> users = [
    const User(
        id: "1",
        name: "Pitrens",
        nationality: "Haiti",
        city: "Hsinchu",
        description: "I am one of this app devloper",
        occupation: "Software engineer",
        image: "assets/images/me.jpeg"),
    const User(
        id: "2",
        name: "Francesca",
        nationality: "Haiti",
        city: "Hsinchu",
        description: "I am one of the founder of this app",
        occupation: "Quality Control engineer",
        image: "assets/images/francesca.jpeg"),
    const User(
        id: "1",
        name: "Slot",
        nationality: "Haiti",
        city: "Taipei",
        description: "I am one of this app devloper",
        occupation: "Software engineer",
        image: "assets/images/slot.jpeg"),
  ];
}
