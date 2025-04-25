# Flutter - State Management dengan Streams

## Praktikum 1: Dart Streams
**Soal 1**
- Tambahkan nama panggilan Anda pada title app sebagai identitas hasil pekerjaan Anda.
- Gantilah warna tema aplikasi sesuai kesukaan Anda.
- Lakukan commit hasil jawaban Soal 1 dengan pesan "P1: Jawaban Soal 1" 

  ![P1 Soal 1](images/P1-soal1.jpg)


**Soal 2**
- Tambahkan 5 warna lainnya sesuai keinginan Anda pada variabel colors tersebut.
- Lakukan commit hasil jawaban Soal 2 dengan pesan "P1: Jawaban Soal 2"

  ![P1 Soal 2](images/P1-soal2.jpg)

**Soal 3**
- Jelaskan fungsi keyword yield* pada kode tersebut!
> Keyword `yield*` digunakan untuk mengalirkan semua elemen dari stream lain ke stream saat ini secara langsung.
- Apa maksud isi perintah kode tersebut?
> Dalam kode tersebut, `yield*` mengalirkan data dari `Stream.periodic(...)`, yaitu stream yang mengeluarkan warna dari daftar `colors` setiap 1 detik secara berulang. Jadi, fungsi `getColors()` akan mengeluarkan warna berbeda tiap detik sesuai urutan dalam list `colors`.
- Lakukan commit hasil jawaban Soal 3 dengan pesan "P1: Jawaban Soal 3"

  ![P1 Soal 3](images/P1-soal3.jpg)

**Soal 4**
- Capture hasil praktikum Anda berupa GIF dan lampirkan di README.
- Lakukan commit hasil jawaban Soal 4 dengan pesan "P1: Jawaban Soal 4"

  ![P1 Soal 4](images/P1-soal4.gif)

**Soal 5**
- Jelaskan perbedaan menggunakan listen dan await for (langkah 9)!
> `.listen()` digunakan untuk berlangganan stream secara terus-menerus dan bisa dihentikan/di-pause dengan kontrol `StreamSubscription`. Sementara `await for` digunakan untuk menunggu data stream satu per satu secara async, tapi tidak bisa dihentikan sementara atau di-pause secara manual.
- Lakukan commit hasil jawaban Soal 5 dengan pesan "P1: Jawaban Soal 5"

## Praktikum 2: Stream controllers dan sinks
**Soal 6**
- Jelaskan maksud kode langkah 8 dan 10 tersebut!
> Langkah 8: Menginisialisasi stream dan mendengarkan datanya. Saat data baru masuk, `lastNumber` diperbarui dan UI di-refresh.  
> Langkah 10: Fungsi `addRandomNumber()` membuat angka acak 0–9, lalu mengirimkan angka tersebut ke stream lewat `addNumberToSink()`, sehingga listener pada langkah 8 akan menerima dan memprosesnya.
- Capture hasil praktikum Anda berupa GIF dan lampirkan di README.
- Lalu lakukan commit dengan pesan "P2: Jawaban Soal 6"

  ![P2 Soal 6](images/P2-soal6.gif)

**Soal 7**
- Jelaskan maksud kode langkah 13 sampai 15 tersebut!
> Langkah 13: Fungsi addError() menambahkan error ke stream melalui sink, agar listener bisa mendeteksi dan menangani error tersebut.  
> Langkah 15: Memanggil addError() saat tombol ditekan, sehingga bukan angka acak yang dikirim, tapi error yang dipicu ke stream.
- Kembalikan kode seperti semula pada Langkah 15, comment addError() agar Anda dapat melanjutkan ke praktikum 3 berikutnya.
- Lalu lakukan commit dengan pesan "P2: Jawaban Soal 7"

