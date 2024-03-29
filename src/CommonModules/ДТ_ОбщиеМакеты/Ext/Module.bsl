﻿
#Область СлужебныйПрограммныйИнтерфейс

#Область Тесты

// 
////
Процедура ПроверитьОбщийМакетСКД(Параметры) Экспорт 
    
    ДТС_Тесты.ПроверитьОбщийМакетСКД(Параметры);
    
КонецПроцедуры

#КонецОбласти

// 
////
Процедура ИсполняемыеСценарии() Экспорт 
    
    Если ДТС_Настройки.Пропустить(ИдентификаторМодуля()) Тогда
        Возврат;
    КонецЕсли;
    
    МетаданныеОбщихМакетов = ДТС_МетаданныеСервер.МетаданныеОбщихМакетов();
    НаборТестов = ДТС_НаборыТестов.НаборТестовОбщигоМакета(МетаданныеОбщихМакетов);
    ДТС_НаборыТестов.ДобавитьНаборТестов(ИдентификаторМодуля(), ПредставлениеМодуля(), НаборТестов);
    
КонецПроцедуры

#КонецОбласти

#Область СлужебныеПроцедурыИФункции

// 
////
Функция ИдентификаторМодуля() 
    
    Возврат "ОбщийМакет";
    
КонецФункции

// 
////
Функция ПредставлениеМодуля() 
    
    Возврат "Общие макеты";
    
КонецФункции

#КонецОбласти
