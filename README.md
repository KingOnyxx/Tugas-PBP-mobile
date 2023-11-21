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
## 1. Jelaskan perbedaan antara Navigator.push() dan Navigator.pushReplacement(), disertai dengan contoh mengenai penggunaan kedua metode tersebut yang tepat!
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


# Tugas 9
## 1. Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? Jika iya, apakah hal tersebut lebih baik daripada membuat model sebelum melakukan pengambilan data JSON?
Bisa, tetapi tidak disarankan. Hal tersebut tidak lebih baik daripada membuat model terlebih dahulu karena dengan membuat model terlebih dahulu, kita dapat mengetahui tipe data dari data yang diambil sehingga memudahkan kita untuk mengambil data tersebut.
## 2. Jelaskan fungsi dari CookieRequest dan jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.
CookieRequest adalah class yang berfungsi untuk mengambil data dari server. Instance CookieRequest perlu dibagikan ke semua komponen di aplikasi Flutter agar dapat digunakan oleh semua komponen di aplikasi Flutter.
## 3. Jelaskan mekanisme pengambilan data dari JSON hingga dapat ditampilkan pada Flutter.
Mekanisme pengambilan data dari JSON hingga dapat ditampilkan pada Flutter adalah dengan mengambil data dari server menggunakan CookieRequest, kemudian mengubah data tersebut menjadi tipe data yang sesuai, dan menampilkannya pada Flutter.
## 4. Jelaskan mekanisme autentikasi dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.
Mekanisme autentikasi dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter adalah dengan mengirim data akun dari Flutter ke Django menggunakan CookieRequest, kemudian Django akan memvalidasi data tersebut. Jika data tersebut valid, maka Django akan mengirimkan data tersebut ke Flutter dan Flutter akan menampilkan menu.
## 5. Sebutkan seluruh widget yang kamu pakai pada tugas ini dan jelaskan fungsinya masing-masing.
- `ListView` adalah widget yang berfungsi untuk menampilkan child dalam tata letak secara berurutan
- `Column` adalah widget yang berfungsi untuk menampilkan child dalam tata letak secara vertikal
- `Row` adalah widget yang berfungsi untuk menampilkan child dalam tata letak secara horizontal
- `TextFormField` adalah widget yang berfungsi untuk menerima hasil input user dan mengubahnya menjadi tipe String, Integer, atau Double
- `Text` adalah widget yang berfungsi untuk menampilkan teks dalam bentuk string dengan gaya yang ditentukan
- `Scaffold` adalah kerangka dasar visual Material Design untuk menyediakan struktur default kepada AppBar, Body, dll
- `AppBar` adalah bar aplikasi Material Design yang biasanya digunakan sebagai bagian atas dari Scaffold
- `ElevatedButton` adalah widget yang berfungsi untuk menampilkan button dengan efek bayangan
- `SizedBox` adalah widget yang berfungsi untuk menambahkan ruang kosong
## 6. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial).
1. Membuat app baru di django bernama authentication dengan `python manage.py startapp authentication`.
2. Menambahkan `authentication` ke `INSTALLED_APPS` di `settings.py`.
3. Menambahkan `corsheaders` ke `INSTALLED_APPS` di `settings.py`.
4. Menambahkan `corsheaders.middleware.CorsMiddleware` ke `MIDDLEWARE` di `settings.py`.
5. Menambahkan 
```
CORS_ALLOW_ALL_ORIGINS = True
CORS_ALLOW_CREDENTIALS = True
CSRF_COOKIE_SECURE = True
SESSION_COOKIE_SECURE = True
CSRF_COOKIE_SAMESITE = 'None'
SESSION_COOKIE_SAMESITE = 'None'
``` 
di `settings.py`.
6. Menginstal package provider dan pbp_django_auth dengan ```flutter pub add provider```, ```flutter pub add pbp_django_auth```, dan ```flutter pub add http``` di command line.
7. Mengubah `main.dart` menjadi seperti berikut:
```dart
class MyApp extends StatelessWidget {
    const MyApp({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Provider(
            create: (_) {
                CookieRequest request = CookieRequest();
                return request;
            },
            child: MaterialApp(
                title: 'Flutter App',
                theme: ThemeData(
                    colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
                    useMaterial3: true,
                ),
                home: MyHomePage()),
            ),
        );
    }
```
8. Menambahkan line berikut di `android/app/src/main/AndroidManifest.xml`:
```
android/app/src/main/AndroidManifest.xml
```
9. Membuat file baru bernama `urls.py` di dalam directory `authentication`.
10. Membuat function untuk login dan logout di `views.py` di directory `authentication`.
11. Routing function - function di `urls.py` di directory `authentication`.
12. Membuat function `create-flutter` di `views.py` di directory `main`.
13. Routing function `create-flutter` di urls.py di directory `main`.
14. Membuat file baru bernama `login.dart` untuk menampilkan halaman login.
15. Membuat file baru bernama `list_inventory.dart` untuk menampilkan halaman list inventory.
16. Membuat file baru bernama `product_detail.dart` untuk menampilkan halaman detail produk dari `list_inventory.dart`.
17. Membuat folder baru bernama `models` di dalam directory `lib`.
18. Membuat file baru bernama `product.dart` di dalam directory `lib/models` untuk membuat model produk.
Bonus:
19. Membuat file baru bernama `register.dart` untuk menampilkan halaman register.
20. Membuat function baru di `views.py` di directory `authentication` untuk register.
21. Routing function baru di `urls.py` di directory `authentication` untuk register.
22. Untuk filter produk, saya menggunakan function yang sudah pernah dibuat di Django yaitu `get-product`. Function tersebut sudah memiliki filter by user sehingga saya hanya memanggil saja function tersebut.
23. Untuk fetching data produk di flutter
```dart
Future<List<Product>> fetchProduct(CookieRequest request) async {
    final response = await http.get(
    Uri.parse('http://clarence-grady-tugas.pbp.cs.ui.ac.id/get-product'),
    headers: request.headers,
  );
      

      // Perform error handling for the response
      if (response.statusCode == 200) {
        // Decode the response body
        var data = jsonDecode(utf8.decode(response.bodyBytes));

        // Convert the JSON data to a list of Product objects
        List<Product> list_product = [];
        for (var d in data) {
          if (d != null) {
            list_product.add(Product.fromJson(d));
          }
        }
        return list_product;
      } else {
        throw Exception('Failed to fetch products');
      }
}
```



