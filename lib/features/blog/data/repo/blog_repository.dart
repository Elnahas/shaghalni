import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shaghalni/features/blog/data/model/blog_model.dart';
import '../../../../core/helpers/constants.dart';

class BlogsRepository {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<List<BlogModel>> getBlogs() async {
    try {
      QuerySnapshot<Map<String, dynamic>> snapshot =
          await _firestore.collection(FirestoreCollections.blogs).get();

      List<BlogModel> blogs = snapshot.docs.map((doc) {
        Map<String, dynamic> data = doc.data();
        data['id'] = doc.id;

        return BlogModel.fromJson(data);
      }).toList();
      return blogs;
    } catch (e) {
      rethrow;
    }
  }






  
    Future<void> addSampleBlogs() async {
    List<BlogModel> blogs = [
      BlogModel(
        null,
        imageUrl: 'https://png.pngtree.com/thumb_back/fh260/back_our/20190619/ourmid/pngtree-business-recruitment-business-background-image_133696.jpg',
        title: 'نصائح لتحضير مقابلة عمل ناجحة',
        details: 'تعتبر مقابلة العمل خطوة حاسمة في طريقك للحصول على وظيفة. لتحقيق النجاح، يجب عليك التحضير جيدًا، والتدرب على الإجابة على الأسئلة الشائعة، والتأكد من مظهرك المهني. تعرف على المزيد من النصائح لتكون مستعدًا لمقابلة العمل التالية.',
        createdAt: Timestamp.fromDate(DateTime(2024, 6, 25)),
      ),
      BlogModel(
        null,
        imageUrl: 'https://jobs-hiring.org/wp-content/uploads/2018/04/700.jpg',
        title: 'كيفية كتابة سيرة ذاتية مميزة',
        details: 'تعد السيرة الذاتية أحد أهم الأدوات التي تعكس شخصيتك المهنية أمام أصحاب العمل. تعرف على الخطوات الأساسية لكتابة سيرة ذاتية جذابة ومهنية تبرز مهاراتك وخبراتك.',
        createdAt: Timestamp.fromDate(DateTime(2024, 6, 26)),
      ),
      BlogModel(
        null,
        imageUrl: 'https://img.lovepik.com/photo/40014/0371.jpg_wh860.jpg',
        title: 'فهم سوق العمل في عام 2024',
        details: 'سوق العمل في تطور مستمر، والتغيرات الاقتصادية والتكنولوجية تلعب دورًا كبيرًا في تشكيله. تعرف على التوقعات والتحديات والفرص المتاحة في سوق العمل لهذا العام.',
        createdAt: Timestamp.fromDate(DateTime(2024, 6, 27)),
      ),
      BlogModel(
        null,
        imageUrl: 'https://www.almaal.org/wp-content/uploads/2020/07/%D8%A7%D9%84%D8%B9%D9%85%D9%84-%D9%85%D9%86-%D8%A7%D9%84%D9%85%D9%86%D8%B2%D9%84-%D9%85%D8%AF%D8%AE%D9%84-%D8%A8%D9%8A%D8%A7%D9%86%D8%A7%D8%AA-scaled.jpg',
        title: 'أهم المهارات التي يبحث عنها أصحاب العمل',
        details: 'أصحاب العمل يبحثون دائمًا عن المهارات التي تميز المرشحين عن غيرهم. تعرف على أهم المهارات التي يجب أن تركز عليها لتحسين فرصك في الحصول على وظيفة.',
        createdAt: Timestamp.fromDate(DateTime(2024, 6, 28)),
      ),
      BlogModel(
        null,
        imageUrl: 'https://cdnjobs.net/cached_uploads/full/2018/01/28/job-search-strategies-jobs-ps-%D8%AC%D9%88%D8%A8%D8%B3-1517107146.jpg',
        title: 'كيفية بناء شبكة علاقات مهنية فعالة',
        details: 'بناء شبكة علاقات مهنية قوية هو عنصر أساسي لتحقيق النجاح المهني. تعلم كيفية توسيع دائرة علاقاتك واستخدامها لتحقيق أهدافك المهنية.',
        createdAt: Timestamp.fromDate(DateTime(2024, 6, 29)),
      ),
      BlogModel(
        null,
        imageUrl: 'https://c8.alamy.com/compes/2cd0w6m/solicitante-de-empleo-y-gerente-sentado-en-la-entrevista-de-trabajo-turquesa-antecedentes-2cd0w6m.jpg',
        title: 'التحضير لأول وظيفة لك',
        details: 'أول وظيفة يمكن أن تكون تجربة مخيفة. تعرف على النصائح والإرشادات التي تساعدك على التحضير الجيد والتميز في أول وظيفة لك.',
        createdAt: Timestamp.fromDate(DateTime(2024, 6, 30)),
      ),
      BlogModel(
        null,
        imageUrl: 'https://modo3.com/thumbs/fit630x300/74657/1477278291/%D8%B9%D8%A8%D8%A7%D8%B1%D8%A7%D8%AA_%D8%B9%D9%86_%D8%A7%D9%84%D8%B9%D9%85%D9%84.jpg',
        title: 'كيفية تحقيق التوازن بين العمل والحياة',
        details: 'إيجاد التوازن بين العمل والحياة الشخصية هو أمر ضروري للحفاظ على صحتك النفسية والجسدية. تعرف على الاستراتيجيات التي تساعدك على تحقيق هذا التوازن.',
        createdAt: Timestamp.fromDate(DateTime(2024, 7, 1)),
      ),
      BlogModel(
        null,
        imageUrl: 'https://cnn-arabic-images.cnn.io/cloudinary/image/upload/w_640,h_360,c_fill,q_auto,g_center/cnnarabic/2019/08/14/images/133417.jpg',
        title: 'العمل عن بُعد: الإيجابيات والسلبيات',
        details: 'العمل عن بُعد أصبح أكثر شيوعًا في السنوات الأخيرة. تعرف على الإيجابيات والسلبيات لهذا النمط من العمل وكيفية التعامل معه بشكل فعال.',
        createdAt: Timestamp.fromDate(DateTime(2024, 7, 2)),
      ),
      BlogModel(
        null,
        imageUrl: 'https://scontent-hbe1-1.xx.fbcdn.net/v/t1.6435-9/51112839_397172427701590_3763725007360884736_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=2a1932&_nc_ohc=KVZT9fMc0msQ7kNvgEmcwnc&_nc_ht=scontent-hbe1-1.xx&oh=00_AYBXX9sTqy4MeqNFZ7IgrMCAZ8qy8phjDfjnDfPPfZN8Sw&oe=66ABC652',
        title: 'أهمية المهارات الشخصية في مكان العمل',
        details: 'المهارات الشخصية أصبحت ذات أهمية كبيرة في بيئة العمل الحديثة. تعرف على المهارات الشخصية التي يجب أن تركز عليها وكيفية تطويرها.',
        createdAt: Timestamp.fromDate(DateTime(2024, 7, 3)),
      ),
      BlogModel(
        null,
        imageUrl: 'https://blog.drjobpro.com/wp-content/uploads/2021/09/9-%D8%AD%D8%A7%D9%84%D8%A7%D8%AA-%D9%8A%D9%85%D9%83%D9%86%D9%83-%D8%A7%D9%84%D8%AD%D8%B5%D9%88%D9%84-%D8%B9%D9%84%D9%89-%D9%88%D8%B8%D9%8A%D9%81%D8%A9-%D9%81%D9%8A%D9%87%D8%A7-%D8%AF%D9%88%D9%86-%D8%AD%D8%B6%D9%88%D8%B1-%D9%85%D9%82%D8%A7%D8%A8%D9%84%D8%A9-%D8%B9%D9%85%D9%84%D8%AF.%D8%AC%D9%88%D8%A8-%D8%A8%D8%B1%D9%88.jpg',
        title: 'كيفية طلب زيادة في الراتب',
        details: 'طلب زيادة في الراتب يمكن أن يكون مهمة شاقة. تعرف على الخطوات التي يمكنك اتخاذها لتحضير نفسك وتقديم طلبك بطريقة تزيد من فرص الموافقة عليه.',
        createdAt: Timestamp.fromDate(DateTime(2024, 7, 4)),
      ),
    ];

    for (var blog in blogs) {
      await _firestore.collection(FirestoreCollections.blogs).add(blog.toJson());
    }
  }
}
