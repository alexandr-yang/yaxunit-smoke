﻿
#Область СлужебныйПрограммныйИнтерфейс

#Область Тесты

// 
////
Процедура ОткрытьФормуСписка(Параметры) Экспорт 
    
    ДТС_Тесты.ОткрытьФормуСписка(Параметры);
    
КонецПроцедуры

// 
////
Процедура ПроверитьМакетСКД(Параметры) Экспорт 
    
    ДТС_Тесты.ПроверитьМакетСКД(Параметры);
    
КонецПроцедуры

#КонецОбласти

// 
////
Процедура ИсполняемыеСценарии() Экспорт 
    
    Если ДТС_Настройки.Пропустить(ИдентификаторМодуля()) Тогда
        Возврат;
    КонецЕсли;
    
    МассивМетаданных = ДТС_МетаданныеСервер.МетаданныеРегистровНакопления();
    
    Для Каждого ОписаниеМетаданных Из МассивМетаданных Цикл
        Если ДТС_Настройки.Пропустить(ОписаниеМетаданных.Идентификатор) Тогда
            Продолжить;
        КонецЕсли;
        
        НаборТестов = ДТС_НаборыТестов.НаборТестовРегистраНакопления(ОписаниеМетаданных);
        ДТС_НаборыТестов.ДобавитьНаборТестов(
            ОписаниеМетаданных.Идентификатор, 
            ОписаниеМетаданных.Представление, 
            НаборТестов
        );
    КонецЦикла;
    
КонецПроцедуры

#КонецОбласти

#Область СлужебныеПроцедурыИФункции

// 
////
Функция ИдентификаторМодуля() 
    
    Возврат "РегистрНакопления";
    
КонецФункции

#КонецОбласти
