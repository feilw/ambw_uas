// class data-data yang akan di ambil

class cData {
  String cid;
  String ctitle;
  String cpubDate;
  String cdescription;
  String cthumbnail;
  String clink;

  cData({
    required this.cid,
    required this.ctitle,
    required this.cpubDate,
    required this.cdescription,
    required this.cthumbnail,
    required this.clink,
  });

  factory cData.fromJson(Map<String, dynamic> json) {
    return cData(
        cid: json['id'],
        ctitle: json['title'],
        cpubDate: json['pubDate'],
        cdescription: json['description'],
        cthumbnail: json['thumbnail'],
        clink: json['link']);
  }
}
