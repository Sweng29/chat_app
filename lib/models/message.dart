import 'package:chat_app/models/user.dart';

class Message {
  final User sender;
  final String time;
  final String text;
  final bool isLiked;
  final bool isRead;

  Message(this.sender, this.time, this.text, this.isLiked, this.isRead);

  static final User zain = User(1, 'Zain Ali', 'images/kashif.jpg');

  static final User sadiq = User(2, 'Sadique Ali', 'images/kashif.jpg');

  static final User kamran = User(3, 'Kamran Ali', 'images/kashif.jpg');

  static final User danish = User(4, 'Danish Kumar', 'images/kashif.jpg');

  static final User ali = User(5, 'Ali', 'images/kashif.jpg');

  static final User rehan = User(6, 'Rehan Ali', 'images/kashif.jpg');

  static final User asif = User(7, 'Asif Ali', 'images/kashif.jpg');

  static List<Message> chats = [
    Message(zain, '5.30 PM', 'Hey, Hi Kashif!', false, true),
    Message(asif, '6.03 AM', 'Hey, Hi Kashif!', false, false),
    Message(rehan, '7.30 PM', 'Hey, Hi Kashif!', true, true),
    Message(ali, '8.15 AM', 'Hey, Hi Kashif!', false, false),
    Message(sadiq, '9.30 PM', 'Hey, Hi Kashif!', true, true),
    Message(kamran, '10.12 AM', 'Hey, Hi Kashif!', false, false),
  ];
}
