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

---

# 📊 MySQLQueriesFundamentals Project

This repository contains query examples and practical scenarios prepared during the process of learning **SQL (Structured Query Language)** using **MySQL**, progressing from beginner to advanced level.  
The project was created to **understand relational database logic**, **work effectively with data**, and **learn SQL structures used in real-world projects**.

---

## 📁 Project Structure

The project consists of `.sql` files prepared to be run on **MySQL Workbench**.  
Each day builds on the previous one by adding new SQL skills.

```plaintext
MySQLQueriesFundamentals/
├── Day01_Q01_Ilk_Islemler.sql          # Database and table creation fundamentals
├── Day02/                              # Table structures, data insertion, and basic modifications
├── Day03/                              # Filtering (WHERE) and patterns (LIKE, REGEXP)
├── Day04/                              # Sorting, LIMIT, and aggregate functions
├── Day05/                              # Grouping (GROUP BY) and constraints
├── Day06/                              # Subqueries and advanced UPDATE operations
└── Day07/                              # JOIN structures, UNION, and HAVING usage
```

---

## 📚 SQL Topics Covered
 
 ### 1. 🧱 Basic Database Operations (Day 01)
 **File:** `Day01_Q01_Ilk_Islemler.sql`
 
 **Scope:**
 - Creating databases (`CREATE DATABASE`)
 - Creating tables (`CREATE TABLE`)
 - Basic data types
 - Primary Key (PK) concept
 
 ---
 
 ### 2. 🧩 Table Structures and Data Manipulation (Day 02)
 **Folder:** `Day02`
 
 **Scope:**
 - Inserting data (`INSERT`)
 - Updating data (`UPDATE`)
 - Deleting data (`DELETE`)
 - Basic table modification operations
 
 ---
 
### 3. 🔍 Filtering and Pattern Matching (Day 03)
**Folder:** `Day03`

**Scope:**
- `WHERE` conditions
- Logical operators (`AND`, `OR`)
- Using `LIKE`
- Advanced filtering with `REGEXP`

---

### 4. 📊 Sorting and Aggregate Functions (Day 04)
**Folder:** `Day04`

**Scope:**
- `ORDER BY`
- `LIMIT`
- Aggregate functions:
  - `MAX`
  - `MIN`
  - `AVG`
  - `COUNT`

---

### 5. 🗂️ Grouping and Constraints (Day 05)
**Folder:** `Day05`

**Scope:**
- Using `GROUP BY`
- Preparation for `HAVING`
- Constraints (`NOT NULL`, `UNIQUE`, `CHECK`)
- Foreign Key (FK) concept

---

### 6. 🔄 Subqueries and Update Operations (Day 06)
**Folder:** `Day06`

**Scope:**
- Subqueries
- `IN`, `EXISTS`, `NOT EXISTS`
- Using subqueries within `SELECT`
- `UPDATE` operations with related tables
- Parent / Child table safety

---

### 7. 🔗 JOIN, UNION, and Advanced Queries (Day 07)
**Folder:** `Day07`

**Scope:**
- `INNER JOIN`
- `LEFT JOIN`
- `RIGHT JOIN`
- `FULL JOIN`
- `UNION` / `UNION ALL`
- Group filtering with `HAVING`
- `DELETE`, `TRUNCATE`
- `ON DELETE CASCADE`
- `SAVEPOINT` and `ROLLBACK`

---
