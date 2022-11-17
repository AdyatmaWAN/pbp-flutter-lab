# counter_7

##  Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget dan jelaskan perbedaan dari keduanya.
- Stateless widget adalah widget yang tidak memiliki state, artinya widget tersebut tidak memiliki perubahan data yang terjadi secara dinamis. Stateless widget hanya memiliki satu state saja, yaitu state awal.
- Stateful widget adalah widget yang memiliki state, artinya widget tersebut memiliki perubahan data yang terjadi secara dinamis. Stateful widget memiliki dua state, yaitu state awal dan state yang terjadi secara dinamis.

##  Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
1. MaterialApp adalah widget yang digunakan untuk membuat aplikasi yang memiliki material design.
2. ThemeData adalah widget yang digunakan untuk mengatur tema aplikasi.
3. Scaffold adalah widget yang digunakan untuk membuat layout widget di dalamnya.
4. AppBar adalah widget yang digunakan untuk membuat bar atas.
5. Text adalah widget yang digunakan untuk menampilkan teks.
6. Center adalah widget yang digunakan untuk menengahkan widget yang ada di dalamnya.
7. Column adalah widget yang digunakan untuk menampilkan widget secara vertikal.
8. Row adalah widget yang digunakan untuk menampilkan widget secara horizontal.
9. TextSpan adalah widget yang digunakan untuk menampilkan teks dengan format tertentu.
10. Container adalah widget yang digunakan untuk menampung widget lainnya.
11. FloatingActionButton adalah widget yang digunakan untuk membuat tombol.
12. Icon adalah widget yang digunakan untuk menampilkan icon.

##  Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
Fungsi dari setState() adalah untuk mengubah state dari widget yang bersangkutan. Pengubahan dilakukan dengan memanggil method build() agar tampilan ter-refresh

##  Jelaskan perbedaan antara const dengan final
- const adalah variabel yang nilainya tidak dapat diubah setelah dideklarasikan. Namun setiap kali render bisa dideklarasikan ulang.
- final adalah variabel yang nilainya tidak dapat diubah setelah dideklarasikan dan perlu langsung diinisiasi. Namun setiap kali render tidak bisa dideklarasikan ulang.

##  Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.
1. Membuat aplikasi Flutter bernama counter_7 dengan command `flutter create counter_7`
2. Membuat fungsi untuk menambah dan mengurangi counter
```
void _incrementCounter() {
    setState(() {
      _counter++;
    });
}

void _decrementCounter() {
    setState(() {
      if (_counter > 0) {
        _counter--;
      }
    });
}
```
3. Membuat widget untuk menampilkan kata ganjil/genap
```
children: <Widget>[
            _counter % 2 == 0 ?
              const Text(
                'GENAP',
                style: TextStyle(color: Colors.red),
              )
            :
              const Text(
                'GANJIL',
                style: TextStyle(color: Colors.blue),
              ),

            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
```
4. Membuat widget untuk menampilkan tombol tambah dan kurang (tombol kurang menghilang jika counter == 0)
```
children: [
            _counter > 0 ?
            FloatingActionButton(
              onPressed: _decrementCounter,
              tooltip: 'Decrement',
              child: const Icon(Icons.remove),
            ) : SizedBox(),
            FloatingActionButton(
              onPressed: _incrementCounter,
              tooltip: 'Increment',
              child: const Icon(Icons.add),
            ),
          ]
```

# Tugas 8

## Jelaskan perbedaan `Navigator.push` dan `Navigator.pushReplacement`
- Navigator.push digunakan untuk menambahkan route baru ke stack route. Navigator.pushReplacement digunakan untuk mengganti route yang sedang aktif dengan route baru.
- Navigator.pushReplacement akan menghapus semua route yang ada di stack route sebelumnya.

## Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya
- Drawer adalah widget yang digunakan untuk membuat menu drawer untuk navigasi.
- Form adalah widget yang digunakan untuk membuat container form.
- TextFormField adalah widget yang digunakan untuk membuat form input.
- DropdownButtonFormField adalah widget yang digunakan untuk membuat form dropdown.
- Card adalah widget yang digunakan untuk membuat card.
- ListTile adalah widget yang digunakan untuk membuat list tile.

## Sebutkan jenis-jenis event yang ada pada Flutter (contoh: `onPressed`).
- onChanged
- onSaved
- onTap
- onHover
- onEditingComplete
- onFieldSubmitted

## Jelaskan bagaimana cara kerja `Navigator` dalam "mengganti" halaman dari aplikasi Flutter.
`Navigator` berfungsi menampilkan layar dengan cara ditumpuk seperti stack (Last In, First Out). Untuk merubah layar menggunakan `Navigator.push` untuk ke layar baru dan `Navigator.pop` untuk ke layar sebelumnya

## Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas
- Membuat file `form.dart` untuk dijadikan halaman form. File ini berisi TextFormField untuk menerima input text, DropdownButtonFormField untuk menerima input dari dropdown, dan TextButton untuk menyimpan hasil input.
- Membuat file `show_form.dart` untuk menampilkan data-data yang telah disimpan form. File ini berisi Card untuk menampilkan data-data yang telah disimpan form dengan cara mengimport data dari `form.dart`.
- Membuat file `drawer.dart` untuk membuat menu drawer. File ini berisi ListTile untuk menampilkan menu-menu yang ada di drawer.
- Menambahkan widget Drawer ke file `main.dart`, `form.dart`, dan `show_form.dart` dengan cara mengimport file `drawer.dart` dan menambahkan widget Drawer ke widget Scaffold.