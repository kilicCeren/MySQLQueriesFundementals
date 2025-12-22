# 📊 MySQLQueriesFundamentals Projesi

Bu repo, **MySQL** kullanılarak **SQL (Structured Query Language)** öğrenme sürecinde hazırlanmış, başlangıç seviyesinden ileri seviyeye doğru ilerleyen sorgu örneklerini ve pratik senaryoları içermektedir.  
Proje, **ilişkisel veritabanı mantığını kavramak**, **veri ile etkili şekilde çalışmak** ve **gerçek projelerde kullanılan SQL yapılarını öğrenmek** amacıyla oluşturulmuştur.

---

## 📁 Proje Yapısı

Proje, **MySQL Workbench** üzerinde çalışılmak üzere hazırlanmış `.sql` dosyalarından oluşur.  
Her gün, bir önceki günün üzerine yeni SQL yetenekleri eklenerek ilerler.

```plaintext
MySQLQueriesFundamentals/
├── Day01_Q01_Ilk_Islemler.sql          # Veritabanı ve tablo oluşturma temelleri
├── Day02/                              # Tablo yapıları, veri ekleme ve temel modifikasyonlar
├── Day03/                              # Filtreleme (WHERE) ve kalıplar (LIKE, REGEXP)
├── Day04/                              # Sıralama, LIMIT ve Aggregate fonksiyonlar
├── Day05/                              # Gruplandırma (GROUP BY) ve Constraints
├── Day06/                              # Alt Sorgular (SubQuery) ve gelişmiş UPDATE işlemleri
└── Day07/                              # JOIN yapıları, UNION ve HAVING kullanımı
```

---

## 📚 İçerdiği SQL Konuları

### 1. 🧱 Temel Veritabanı İşlemleri (Day 01)
**Dosya:** `Day01_Q01_Ilk_Islemler.sql`

**Kapsam:**
- Veritabanı oluşturma (`CREATE DATABASE`)
- Tablo oluşturma (`CREATE TABLE`)
- Temel veri tipleri
- Primary Key (PK) kavramı

---

### 2. 🧩 Tablo Yapıları ve Veri Manipülasyonu (Day 02)
**Klasör:** `Day02`

**Kapsam:**
- Veri ekleme (`INSERT`)
- Veri güncelleme (`UPDATE`)
- Veri silme (`DELETE`)
- Temel tablo düzenleme işlemleri

---

### 3. 🔍 Filtreleme ve Desen Arama (Day 03)
**Klasör:** `Day03`

**Kapsam:**
- `WHERE` koşulları
- Mantıksal operatörler (`AND`, `OR`)
- `LIKE` kullanımı
- `REGEXP` ile gelişmiş filtreleme

---

### 4. 📊 Sıralama ve Aggregate Fonksiyonlar (Day 04)
**Klasör:** `Day04`

**Kapsam:**
- `ORDER BY`
- `LIMIT`
- Aggregate fonksiyonlar:
  - `MAX`
  - `MIN`
  - `AVG`
  - `COUNT`

---

### 5. 🗂️ Gruplandırma ve Kısıtlamalar (Day 05)
**Klasör:** `Day05`

**Kapsam:**
- `GROUP BY` kullanımı
- `HAVING` öncesi hazırlık
- Kısıtlamalar (`NOT NULL`, `UNIQUE`, `CHECK`)
- Foreign Key (FK) mantığı

---

### 6. 🔄 Alt Sorgular ve Güncelleme İşlemleri (Day 06)
**Klasör:** `Day06`

**Kapsam:**
- Subquery (Alt sorgular)
- `IN`, `EXISTS`, `NOT EXISTS`
- `SELECT` içinde subquery kullanımı
- İlişkili tablolarla `UPDATE`
- Parent / Child tablo güvenliği

---

### 7. 🔗 JOIN, UNION ve İleri Seviye Sorgular (Day 07)
**Klasör:** `Day07`

**Kapsam:**
- `INNER JOIN`
- `LEFT JOIN`
- `RIGHT JOIN`
- `FULL JOIN`
- `UNION` / `UNION ALL`
- `HAVING` ile grup filtreleme
- `DELETE`, `TRUNCATE`
- `ON DELETE CASCADE`
- `SAVEPOINT` ve `ROLLBACK`

---

## 🛠️ Nasıl Çalıştırılır?

### 1. Depoyu Klonlayın

```bash
git clone https://github.com/KULLANICI_ADINIZ/MySQLQueriesFundamentals.git
```

### 2. MySQL Workbench'i Açın

- MySQL Workbench uygulamasını başlatın
- Çalıştırmak istediğiniz `.sql` dosyasını Workbench içine açın

### 3. Sorguları Çalıştırın

- Sorguları **yukarıdan aşağıya doğru** sırasıyla çalıştırın
- Sonuçları **Result Grid** üzerinden gözlemleyin

---

## ⚠️ Not

JOIN ve Subquery örneklerinin doğru çalışabilmesi için, ilgili tabloların `CREATE` ve `INSERT` sorgularının **önceden çalıştırılmış olması** gerekmektedir.

---

## 🎯 Projenin Amacı

Bu proje ile amaçlanan:

- SQL’i ezberlemeden, **mantığını anlayarak öğrenmek**
- Gerçek hayatta kullanılan **ilişkisel veri senaryolarını** kavramak
- **Junior → Mid** seviyesinde sağlam bir SQL altyapısı oluşturmak