## Praktikum 3: Injeksi data ke streams
- Jelaskan maksud kode langkah 1-3 tersebut!
> Langkah 1: Mendeklarasikan variabel `transformer` bertipe `StreamTransformer`, tapi belum langsung diinisialisasi (`late`).  
> Langkah 2: Mengisi `transformer` dengan logika untuk memproses data stream: mengalikan nilai dengan 10, mengganti error jadi -1, dan menutup stream saat selesai.  
> Langkah 3: Menerapkan `transformer` ke stream dan mendengarkan hasilnya; jika ada data, tampilkan nilainya, jika error, tampilkan -1.
- Capture hasil praktikum Anda berupa GIF dan lampirkan di README.
- Lalu lakukan commit dengan pesan "P3: Jawaban Soal 8"

  ![P3 Soal 8](images/P3-soal8.gif)

## Praktikum 4: Subscribe ke stream events
- Jelaskan maksud kode langkah 2, 6 dan 8 tersebut!
> Langkah 2: Saat inisialisasi, aplikasi mulai mendengarkan data dari stream, dan setiap data baru akan ditampilkan di UI.  
> Langkah 6: Langganan stream dihentikan agar tidak menerima data lagi, biasanya dilakukan saat widget dibuang (`dispose`).  
> Langkah 8: Menghasilkan angka acak dan mengirimkannya ke stream, kecuali jika stream sudah ditutup, maka akan menampilkan nilai `-1` sebagai tanda error.
- Capture hasil praktikum Anda berupa GIF dan lampirkan di README.
- Lalu lakukan commit dengan pesan "P4: Jawaban Soal 9"

  ![P4 Soal 9](images/P4-soal9.gif)

## Praktikum 5: Multiple stream subscriptions
**Soal 10**
- Jelaskan mengapa error itu bisa terjadi?
> Error bisa terjadi karena satu stream tidak bisa didengarkan (listened) lebih dari satu kali secara default, jika stream tersebut bukan broadcast stream.

**Soal 11**
- Jelaskan mengapa hal itu bisa terjadi?
> Dengan menambahkan `asBroadcastStream()` memungkinkan dua listener aktif, dan karena keduanya mengubah nilai values, maka setiap nilai yang masuk akan ditambahkan dua kali ke values, menghasilkan output ganda seperti 9 - 9 - 3 - 3 -.
- Capture hasil praktikum Anda berupa GIF dan lampirkan di README.
- Lalu lakukan commit dengan pesan "P5: Jawaban Soal 10, 11".

  ![P5 Soal 11](images/P5-soal11.gif)
  
## Praktikum 6: StreamBuilder
**Soal 12**
- Jelaskan maksud kode pada langkah 3 dan 7!
> Langkah 3: Membuat stream yang mengirim angka acak (0–9) setiap 1 detik menggunakan `Stream.periodic()`.  
> Langkah 7: Menampilkan data dari stream ke UI secara real-time dengan `StreamBuilder`. Jika ada data, ditampilkan besar; jika error, dicetak di console.
- Capture hasil praktikum Anda berupa GIF dan lampirkan di README.
- Lalu lakukan commit dengan pesan "P6: Jawaban Soal 12"

  ![P6 Soal 12](images/P6-soal12.gif)

## Praktikum 7: BLoC Pattern
**Soal 13**
- Jelaskan maksud praktikum ini ! Dimanakah letak konsep pola BLoC-nya ?
> Praktikum ini bertujuan untuk menerapkan pola arsitektur BLoC (Business Logic Component) di Flutter, yaitu dengan memisahkan logika bisnis dari tampilan (UI) menggunakan `Stream` dan `Sink`. Logika untuk menghasilkan angka acak ditangani oleh `RandomNumberBloc`, yang menyediakan stream sebagai output ke UI dan sink sebagai input dari UI. Ketika tombol ditekan, event dikirim ke BLoC melalui `generateRandom`, kemudian angka acak dikirim balik ke UI melalui `randomNumber`, dan `StreamBuilder` secara otomatis memperbarui tampilan.
- Capture hasil praktikum Anda berupa GIF dan lampirkan di README.
- Lalu lakukan commit dengan pesan "P7: Jawaban Soal 13"

  ![P7 Soal 13](images/P7-soal13.gif)