﻿
#Область ПрограммныйИнтерфейс

// 
////
Процедура ИсполняемыеСценарии(ДополнительныеПараметры = Неопределено) Экспорт 
    
    МассивМетаданных = ДымовыеТесты_Метаданные.МетаданныеПеречисления();
    НаборТестов = ДымовыеТесты_НаборыТестов.НаборТестовПеречисления(Теги());
    
    Для Каждого ЭлементМассива Из МассивМетаданных Цикл
        ДымовыеТесты_НаборыТестов.ДобавитьНаборТестов(ЭлементМассива, НаборТестов);
    КонецЦикла;
    
КонецПроцедуры

#Область Тесты

// 
////
Процедура ОткрытьФормуСписка(Имя) Экспорт 
    
    ДымовыеТесты_Тесты.ОткрытьФормуСписка("Перечисление", Имя);
    
КонецПроцедуры

// 
////
Процедура ОткрытьФормуВыбора(Имя) Экспорт 
    
    ДымовыеТесты_Тесты.ОткрытьФормуВыбора("Перечисление", Имя);
    
КонецПроцедуры

#КонецОбласти

#КонецОбласти

#Область СлужебныеПроцедурыИФункции

// 
////
Функция ТипМетаданных() 
    
    Возврат "Перечисление";
    
КонецФункции

// 
////
Функция Теги() 
    
    Возврат "Перечисление";
    
КонецФункции

#КонецОбласти
