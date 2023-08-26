class Model {
  List<TicketsList>? ticketsList;

  Model({this.ticketsList});

  Model.fromJson(Map<String, dynamic> json) {
    if (json['ticketsList'] != null) {
      ticketsList = <TicketsList>[];
      json['ticketsList'].forEach((v) {
        ticketsList!.add(TicketsList.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (ticketsList != null) {
      data['ticketsList'] = ticketsList!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class TicketsList {
  int? id;
  String? title;
  int? sensitivityStatus;
  int? status;
  String? support;
  String? creationTime;
  String? lastModificationTime;

  TicketsList(
    {this.id,
      this.title,
      this.sensitivityStatus,
      this.status,
      this.support,
      this.creationTime,
      this.lastModificationTime});

  TicketsList.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    sensitivityStatus = json['sensitivityStatus'];
    status = json['status'];
    support = json['support'];
    creationTime = json['creationTime'];
    lastModificationTime = json['lastModificationTime'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['title'] = title;
    data['sensitivityStatus'] = sensitivityStatus;
    data['status'] = status;
    data['support'] = support;
    data['creationTime'] = creationTime;
    data['lastModificationTime'] = lastModificationTime;
    return data;
  }
}