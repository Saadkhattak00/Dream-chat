import 'package:dreamchat/common/enums/message_enum.dart';

class MessageModel {
  final String senderId;
  final String reciverId;
  final String text;
  final MessageEnum type;
  final DateTime sent;
  final String messageId;
  final bool isSeen;

  MessageModel({
    required this.senderId,
    required this.reciverId,
    required this.text,
    required this.type,
    required this.sent,
    required this.messageId,
    required this.isSeen,
  });

  Map<String, dynamic> toMap() {
    return {
      'senderId': senderId,
      'reciverId': reciverId,
      'text': text,
      'type': type.type,
      'sent': sent.millisecondsSinceEpoch,
      'messageId': messageId,
      'isSeen': isSeen,
    };
  }

  factory MessageModel.fromMap(Map<String, dynamic> map) {
    return MessageModel(
      senderId: map['senderId'] ?? '',
      reciverId: map['reciverId'] ?? '',
      text: map['text'] ?? '',
      type: (map['type'] as String).toEnum(),
      sent: DateTime.fromMillisecondsSinceEpoch(map['sent']),
      messageId: map['messageId'] ?? '',
      isSeen: map['isSeen'] ?? false,
    );
  }
}
