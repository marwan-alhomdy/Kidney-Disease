import 'package:get/route_manager.dart';

class DataLoacleTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        "ar": {
          "Please visit a specialist doctor.": " الرجاء زيارة طبيب مختص ",
          "Yes": "نـعـم",
          "No": "لأ",
          "Next": "التالي",

          "Dengue fever": "حمى الضنك",
          "Kideny Disease": "مرض الكلى",
          "abuot":
              "يقوم هذا التطبيق بتشخيص امراض  الكلى و يعرض لك طرق الوقاية و العلاج و اعراض المرض",
          "Checkup": "الفحص",
          "Prevention": "الوقاية",
          "Treatment": "العلاج",
          "Clinical Diagnosis": "تشخيص سريري",
          "Symptoms": "الاعراض",
          "Start": "بدء",
          //!=========== status =====
          "normal fever": "الحمى العادية",
          "normal dengue": "حمى الضنك العادية",
          "extreme dengue": "حمى الضنك الشديدة",
          //!===========Checkup======

          "NO patient": "المریض رقم ",
          "Sex": "الجنس(ذكر)",
          "Age": "العمر اكبر من 30",
          "Are you suffering from insufficient urine output":
              "ھل تعاني من عدم وجود كمية كافية من البول",
          "Are you suffering from anuria": "ھل تعاني من انقطاع البول",
          "Are you suffering from heartburn": "ھل تعاني من حرقة في المعدة",
          "Is there blood in your urine": "ھل يوجد دم في البول",
          "Are you suffering from changes in urine color":
              "ھل تعاني من تغير في لون البول",
          "Are you suffering from pain in the sides":
              "ھل تعاني من ألم في الجانبين",
          "Are you suffering from abdominal bloating":
              "ھل تعاني من انسداد البطن",
          "Are you suffering from a fever": "ھل تعاني من حمى",
          "Are you suffering from swelling": "ھل تعاني من تورم",
          "Are you suffering from pale skin": "ھل تعاني من جلد شاحب",
          "Types of Dengue fever": "نتيجة التشخيص",
          //!===========Prevention======
          "PreventionValue": """
1 الحفاظ على صحة الكلى:
    - تناول كمية كافية من السوائل يوميًا.
    - اتباع نظام غذائي صحي منخفض الصوديوم والبروتين.
    - الحفاظ على مستويات صحية للسكر والضغط.
    - ممارسة التمارين البدنية بانتظام.


2 الوقاية من التهابات والعدوى:
    - الحفاظ على نظافة الجسم والحمام.
    - شرب المياه المعقمة واآلمنة.
    - تجنب المضادات الحيوية إال عند الضرورة.


3 الكشف المبكر والعالج:
    - إجراء الفحوصات الدورية للكلى.
    - اتباع توصيات الطبيب في حالة وجود مشاكل.
    - العالج في المراحل المبكرة لمنع تفاقم المرض.

4 تجنب العوامل الضارة:
    - التوقف عن التدخين.
    - تجنب تعاطي المخدرات والكحول.
    - الحد من استخدام األدوية التي تؤثر على الكلى.""",
          //!===========Treatment======
          "TreatmentVlaue": """
1 العالج الدوائي:
    - األدوية لخفض ضغط الدم والسكر والكوليسترول.
    - المدرات والمثبطات والمضادات الحيوية عند الحاجة.
    - عالجات لوظائف الكلى والحد من تطور المرض.


2 العالج بالتغذية:
    - نظام غذائي منخفض البروتين والصوديوم والفوسفور.
    - زيادة تناول السوائل واأللياف.
    - تقليل األطعمة المصنعة والمعلبة.


3 العالج بالعمليات الجراحية:
    - زرع الكلى في حاالت الفشل الكلوي المتقدم.
    - إزالة الحصوات أو الورم في الكلى.
    - عالج التشوهات الخلقية أو اإلصابات.


4 العالج بالغسيل الكلوي:
    - الغسيل الدموي )الهيمودياليز(.
    - الغسيل البريتوني )الديلزة البريتونية(.
    - زرع الكلى في حاالت الفشل الكلوي المتقدم.
    أهم عامل هو التشخيص المبكر وااللتزام بالعالج الموصوف من قبل الطبيب المختص.
""",
          //!===========Clinical Diagnosis======
          "ClinicalDiagnosisValue": """
1 الفحص البدني:
    - فحص منطقة الكلى للكشف عن ألم أو تضخم.
    - فحص الضغط الدموي والنبض.
    - فحص األوزان والقياسات الجسدية.


2 الفحوصات المخبرية:
    - اختبار وظائف الكلى )مستوى الكرياتينين، اليوريا، األمالح(.
    - اختبار تحليل البول )الكريات البيضاء، البروتين، الدم(.
    - اختبارات هرمونية )األنسولين، الغدة الدرقية(.


3 الصور الشعاعية:
    - أشعة السونار على الكلى والمسالك البولية.
    - التصوير المقطعي المحوسب )scan CT).
    - الرنين المغناطيسي )MRI).


4 الفحوصات التشخيصية األخرى:
    - قياس معدل ترشيح الكبيبات )GFR).
    - بيوبسية الكلى لفحص النسيج.
    - قياس الضغط داخل الكلى.
    يتم استخدام مجموعة من هذه الفحوصات لتشخيص نوع المرض الكلوي وتحديد درجة تقدمه، مما يساعد على تخطيط
    العالج المناسب.
""",
          //!===========Symptoms======
          "SymptomsValue": """
- يتطور مرض الكلى غالبًا دون ظهور أعراض ملحوظة حتى يصل إلى مراحل متقدمة. تشمل الأعراض الشائعة:

- التعب المستمر: تنتج الكلى السليمة إريثروبويتين، وهو هرمون ينتج خلايا الدم الحمراء. عندما تتلف الكلى، تتعطل هذه العملية، مما يؤدي إلى فقر الدم، مما يسبب التعب والشعور بالبرد.
- ضيق التنفس: قد يحدث هذا حتى مع بذل الحد الأدنى من الجهد، إما بسبب تراكم السوائل في الرئتين أو فقر الدم.
- ضعف أو دوخة.
- ارتباك أو صعوبة في التركيز.
- حكة شديدة.
- تورم في اليدين أو القدمين أو الوجه: يحدث هذا لأن السوائل التي يجب أن تفرزها الكلى تبقى في مجرى الدم.
- طعم معدني في الفم: يحدث هذا بسبب تراكم الفضلات في الدم.
- رائحة الفم الكريهة.
- اضطراب في المعدة، وغثيان، وقيء، وفقدان الشهية.
- بول رغوي: يحدث بسبب وجود البروتين في البول.
- بول داكن اللون أو دم في البول.
- آلام أسفل الظهر ليست علامة نموذجية لأمراض الكلى حيث أن الكلى تقع فوق الخصر في الجزء الخلفي من الجسم.

غالبًا ما تظهر هذه الأعراض في مراحل متأخرة، مما يجعل الكشف المبكر من خلال الفحوصات الدورية أمرًا مهمًا.
"""
        },
        "en": {
          "Please visit a specialist doctor.":
              "Please visit a specialist doctor.",
          "Yes": "Yes",
          "No": "No",
          "Next": "Next",
          "Dengue fever": "Dengue Fever",
          "Kideny Disease": "Kideny Disease",
          "Checkup": "Checkup",
          "Prevention": "Prevention",
          "Treatment": "Treatment",
          "Clinical Diagnosis": "Clinical Diagnosis",
          "Symptoms": "Symptoms",
          "Start": "Start",
          "abuot":
              "This application diagnoses Kideny diseases and shows you methods of prevention, treatment and symptoms of the disease",
          //!=========== status =====
          "normal fever": "Normal Fever",
          "normal dengue": "Normal Dengue",
          "extreme dengue": "Extreme Dengue",
          //!===========Checkup======
          "NO patient": "NO patient",
          "Sex": "Sex(male)",
          "Age": "Age over 30",
          "Are you suffering from insufficient urine output":
              "Are you suffering from anuria",
          "Are you suffering from anuria": "Are you suffering from anuria",
          "Are you suffering from heartburn":
              "Are you suffering from heartburn",
          "Is there blood in your urine": "Is there blood in your urine",
          "Are you suffering from changes in urine color":
              "Are you suffering from changes in urine color",
          "Are you suffering from pain in the sides":
              "Are you suffering from pain in the sides",
          "Are you suffering from abdominal bloating":
              "Are you suffering from abdominal bloating",
          "Are you suffering from a fever": "Are you suffering from a fever",
          "Are you suffering from swelling": "Are you suffering from swelling",
          "Are you suffering from pale skin":
              "Are you suffering from pale skin",
          "Types of Dengue fever": "Types of Dengue fever",
//!===========Prevention======
          "PreventionValue": """
1. Maintaining kidney health:
    - Drink enough fluids daily.
    - Follow a healthy diet low in sodium and protein.
    - Maintain healthy sugar and blood pressure levels.
    - Exercise regularly.

2. Prevention of infections and diseases:
    - Maintain personal hygiene and bathroom cleanliness.
    - Drink sterile and safe water.
    - Avoid antibiotics unless necessary.

3. Early detection and treatment:
    - Undergo regular kidney check-ups.
    - Follow doctor’s recommendations if issues are found.
    - Treat early to prevent disease progression.

4. Avoid harmful factors:
    - Quit smoking.
    - Avoid drugs and alcohol.
    - Limit the use of medications that affect the kidneys.
""",
          //!===========Treatment======
          "TreatmentVlaue": """
1. Medication treatment:
    - Medications to lower blood pressure, sugar, and cholesterol.
    - Diuretics, inhibitors, and antibiotics when needed.
    - Treatments for kidney function and disease progression control.

2. Nutritional therapy:
    - A diet low in protein, sodium, and phosphorus.
    - Increase intake of fluids and fiber.
    - Reduce processed and canned foods.

3. Surgical treatment:
    - Kidney transplantation in cases of advanced kidney failure.
    - Removal of kidney stones or tumors.
    - Treat congenital abnormalities or injuries.

4. Dialysis treatment:
    - Hemodialysis.
    - Peritoneal dialysis.
    - Kidney transplantation in cases of advanced kidney failure.
    The most important factor is early diagnosis and adherence to the treatment prescribed by the specialist doctor.
""",
          //!===========Clinical Diagnosis======
          "ClinicalDiagnosisValue": """
1. Physical examination:
    - Examine the kidney area to detect pain or swelling.
    - Check blood pressure and pulse.
    - Assess body weight and measurements.

2. Laboratory tests:
    - Kidney function test (creatinine, urea, electrolytes).
    - Urinalysis (white blood cells, protein, blood).
    - Hormonal tests (insulin, thyroid gland).

3. Radiology imaging:
    - Ultrasound scan of the kidneys and urinary tract.
    - Computed tomography (CT scan).
    - Magnetic resonance imaging (MRI).

4. Other diagnostic tests:
    - Glomerular filtration rate (GFR) test.
    - Kidney biopsy to examine tissue.
    - Measuring kidney pressure.
    These tests are used to diagnose the type of kidney disease and its severity, helping to plan appropriate treatment.
""",
          //!===========Symptoms======
          "SymptomsValue": """
Kidney disease often progresses without noticeable symptoms until it reaches advanced stages. Common symptoms include:

- Persistent fatigue: Healthy kidneys produce erythropoietin, a hormone that creates red blood cells. When kidneys are damaged, this process is disrupted, leading to anemia, which causes fatigue and feeling cold.
- Shortness of breath: This may occur even with minimal exertion, either due to fluid buildup in the lungs or anemia.
- Weakness or dizziness.
- Confusion or difficulty concentrating.
- Severe itching.
- Swelling in the hands, feet, or face: This happens because fluids that should be excreted by the kidneys remain in the bloodstream.
- Metallic taste in the mouth: This occurs due to the accumulation of waste products in the blood.
- ad breath.
- Stomach upset, nausea, vomiting, and loss of appetite.
- Foamy urine: Caused by the presence of protein in the urine.
- Dark-colored urine or blood in the urine.
- Lower back pain is not a typical sign of kidney disease since the kidneys are located above the waist at the back of the body.

These symptoms often appear in later stages, making early detection through regular checkups important.
"""
        }
      };
}
//=====================================












