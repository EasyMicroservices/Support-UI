class TicketModel {
  List<_Tickets>? tickets;
  int? totalCount;

  TicketModel({this.tickets, this.totalCount});

  TicketModel.fromJson(Map<String, dynamic> json) {
    if (json['tickets'] != null) {
      tickets = <_Tickets>[];
      json['tickets'].forEach((v) {
        tickets!.add(_Tickets.fromJson(v));
      });
    }
    totalCount = json['totalCount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (tickets != null) {
      data['tickets'] = tickets!.map((v) => v.toJson()).toList();
    }
    data['totalCount'] = totalCount;
    return data;
  }
}

class _Tickets {
  int? id;
  String? title;
  int? sensitivity;
  String? supporter;
  String? ticketCreationTime;
  String? lastModificationTime;
  int? status;

  _Tickets.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    sensitivity = json['sensitivity'];
    supporter = json['supporter'];
    ticketCreationTime = json['ticketCreationTime'];
    lastModificationTime = json['lastModificationTime'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['title'] = title;
    data['sensitivity'] = sensitivity;
    data['supporter'] = supporter;
    data['ticketCreationTime'] = ticketCreationTime;
    data['lastModificationTime'] = lastModificationTime;
    data['status'] = status;
    return data;
  }
}