// GENERATED CODE - DO NOT MODIFY BY HAND

part of models;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Channel _$ChannelFromJson(Map<String, dynamic> json) {
  return Channel()
    ..id = json['_id'] as String
    ..name = json['name'] as String
    ..fName = json['fname'] as String
    ..type = json['t'] as String
    ..msgs = json['msgs'] as int
    ..readOnly = json['ro'] as bool
    ..sysMes = json['sysMes'] as bool
    ..isDefault = json['default'] as bool
    ..broadcast = json['broadcast'] as bool
    ..timestamp = json['ts'] == null ? null : _fromJsonToDateTime(json['ts'])
    ..updatedAt = json['_updatedAt'] == null
        ? null
        : _fromJsonToDateTime(json['_updatedAt'])
    ..user = json['u'] == null
        ? null
        : User.fromJson(json['u'] as Map<String, dynamic>)
    ..lastMessage = json['lastMessage'] == null
        ? null
        : Message.fromJson(json['lastMessage'] as Map<String, dynamic>);
}

Map<String, dynamic> _$ChannelToJson(Channel instance) {
  var val = <String, dynamic>{
    '_id': instance.id,
    'name': instance.name,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('fname', instance.fName);
  val['t'] = instance.type;
  val['msgs'] = instance.msgs;
  writeNotNull('ro', instance.readOnly);
  writeNotNull('sysMes', instance.sysMes);
  val['default'] = instance.isDefault;
  writeNotNull('broadcast', instance.broadcast);
  writeNotNull('ts', instance.timestamp?.toIso8601String());
  writeNotNull('_updatedAt', instance.updatedAt?.toIso8601String());
  writeNotNull('u', instance.user);
  writeNotNull('lastMessage', instance.lastMessage);
  return val;
}

ChannelSubscription _$ChannelSubscriptionFromJson(Map<String, dynamic> json) {
  return ChannelSubscription()
    ..id = json['_id'] as String
    ..alert = json['alert'] as bool
    ..name = json['name'] as String
    ..displayName = json['fname'] as String
    ..open = json['open'] as bool
    ..roomId = json['rid'] as String
    ..type = json['t'] as String
    ..user = json['u'] == null
        ? null
        : User.fromJson(json['u'] as Map<String, dynamic>)
    ..roles = (json['roles'] as List)?.map((e) => e as String)?.toList()
    ..unread = json['unread'] as int;
}

Map<String, dynamic> _$ChannelSubscriptionToJson(
        ChannelSubscription instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'alert': instance.alert,
      'name': instance.name,
      'fname': instance.displayName,
      'open': instance.open,
      'rid': instance.roomId,
      't': instance.type,
      'u': instance.user,
      'roles': instance.roles,
      'unread': instance.unread
    };

Pagination _$PaginationFromJson(Map<String, dynamic> json) {
  return Pagination()
    ..count = json['count'] as int
    ..offset = json['offset'] as int
    ..total = json['total'] as int;
}

Map<String, dynamic> _$PaginationToJson(Pagination instance) =>
    <String, dynamic>{
      'count': instance.count,
      'offset': instance.offset,
      'total': instance.total
    };

Message _$MessageFromJson(Map<String, dynamic> json) {
  return Message()
    ..id = json['_id'] as String
    ..roomId = json['rid'] as String
    ..msg = json['msg'] as String
    ..editedBy = json['editedBy'] as String
    ..groupable = json['groupable'] as bool
    ..editedAt = json['editedAt'] == null
        ? null
        : DateTime.parse(json['editedAt'] as String)
    ..timestamp = json['ts'] == null ? null : _fromJsonToDateTime(json['ts'])
    ..updatedAt = json['_updatedAt'] == null
        ? null
        : _fromJsonToDateTime(json['_updatedAt'])
    ..mentions = (json['mentions'] as List)
        ?.map(
            (e) => e == null ? null : User.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..user = json['u'] == null
        ? null
        : User.fromJson(json['u'] as Map<String, dynamic>)
    ..attachments = (json['attachments'] as List)
        ?.map((e) =>
            e == null ? null : Attachment.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..postMessage = json['postMessage'] == null
        ? null
        : PostMessage.fromJson(json['postMessage'] as Map<String, dynamic>);
}

Map<String, dynamic> _$MessageToJson(Message instance) {
  var val = <String, dynamic>{
    '_id': instance.id,
    'rid': instance.roomId,
    'msg': instance.msg,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('editedBy', instance.editedBy);
  writeNotNull('groupable', instance.groupable);
  writeNotNull('editedAt', instance.editedAt?.toIso8601String());
  writeNotNull('ts', instance.timestamp?.toIso8601String());
  writeNotNull('_updatedAt', instance.updatedAt?.toIso8601String());
  writeNotNull('mentions', instance.mentions);
  writeNotNull('u', instance.user);
  writeNotNull('attachments', instance.attachments);
  writeNotNull('postMessage', instance.postMessage);
  return val;
}

PostMessage _$PostMessageFromJson(Map<String, dynamic> json) {
  return PostMessage()
    ..roomId = json['roomId'] as String
    ..channel = json['channel'] as String
    ..text = json['text'] as String
    ..parseUrls = json['parseUrls'] as bool
    ..alias = json['alias'] as String
    ..emoji = json['emoji'] as String
    ..avatar = json['avatar'] as String
    ..attachments = (json['attachments'] as List)
        ?.map((e) =>
            e == null ? null : Attachment.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$PostMessageToJson(PostMessage instance) {
  var val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('roomId', instance.roomId);
  writeNotNull('channel', instance.channel);
  writeNotNull('text', instance.text);
  writeNotNull('parseUrls', instance.parseUrls);
  writeNotNull('alias', instance.alias);
  writeNotNull('emoji', instance.emoji);
  writeNotNull('avatar', instance.avatar);
  val['attachments'] = instance.attachments;
  return val;
}

Attachment _$AttachmentFromJson(Map<String, dynamic> json) {
  return Attachment()
    ..color = json['color'] as String
    ..text = json['text'] as String
    ..timestamp = json['timestamp'] as String
    ..thumbUrl = json['thumbUrl'] as String
    ..messageLink = json['messageLink'] as String
    ..collapsed = json['collapsed'] as bool
    ..authorName = json['authorName'] as String
    ..authorLink = json['authorLink'] as String
    ..authorIcon = json['authorIcon'] as String
    ..title = json['title'] as String
    ..titleLink = json['titleLink'] as String
    ..titleLinkDownload = json['titleLinkDownload'] as String
    ..imageUrl = json['imageUrl'] as String
    ..audioUrl = json['audioUrl'] as String
    ..videoUrl = json['videoUrl'] as String
    ..fields = (json['fields'] as List)
        ?.map((e) => e == null
            ? null
            : AttachmentField.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$AttachmentToJson(Attachment instance) {
  var val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('color', instance.color);
  writeNotNull('text', instance.text);
  writeNotNull('timestamp', instance.timestamp);
  writeNotNull('thumbUrl', instance.thumbUrl);
  writeNotNull('messageLink', instance.messageLink);
  writeNotNull('collapsed', instance.collapsed);
  writeNotNull('authorName', instance.authorName);
  writeNotNull('authorLink', instance.authorLink);
  writeNotNull('authorIcon', instance.authorIcon);
  writeNotNull('title', instance.title);
  writeNotNull('titleLink', instance.titleLink);
  writeNotNull('titleLinkDownload', instance.titleLinkDownload);
  writeNotNull('imageUrl', instance.imageUrl);
  writeNotNull('audioUrl', instance.audioUrl);
  writeNotNull('videoUrl', instance.videoUrl);
  val['fields'] = instance.fields;
  return val;
}

AttachmentField _$AttachmentFieldFromJson(Map<String, dynamic> json) {
  return AttachmentField()
    ..short = json['short'] as bool
    ..title = json['title'] as String
    ..value = json['value'] as String;
}

Map<String, dynamic> _$AttachmentFieldToJson(AttachmentField instance) =>
    <String, dynamic>{
      'short': instance.short,
      'title': instance.title,
      'value': instance.value
    };

User _$UserFromJson(Map<String, dynamic> json) {
  return User()
    ..id = json['_id'] as String
    ..name = json['name'] as String
    ..userName = json['username'] as String
    ..status = json['status'] as String
    ..token = json['token'] as String
    ..tokenExpires = json['tokenExpires'] as int;
}

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'username': instance.userName,
      'status': instance.status,
      'token': instance.token,
      'tokenExpires': instance.tokenExpires
    };
