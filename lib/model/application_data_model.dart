class ApplicationModel {
  String? msg;
  Data? data;

  ApplicationModel({this.msg, this.data});

  ApplicationModel.fromJson(Map<String, dynamic> json) {
    msg = json['msg'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['msg'] = msg;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  String? sId;
  List<Applications>? applications;
  List<void>? resultApplications;
  List<void>? testApplications;

  Data(
      {this.sId,
        this.applications,
        this.resultApplications,
        this.testApplications});

  Data.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    if (json['applications'] != null) {
      applications = <Applications>[];
      json['applications'].forEach((v) {
        applications!.add(Applications.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = sId;
    if (applications != null) {
      data['applications'] = applications!.map((v) => v.toJson()).toList();
    }
    if (resultApplications != null) {
      // data['resultApplications'] =
      //     this.resultApplications!.map((v) => v.toJson()).toList();
    }
    if (testApplications != null) {
      // data['testApplications'] =
      //     this.testApplications!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Applications {
  String? objectId;
  String? typeOfObject;
  String? typeOfApplication;
  bool? isActive;
  bool? isTestDone;
  bool? isTestScheduled;
  String? testDate;
  String? testStatus;
  String? admissionGranted;
  String? date;
  int? timestamp;
  StudentData? studentData;

  Applications(
      {this.objectId,
        this.typeOfObject,
        this.typeOfApplication,
        this.isActive,
        this.isTestDone,
        this.isTestScheduled,
        this.testDate,
        this.testStatus,
        this.admissionGranted,
        this.date,
        this.timestamp,
        this.studentData});

  Applications.fromJson(Map<String, dynamic> json) {
    objectId = json['objectId'];
    typeOfObject = json['typeOfObject'];
    typeOfApplication = json['typeOfApplication'];
    isActive = json['isActive'];
    isTestDone = json['isTestDone'];
    isTestScheduled = json['isTestScheduled'];
    testDate = json['testDate'];
    testStatus = json['testStatus'];
    admissionGranted = json['admissionGranted'];
    date = json['date'];
    timestamp = json['timestamp'];
    studentData = json['studentData'] != null
        ? StudentData.fromJson(json['studentData'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['objectId'] = objectId;
    data['typeOfObject'] = typeOfObject;
    data['typeOfApplication'] = typeOfApplication;
    data['isActive'] = isActive;
    data['isTestDone'] = isTestDone;
    data['isTestScheduled'] = isTestScheduled;
    data['testDate'] = testDate;
    data['testStatus'] = testStatus;
    data['admissionGranted'] = admissionGranted;
    data['date'] = date;
    data['timestamp'] = timestamp;
    if (studentData != null) {
      data['studentData'] = studentData!.toJson();
    }
    return data;
  }
}

class StudentData {
  String? cnic;
  String? name;
  int? age;
  String? classGrade;

  StudentData({this.cnic, this.name, this.age, this.classGrade});

  StudentData.fromJson(Map<String, dynamic> json) {
    cnic = json['cnic'];
    name = json['name'];
    age = json['age'];
    classGrade = json['classGrade'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['cnic'] = cnic;
    data['name'] = name;
    data['age'] = age;
    data['classGrade'] = classGrade;
    return data;
  }
}