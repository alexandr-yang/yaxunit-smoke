
#Область ПрограммныйИнтерфейс

// 
////
Процедура ИсполняемыеСценарии(ДополнительныеПараметры = Неопределено) Экспорт 
    
    МассивМетаданных = ДымовыеТесты_Метаданные.МетаданныеЖурналыДокументов();
    НаборТестов = ДымовыеТесты_НаборыТестов.НаборТестовЖурналыДокументов(Теги());
    
    Для Каждого ЭлементМассива Из МассивМетаданных Цикл
        ДымовыеТесты_НаборыТестов.ДобавитьНаборТестов(ЭлементМассива, НаборТестов);
    КонецЦикла;
    
КонецПроцедуры

#Область Тесты

// 
////
Процедура ОткрытьФормуСписка(Имя) Экспорт 
    
    ДымовыеТесты_Тесты.ОткрытьФормуСписка(ТипМетаданных(), Имя);
    
КонецПроцедуры

#КонецОбласти

#КонецОбласти

#Область СлужебныеПроцедурыИФункции

// 
////
Функция ТипМетаданных() 
    
    Возврат "ЖурналДокументов";
    
КонецФункции

// 
////
Функция Теги() 
    
    Возврат "ЖурналДокументов";
    
КонецФункции

#КонецОбласти
