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
Процедура ОткрытьФормуВыбора(Параметры) Экспорт 
    
    ДТС_Тесты.ОткрытьФормуВыбора(Параметры);
    
КонецПроцедуры

// 
////
Процедура ОткрытьФормуОбъекта(Параметры) Экспорт 
    
    ДТС_Тесты.ОткрытьФормуОбъекта(Параметры);
    
КонецПроцедуры

// 
////
Процедура ОткрытьФормуСуществующегоОбъекта(Параметры) Экспорт 
    
    ПараметрыОтбора = ДТС_Настройки.ПараметрыОтбораСправочника(Параметры);
    ДТС_Тесты.ОткрытьФормуОбъекта(Параметры, ПараметрыОтбора);
    
КонецПроцедуры

// 
////
Процедура ОткрытьФормуВыбораГруппы(Параметры) Экспорт 
    
    ДТС_Тесты.ОткрытьФормуВыбораГруппы(Параметры);
    
КонецПроцедуры

// 
////
Процедура ОткрытьФормуГруппы(Параметры) Экспорт 
    
    ДТС_Тесты.ОткрытьФормуГруппы(Параметры);
    
КонецПроцедуры

// 
////
Процедура ОткрытьФормуСуществующейГруппы(Параметры) Экспорт 
    
    ПараметрыОтбора = ДТС_Настройки.ПараметрыОтбораГруппыСправочника(Параметры);
    ДТС_Тесты.ОткрытьФормуГруппы(Параметры, ПараметрыОтбора);
    
КонецПроцедуры

// 
////
Процедура ЗаписатьСуществующийОбъект(Параметры) Экспорт 
    
    ПараметрыОтбора = ДТС_Настройки.ПараметрыОтбораСправочника(Параметры);
    ДТС_Тесты.ЗаписатьОбъект(Параметры, ПараметрыОтбора);
    
КонецПроцедуры

// 
////
Процедура ЗаписатьСуществующуюГруппу(Параметры) Экспорт 
    
    ПараметрыОтбора = ДТС_Настройки.ПараметрыОтбораГруппыСправочника(Параметры);
    ДТС_Тесты.ЗаписатьОбъект(Параметры, ПараметрыОтбора);
    
КонецПроцедуры

// 
////
Процедура СкопироватьСуществующийОбъект(Параметры) Экспорт 
    
    ПараметрыОтбора = ДТС_Настройки.ПараметрыОтбораСправочника(Параметры);
    ДТС_Тесты.СкопироватьОбъект(Параметры, ПараметрыОтбора);
    
КонецПроцедуры

// 
////
Процедура СкопироватьСуществующуюГруппу(Параметры) Экспорт 
    
    ПараметрыОтбора = ДТС_Настройки.ПараметрыОтбораГруппыСправочника(Параметры);
    ДТС_Тесты.СкопироватьОбъект(Параметры, ПараметрыОтбора);
    
КонецПроцедуры

// 
////
Процедура ПроверитьМакетСКД(Параметры) Экспорт 
    
    ДТС_Тесты.ПроверитьМакетСКД(Параметры);
    
КонецПроцедуры

// 
////
Процедура ПроверитьПравоИнтерактивноеУдаление(Параметры) Экспорт 
    
    ДТС_Тесты.ПроверитьПраво(Параметры, "ИнтерактивноеУдаление");
    
КонецПроцедуры

// 
////
Процедура ПроверитьПравоИнтерактивноеУдалениеПомеченных(Параметры) Экспорт 
    
    ДТС_Тесты.ПроверитьПраво(Параметры, "ИнтерактивноеУдалениеПомеченных");
    
КонецПроцедуры

#КонецОбласти

// 
////
Процедура ИсполняемыеСценарии() Экспорт 
    
    Если ДТС_Настройки.Пропустить(ИдентификаторМодуля()) Тогда
        Возврат;
    КонецЕсли;
    
    МетеданныеСправочников = ДТС_МетаданныеСервер.МетеданныеСправочников();
    
    Для Каждого ОписаниеМетаданных Из МетеданныеСправочников Цикл
        Если ДТС_Настройки.Пропустить(ОписаниеМетаданных.Идентификатор) Тогда
            Продолжить;
        КонецЕсли;
        
        НаборТестов = ДТС_НаборыТестов.НаборТестовСправочника(ОписаниеМетаданных);
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
    
    Возврат "Справочник";
    
КонецФункции

#КонецОбласти
