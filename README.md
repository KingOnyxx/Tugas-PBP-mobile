# Tugas 7
##  Apa perbedaan utama antara stateless dan stateful widget dalam konteks pengembangan aplikasi Flutter?
- Stateless widget adalah widget yang tidak memiliki state, artinya widget ini tidak dapat berubah. Stateless widget hanya dapat dibuat sekali dan tidak dapat diubah lagi. 
- Stateful widget adalah widget yang memiliki state, artinya widget ini dapat berubah. Stateful widget dapat dibuat dan diubah berulang kali.
## Sebutkan seluruh widget yang kamu gunakan untuk menyelesaikan tugas ini dan jelaskan fungsinya masing-masing.
- `ThemeData` berfungsi untuk mendefinisikan konfigurasi tampilan keseluruhan atau sebagian dari aplikasi seperti warna, gaya teks, atau parameter lainnya yang berlaku untuk komponen Material
- `MaterialApp` adalah widget root dari sebuah aplikasi berbasis Flutter yang menyertakan sejumlah widget Material Design
- `Material` digunakan sebagai kanvas untuk render komponen UI yang mematuhi standar Material Design
- `Icon` berfungsi untuk menampilkan ikon
- `Text` berfungsi untuk menampilkan teks dalam bentuk string dengan gaya yang ditentukan
- `Column` berfungsi untuk menampilkan child dalam tata letak secara vertikal
- `Center` berfungsi untuk memposisikan child di tengah
- `Container` berfungsi untuk menggabungkan satu atau lebih widget dan ditempatkan sesuai dengan kondisi yang sudah ditetapkan
- `AppBar` adalah bar aplikasi Material Design yang biasanya digunakan sebagai bagian atas dari Scaffold
- `Padding` berfungsi untuk memberikan padding ke child widget
- `GridView.count` digunakan untuk menampilkan child dalam grid dengan jumlah kolom tetap
- `SingleChildScrollView` digunakan ketika ingin memastikan bahwa child widget dapat discroll
- `Scaffold` adalah kerangka dasar visual Material Design untuk menyediakan struktur default kepada AppBar, Body, dll
- `ShopCard` adalah stateless widget yang berfungsi untuk menampilkan data dari `ShopItem` yang diberikan.
- `Material` berfungsi untuk menampilkan widget dengan material design.
- `Inkwell` berfungsi untuk menampilkan widget dengan efek splash saat ditekan.
- `SnackBar` berfungsi untuk menampilkan tulisan pendek di bagian paling bawah.

## Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step (bukan hanya sekadar mengikuti tutorial)
1. Membuat folder directory untuk create project flutter baru
2. Membuat project flutter baru dengan menggunakan command line
```
flutter create nama_project
```
3. Membuat file `menu.dart` untuk membuat class `Item` dan `Card`

Bonus:

4. Menambahkan attribut color di class Item dan menambahkan attribut color di class Card
```
class Item {
  final String name;
  final IconData icon;
  final Color color;

  Item(this.name, this.icon, this.color);
}
```
```
Widget build(BuildContext context) {
    return Material(
      color: item.color,
      child: InkWell(
        // Area responsive terhadap sentuhan
        onTap: () {
          // Memunculkan SnackBar ketika diklik
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(SnackBar(
                content: Text("Kamu telah menekan tombol ${item.name}!")));
        },
        ...
        )
        )
}
```
5. Menginisiasi color di MyHomePage
```
final List<Item> items = [
    Item("See Game Inventory", Icons.list_alt_rounded, Colors.blue),
    Item("Add New Game ", Icons.library_add_rounded, Colors.green),
    Item("Logout", Icons.logout, Colors.red),
];
```