# Laporan Praktikum 7

- Nama: Muhammad Erril Putra Pratidina
- NIM: 2341720183

## Praktikum Menerapkan Plugin
...
**Langkah 4**

```dart
return AutoSizeText(
      text,
      style: const TextStyle(color: Colors.red, fontSize: 14),
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
);
```

Pesan error:

![](attachments/Pasted%20image%2020251014155427.png)

Perbaikan:

![](attachments/Pasted%20image%2020251014155715.png)

Alasan kode error adalah karena package tempat `AutoSizeText` belum di-import dan variable `text` belum didefinisikan.

![](attachments/Pasted%20image%2020251014160440.png)


**Hasil Run**

![](attachments/Pasted%20image%2020251014160509.png)

## Tugas Praktikum

