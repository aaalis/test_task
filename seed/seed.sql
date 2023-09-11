set names utf8;

CREATE DATABASE test_task_db;

USE test_task_db;

CREATE TABLE genre_subgenre_books
(
    id SERIAL PRIMARY KEY ,
    name VARCHAR(200),
    parent_id BIGINT UNSIGNED
);

INSERT INTO genre_subgenre_books(name, parent_id) VALUES ("Поэзия", 0);
INSERT INTO genre_subgenre_books(name, parent_id) VALUES ("Проза", 0);

INSERT INTO genre_subgenre_books(name, parent_id) VALUES ("Песни и баллады", 1);
INSERT INTO genre_subgenre_books(name, parent_id) VALUES ("Повествование", 1);
INSERT INTO genre_subgenre_books(name, parent_id) VALUES ("Эпический", 1);

INSERT INTO genre_subgenre_books(name, parent_id) VALUES ("Художественная проза", 2);
INSERT INTO genre_subgenre_books(name, parent_id) VALUES ("Научно-популярная проза", 2);

INSERT INTO genre_subgenre_books(name, parent_id) VALUES ("Роман", 6);
INSERT INTO genre_subgenre_books(name, parent_id) VALUES ("Новелла", 6);

INSERT INTO genre_subgenre_books(name, parent_id) VALUES ("Биография", 7);
INSERT INTO genre_subgenre_books(name, parent_id) VALUES ("Автобиография", 7);

INSERT INTO genre_subgenre_books(name, parent_id) VALUES ("Сьюзен Коллинз: Баллада о змеях и певчих птицах", 3);
INSERT INTO genre_subgenre_books(name, parent_id) VALUES ("Терри Пратчетт: Пехотная баллада", 3);
INSERT INTO genre_subgenre_books(name, parent_id) VALUES ("Василь Быков: Дожить до рассвета. Альпийская баллада", 3);

INSERT INTO genre_subgenre_books(name, parent_id) VALUES ("Мария Муромцева: Муромцевы и Дерюжинские. Моя семья. Повествование в документах, воспоминаниях, письмах", 4);
INSERT INTO genre_subgenre_books(name, parent_id) VALUES ("Феликс Лурье: Созидатель разрушения. Документальное повествование о Сергее Нечаеве", 4);

INSERT INTO genre_subgenre_books(name, parent_id) VALUES ("Александр Мазин: Викинг. Гнев Севера", 5);
INSERT INTO genre_subgenre_books(name, parent_id) VALUES ("Красницкий, Варюшенков: Сотник. Бывших не бывает", 5);
INSERT INTO genre_subgenre_books(name, parent_id) VALUES ("Джеймс Кори: Падение Левиафана", 5);

INSERT INTO genre_subgenre_books(name, parent_id) VALUES ("Диана Гэблдон: Скажи пчелам, что меня больше нет", 8);
INSERT INTO genre_subgenre_books(name, parent_id) VALUES ("Наталья Литтера: Суббота Воскресенского", 8);

INSERT INTO genre_subgenre_books(name, parent_id) VALUES ("Гуйюань Тянься: Восстание клана Чан", 9);
INSERT INTO genre_subgenre_books(name, parent_id) VALUES ("Гуйюань Тянься: Восхождение фениксов", 9);
INSERT INTO genre_subgenre_books(name, parent_id) VALUES ("Федор Сологуб: Земные дети. Рассказы. Новеллы. Легенды", 9);
INSERT INTO genre_subgenre_books(name, parent_id) VALUES ("Эжен Ионеско: Фотография полковника", 9);

INSERT INTO genre_subgenre_books(name, parent_id) VALUES ("Новичкова, Бунтман, Ратина: Пётр I", 10);
INSERT INTO genre_subgenre_books(name, parent_id) VALUES ("Дмитрий Меркулов: Екатерина II", 10);

INSERT INTO genre_subgenre_books(name, parent_id) VALUES ("Мэттью Перри: Друзья, любимые и одна большая ужасная вещь. Автобиография Мэттью Перри", 11);
INSERT INTO genre_subgenre_books(name, parent_id) VALUES ("Ирина Винер: Я – никто. Автобиография легендарного тренера", 11);