// разделяет код на 3 уровня:
//Presentation (UI) – виджеты, BLoC/Cubit
//Domain (Use Cases, бизнес-логика) – чистая логика.
//Data (API, БД, репозитории) – работа с внешними источниками данных.

//lib/
// ┣ presentation/  # UI и управление состоянием
// ┃ ┣ screens/
 //┃ ┣ cubits/
 //┣ domain/        # Чистая бизнес-логика
 //┃ ┣ entities/
 //┃ ┣ usecases/
 //┃ ┣ repositories/
 //┣ data/          # API, Firebase, базы данных
// ┃ ┣ datasources/
 //┃ ┣ repositories/
