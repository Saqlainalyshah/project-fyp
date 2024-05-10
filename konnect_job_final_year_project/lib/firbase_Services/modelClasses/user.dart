
class UserModelClass{
  String? userId;
  String? phoneNumber;
  String? imageUrl;
  String? name;
  String? cnicNumber;
  String? gender;
  String? dateOfBirth;
  String? country;
  String? state;
  String? city;
  String? userType;
  String? latitude;
  String? longitude;

  UserModelClass({
    this.userId,
    this.phoneNumber,
    this.imageUrl,
    this.name,
    this.cnicNumber,
    this.gender,
    this.dateOfBirth,
    this.country,
    this.state,
    this.city,
    this.userType,
    this.latitude="33.78035712757503",
    this.longitude="72.3520133212543",
});
  factory UserModelClass.fromJSON(Map<String,dynamic> parsedJSON){
    return UserModelClass(
      userId: parsedJSON['userId'],
      phoneNumber: parsedJSON['phoneNumber'],
      imageUrl: parsedJSON['imageUrl'],
      name: parsedJSON['name'],
      cnicNumber: parsedJSON['cnicNumber'],
      gender: parsedJSON['gender'],
      dateOfBirth: parsedJSON['dateOfBirth'],
      country: parsedJSON['country'],
      state: parsedJSON['state'],
      city: parsedJSON['city'],
      userType: parsedJSON['userType'],
      latitude: parsedJSON['latitude'],
      longitude: parsedJSON['longitude'],
    );
  }

  Map<String, dynamic> toJSON() {

    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userId']=this.userId;
    data['phoneNumber'] = this.phoneNumber;
    data['imageUrl']=this.imageUrl;
    data['name'] = this.name;
    data['cnicNumber'] = this.cnicNumber;
    data['gender'] = this.gender;
    data['dateOfBirth'] = this.dateOfBirth;
    data['country'] = this.country;
    data['state']=this.state;
    data['city']=this.city;
    data['userType']=this.userType;
    data['latitude']=this.latitude;
    data['longitude']=this.longitude;
    return data;
  }

}

class WorkerSkillsDataModelClass{
  String? workerId;
  String? workCategory;
  List<dynamic>? skillsList;
  String? workExperience;
  String? createdAt;
  String? otherSkill;


  WorkerSkillsDataModelClass({
    this.workerId,
    this.workCategory,
    this.skillsList,
    this.workExperience,
    this.createdAt,
    this.otherSkill,

});

  factory WorkerSkillsDataModelClass.fromJSON(Map<String,dynamic> parsedJSON){
    return WorkerSkillsDataModelClass(
      workerId: parsedJSON['workerId'],
      workCategory: parsedJSON['workCategory'],
      skillsList:parsedJSON['skillsList'],
      workExperience: parsedJSON['workerExperience'],
      createdAt: parsedJSON['createdAt'],
      otherSkill: parsedJSON['otherSkill'],
    );
  }
  Map<String,dynamic> toJSON(){
    Map<String,dynamic> data= new Map<String,dynamic>();
    data['workerId']=this.workerId;
    data['workCategory']=this.workCategory;
    data['skillsList']=this.skillsList;
    data['workerExperience']=this.workExperience;
    data['createdAt']=this.createdAt;
    data['otherSkill']=this.otherSkill;

    return data;
  }
}

///this class can be used for feedback and reviews
class UserFeedbackModelClass{
  String? userId;
  String? jobId;
  String? reviewedPersonId;
  String? createdAt;

  UserFeedbackModelClass({
    this.userId,
    this.jobId,
    this.reviewedPersonId,
    this.createdAt
});

  factory UserFeedbackModelClass.fromJSON(Map<String,dynamic> parsedJSON){
    return UserFeedbackModelClass(
      userId: parsedJSON['userId'],
      jobId: parsedJSON['jobId'],
      reviewedPersonId: parsedJSON['reviewedPersonId'],
      createdAt: parsedJSON['createdAt']
    );
  }
  Map<String,dynamic> toJSON(){
    Map<String,dynamic> data=new Map<String,dynamic>();

    data['userId']=this.userId;
    data['jobId']=this.jobId;
    data['reviewedPersonId']=this.reviewedPersonId;
    data['createdAt']=this.createdAt;
    return data;
  }
}


class ReviedByUserModelClass{
  String? feedbackId;
  String? userId;
  int? countStar;
  String? review;

  ReviedByUserModelClass({
    this.feedbackId,
   this.userId,
   this.countStar,
   this.review
});

  factory ReviedByUserModelClass.fromJSON(Map<String,dynamic> parsedJSON){
    return ReviedByUserModelClass(
      feedbackId: parsedJSON['feedbackId'],
      userId: parsedJSON['userId'],
      countStar: parsedJSON['countStar'],
      review: parsedJSON['review']
    );
  }
  Map<String ,dynamic> toJSON(){
    Map<String,dynamic>data=new Map<String,dynamic>();
    data['feedbackId']=this.feedbackId;
    data['userId']=this.userId;
    data['countStar']=this.countStar;
    data['review']=this.review;


    return data;
  }
}