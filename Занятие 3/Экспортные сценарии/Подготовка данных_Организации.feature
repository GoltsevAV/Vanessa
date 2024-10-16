﻿#language: ru
@tree
@ExportScenarios
Функционал: <описание фичи>

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Подготовка данных

	// Справочник.Организации

	И я проверяю или создаю для справочника "Организации" объекты:
		| 'Ссылка'                                                                 | 'ПометкаУдаления' | 'Код'       | 'Наименование' | 'ВалютныйУчет' |
		| 'e1cib/data/Справочник.Организации?ref=b6a3709cd1dab19f11ef8b9f844b9b53' | 'False'           | '000000004' | 'ООО Учет'     | 'False'        |

Сценарий: Откат данных
И В командном интерфейсе я выбираю "Откат изменений данных" "История изменения данных (ОИД)"
И в таблице 'Список' я перехожу к строке:
	| 'Код' | 'Наименование'        |
	| '28'  | 'Начало тестирования' |
И в таблице 'Список' я нажимаю на кнопку с именем 'ФормаОткатитьИзмененияДоТекущего'
И я нажимаю на кнопку с именем 'Button0'
И я перехожу к следующему реквизиту
И я нажимаю на кнопку с именем 'Button0'
