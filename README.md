 # אתר חדשות מצחיקות 📰📰📰

## הקדמה:
מסמך זה מתאר את השלבים הנדרשים וההסברים למפתחים כדי להגדיר ולהציג עמוד אינטרנט עם מצגת של תמונות וטקסט מתאים. העמוד הינו חלק מיישום ASP.NET המשתמש ב-MasterPage.

#### דרישות קדם:
- Visual Studio או IDE שכיח שתומך ב-ASP.NET Web Forms.
- .NET Framework מותקן על המחשב המקומי.
- שרת אינטרנט, כמו IIS, כדי לארח ולהפעיל את היישום.
- גישה לתמונות המשמשות במצגת, הנמצאות בתיקיית `img`.

#### המרת הקוד באופן מקומי

   **התקנת סביבת הפיתוח**:
     הפעל את Visual Studio ופתח יישום קיים ב-ASP.NET Web Forms או צור יישום חדש.
     ודא שגרסת .NET Framework הנדרשת על ידי היישום מותקנת.

   **אינטגרציה עם MasterPage**: 
     אם היישום כבר כולל קובץ `MasterPage.master`, קוד העמוד צריך להיות מוטמע בתוך העמוד ה-.aspx המפנה ל-MasterPage זה. במידה ולאו דווקא, צרו MasterPage חדש והוסיפו את המחזיקים הנדרשים.

   **הוספת תוכן לעמוד האינטרנט**:
     העתק את הקוד שסופק לתוך הקובץ .aspx המתאים במבנה היישום.
     כוונו את נתיבי התמונות במצגת ככל הצריך כדי להתאים למבנה הספרייה של הפרויקט.

   **הפעלת עמוד האינטרנט**:
     בנו את היישום על ידי בחירת "בנה פתרון" מתוך תפריט הבנייה.
     הריצו את היישום באמצעות שרת המובנה של ה-IDE או הפיצו אותו למקומי IIS שרת אינטרנט.
     נווטו לעמוד האינטרנט באמצעות דפדפן וראו את התוכן והמצגת בפעולה.

## הבנת הקוד:

הקוד ב-ASP.NET מגדיר עמוד עם כותרת חדשות פשוטה ומצגת של תמונות. בתוך המצגת ישנן כפתורי ניווט (קודם ובא), תיאורי טקסט עבור כל תמונה, ואינדיקטורים (נקודות) המייצגים כל מצגת.

  **לוגיקת המצגת**: פונקציות JavaScript עוסקות בהתנהלות המצגת, כגון המשך השקפים (`plusSlides`), העברה לשקף ספציפי (`currentSlide`), והצגת השקפים (`showSlides`).
