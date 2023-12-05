// class TasbeehLogic {
//   String selectedContent = '';
//   String selectedDescription = '';
//   String name100 = '100';
//   String men100 = 'من';
//   bool showTexts = true;
//   int counter = 0;
//
//   void setDefaultTasbih() {
//     selectedContent =
//         'سُبْحَانَ اللَّهِ وَبِحَمْدِهِ ، سُبْحَانَ اللَّهِ الْعَظِيمِ';
//     selectedDescription = 'يكتب له ألف حسنة أو يحط عنه ألف خطيئة';
//     showTexts = true;
//   }
//
//   void onTasbihSelected(String content, String description) {
//     selectedContent = content;
//     selectedDescription = description;
//     refresh();
//   }
//
//   void refresh() {
//     counter = 0;
//     showTexts = true;
//   }
//
//   void incquantity() {
//     if (counter >= 0 && counter < 100) {
//       counter++;
//     } else if (counter == 100) {
//       showTexts = false;
//     }
//   }
// }
