import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:konnectjob/firbase_Services/modelClasses/job.dart';
import 'package:konnectjob/firbase_Services/modelClasses/user.dart';
import '../widgets/widgets_components.dart';

class MyJobsScreen extends StatefulWidget {

  final UserModelClass userModelClass;
  const MyJobsScreen({
    Key?key,
    required this.userModelClass,

});

  @override
  State<MyJobsScreen> createState() => _MyJobsScreenState();
}

class _MyJobsScreenState extends State<MyJobsScreen> {

 List <ApplicantsModel>? applicantsModel;
 List <JobModelClass>? jobModelClass;
 List<UserModelClass>? userModelClass;
  @override
  Widget build(BuildContext context) {
    final AppLocalizations langLocal = AppLocalizations.of(context)!;
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: TextWidget(
            text: langLocal.myjobs,
          ),
          //iconTheme: const IconThemeData(color: Colors.white),
          centerTitle: true,
          //backgroundColor: const Color(0xff0077B5),
          elevation: 0.0,
          bottom: TabBar(
              indicatorColor: Colors.blue,
              dividerHeight: 0.0,
              isScrollable: true,

              //controller: _tabController,
              // onTap: (index) {},
              unselectedLabelColor: Colors.black38,
              labelColor: Colors.black,
              unselectedLabelStyle: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
              labelStyle: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.0),
              dividerColor: Colors.deepPurpleAccent,
              tabs: [
                Tab(
                  text: langLocal.applied,
                ),
                Tab(
                  text: langLocal.pending,
                ),
                Tab(
                  text: langLocal.completed,
                ),
              ]),
        ),
        body:  TabBarView(
          children: [
            /*StreamBuilder(
              stream: FirebaseFirestore.instance.collection("applicants").snapshots(),
              builder: (context, snapshot) {
                switch (snapshot.connectionState){
                  case ConnectionState.waiting:
                  case ConnectionState.none:
                    return Center(child: CircularProgressIndicator());
                  case ConnectionState.active:
                  case ConnectionState.done:
                    final jobdataList = snapshot.data?.docs;

                    /// Store jobIds in a list
                    List<String> jobIds = jobdataList?.map((e) => e.id).toList() ?? [];

                    jobModelClassList = jobdataList
                        ?.map((e) => JobModelClass.fromJSON(e.data()))
                        .toList() ?? [];
                    if(jobModelClassList.isNotEmpty){
                      return ListView.builder(
                        itemCount: isSearching? searchJobList.length: jobModelClassList.length,
                        physics: const BouncingScrollPhysics(),
                        itemBuilder: (context, index) {
                          print("=============>>>>"+jobIds.length.toString());
                          return StreamBuilder(
                            stream: FirebaseFirestore.instance.collection("Users")
                                .where("userId", isEqualTo: isSearching? searchJobList[index].creatorId: jobModelClassList[index].creatorId)
                                .snapshots(),
                            builder: (context, userSnapshot) {
                              if (userSnapshot.connectionState == ConnectionState.waiting) {
                                return Center(child: CircularProgressIndicator());
                              } else if (userSnapshot.hasError) {
                                return Center(child: Text('Error: ${userSnapshot.error}'));
                              } else if (userSnapshot.data!.docs.isEmpty) {
                                return Center(child: Text('No user found'));
                              } else {
                                var userModel = UserModelClass.fromJSON(userSnapshot.data!.docs.first.data());
                                List<String> docsIdList=[];
                                var list=snapshot.data?.docs;
                                for(var id in list!){
                                  docsIdList.add(id.id.toString());
                                }
                                return JobContainer(
                                  docId: docsIdList[index],
                                  userModelClass: userModel,
                                  jobModelClass: isSearching? searchJobList[index]:jobModelClassList[index],
                                );
                              }
                            },
                          );
                        },
                      );
                    } else {
                      return Center(child: TextWidget(text: "No job is found!", isBold: true));
                    }
                }
              },
            ),*/
            Center(
              child: Text("Pending jobs"),
            ),
            Center(
              child: Text("Completed jobs"),
            ),
          ],
        ),
      ),
    );
  }
}
