import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shaghalni/core/data/enum/gender.dart';
import 'package:shaghalni/core/data/enum/job_status.dart';
import 'package:shaghalni/core/data/enum/job_type.dart';
import 'package:shaghalni/core/data/models/category_model.dart';
import 'package:shaghalni/core/data/models/city_model.dart';
import 'package:shaghalni/core/data/models/job_model.dart';
import 'package:shaghalni/core/helpers/spacing.dart';
import 'package:shaghalni/core/theming/app_text_styles.dart';
import 'package:shaghalni/core/widgets/app_category_list_view_horizontal.dart';
import 'package:shaghalni/core/widgets/app_control_list_or_grid.dart';
import 'package:shaghalni/core/widgets/app_text_form_field.dart';
import 'package:shaghalni/features/home/ui/widgets/job_section/job_grid_view_list.dart';

class JobsListScreen extends StatelessWidget {

  const JobsListScreen({super.key});

  @override
  Widget build(BuildContext context) {

    var jobModel1 = JobModel(title: "title", description: "description", city: CityModel(id: "id", name: "name"), category: CategoryModel(id: "id", name: "name", description: "", iconUrl: "iconUrl", coverImageUrl: "https://cdn.icon-icons.com/icons2/2122/PNG/512/doctor_medical_avatar_people_icon_131305.png"), salary: 500, isHideSalary: true, status: JobStatus.open, gender: Gender.both, jobType: JobType.contract, createdAt: DateTime.now(), updatedAt: DateTime.now(), views: 500, experienceRange: ExperienceRange(minExperience: 0, maxExperience: 10));
    var jobModel2 = JobModel(title: "title", description: "description", city: CityModel(id: "id", name: "name"), category: CategoryModel(id: "id", name: "name", description: "", iconUrl: "iconUrl", coverImageUrl: "https://cdn.icon-icons.com/icons2/2122/PNG/512/doctor_medical_avatar_people_icon_131305.png"), salary: 500, isHideSalary: true, status: JobStatus.open, gender: Gender.both, jobType: JobType.contract, createdAt: DateTime.now(), updatedAt: DateTime.now(), views: 500, experienceRange: ExperienceRange(minExperience: 0, maxExperience: 10));
    var jobModel3 = JobModel(title: "title", description: "description", city: CityModel(id: "id", name: "name"), category: CategoryModel(id: "id", name: "name", description: "", iconUrl: "iconUrl", coverImageUrl: "https://cdn.icon-icons.com/icons2/2122/PNG/512/doctor_medical_avatar_people_icon_131305.png"), salary: 500, isHideSalary: true, status: JobStatus.open, gender: Gender.both, jobType: JobType.contract, createdAt: DateTime.now(), updatedAt: DateTime.now(), views: 500, experienceRange: ExperienceRange(minExperience: 0, maxExperience: 10));
    var jobModel4 = JobModel(title: "title", description: "description", city: CityModel(id: "id", name: "name"), category: CategoryModel(id: "id", name: "name", description: "", iconUrl: "iconUrl", coverImageUrl: "https://cdn.icon-icons.com/icons2/2122/PNG/512/doctor_medical_avatar_people_icon_131305.png"), salary: 500, isHideSalary: true, status: JobStatus.open, gender: Gender.both, jobType: JobType.contract, createdAt: DateTime.now(), updatedAt: DateTime.now(), views: 500, experienceRange: ExperienceRange(minExperience: 0, maxExperience: 10));

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text("Jobs"),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Container(
              color: Colors.white,
              child: Column(
                children: [
                  Container(
                      padding: EdgeInsets.symmetric(horizontal: 14.w),
                      child: TopBarSearch()) , 

                      verticalSpace(10) , 

                      AppCategoryListViewHorizontal(categoryList: [
                        CategoryModel(id: "id", name: "medical", description: "description", iconUrl:"https://cdn.icon-icons.com/icons2/2122/PNG/512/doctor_medical_avatar_people_icon_131305.png", coverImageUrl:" coverImageUrl"),
                        CategoryModel(id: "id", name: "medical", description: "description", iconUrl:"https://cdn.icon-icons.com/icons2/2122/PNG/512/doctor_medical_avatar_people_icon_131305.png", coverImageUrl:" coverImageUrl"),
                        CategoryModel(id: "id", name: "medical", description: "description", iconUrl:"https://cdn.icon-icons.com/icons2/2122/PNG/512/doctor_medical_avatar_people_icon_131305.png", coverImageUrl:" coverImageUrl"),
                        CategoryModel(id: "id", name: "medical", description: "description", iconUrl:"https://cdn.icon-icons.com/icons2/2122/PNG/512/doctor_medical_avatar_people_icon_131305.png", coverImageUrl:" coverImageUrl"),
                        CategoryModel(id: "id", name: "medical", description: "description", iconUrl:"https://cdn.icon-icons.com/icons2/2122/PNG/512/doctor_medical_avatar_people_icon_131305.png", coverImageUrl:" coverImageUrl"),
                      ]),
                      verticalSpace(10) , 
                    
                ],
              ),
            ),

            Container(
              padding: EdgeInsets.symmetric(horizontal: 14.w),
              child: Row(
                children:
                
                 [
                  Text("Results : 10", style: AppTextStyles.font12BlackRegular,),
              
                  Spacer(),
              
                  AppControlListOrGrid(isGridView:  ValueNotifier<bool>(true)),
              
                  
                ],
              ),
            ),

            verticalSpace(10) ,

          
      Expanded(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 14.w),
             child:    JobGridViewList(jobList: [jobModel1 , jobModel2 , jobModel3 , jobModel4]),
              ),
        ),
      ),


          ],
        ));
  }
}

class TopBarSearch extends StatelessWidget {
  const TopBarSearch({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: AppTextFormField(
              hintText: "Search by title job",
              validator: (value) {},
              prefixIcon: Icon(FontAwesomeIcons.magnifyingGlass),
              suffixIcon: TextButton(child: Text("Search"), onPressed: () {}),
              ),
        ),
        IconButton(
            onPressed: () {},
            icon: Icon(FontAwesomeIcons.sort)),
        IconButton(
            onPressed: () {},
            icon: Icon(FontAwesomeIcons.filter)),
      ],
    );
  }
}
