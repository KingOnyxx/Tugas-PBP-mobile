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
# Tugas 8
## 1. Jelaskan perbedaan antara Navigator.push() dan Navigator.         pushReplacement(), disertai dengan contoh mengenai penggunaan kedua metode tersebut yang tepat!
Navigator.push() adalah fungsi untuk menambahkan halaman baru ke dalam stack halaman. Sedangkan Navigator.pushReplacement() adalah fungsi untuk mengganti halaman teratas dalam stack halaman dengan halaman baru.
## 2. Jelaskan masing-masing layout widget pada Flutter dan konteks penggunaannya masing-masing!
- `Container` adalah widget yang berfungsi untuk menggabungkan satu atau lebih widget dan ditempatkan sesuai dengan kondisi yang sudah ditetapkan
- `Row` adalah widget yang berfungsi untuk menampilkan child dalam tata letak secara horizontal
- `Column` adalah widget yang berfungsi untuk menampilkan child dalam tata letak secara vertikal
- `Stack` adalah widget yang berfungsi untuk menampilkan child dalam tata letak secara bertumpuk
- `ListView` adalah widget yang berfungsi untuk menampilkan child dalam tata letak secara berurutan
- `GridView` adalah widget yang berfungsi untuk menampilkan child dalam tata letak grid
- `Align` adalah widget yang berfungsi untuk menampilkan child dalam tata letak dengan posisi yang sudah ditentukan
- `Center` adalah widget yang berfungsi untuk memposisikan child di tengah
- `Padding` adalah widget yang berfungsi untuk memberikan padding ke child widget


## 3. Sebutkan apa saja elemen input pada form yang kamu pakai pada tugas kali ini dan jelaskan mengapa kamu menggunakan elemen input tersebut!
Untuk elemen input saya menggunakan `TextFormField` untuk menerima hasil input user dan mengubahnya menjadi tipe String, Integer, atau Double. Saya menggunakan TextFormField karena memiliki fitur validasi yang memudahkan untuk memvalidasi input dari user.

## 4. Bagaimana penerapan clean architecture pada aplikasi Flutter?
Penerapan clean architecture pada aplikasi flutter adalah dengan memisahkan kode program menjadi 3 layer yaitu presentation layer, domain layer, dan data layer. Presentation layer berisi kode program yang berhubungan dengan UI, domain layer berisi kode program yang berhubungan dengan bisnis logic, dan data layer berisi kode program yang berhubungan dengan data.
## 5. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial)
1. Membuat folder baru di dalam directory lib bernama `widgets`.
2. Membuat file untuk drawer bernama `left_drawer.dart` di directory `lib/widgets`.
3. Membuat file baru bernama `card.dart` di directory `lib/widgets` untuk button di home screen.
4. Membuat folder baru bernama `screens` di dalam directory `lib`.
5. Membuat file baru di dalam directory `lib/screens` bernama `form.dart` untuk menampilkan form page.
6. Memindahkan file `menu.dart` ke dalam directory `lib/screens`.
