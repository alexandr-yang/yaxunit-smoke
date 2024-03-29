﻿
#Область СлужебныйПрограммныйИнтерфейс

#Область ПараметрыОтбора

// 
////
Функция ПараметрыОтбораСправочника(Параметры) Экспорт 
    
    Условия = Новый Массив;
    Условия.Добавить("ПометкаУдаления = Ложь");
    
    Если Параметры.Иерархический Тогда
        Условия.Добавить("ЭтоГруппа = Ложь");
    КонецЕсли;
    
    Возврат ПараметрыОтбора(Условия);
    
КонецФункции

// 
////
Функция ПараметрыОтбораГруппыСправочника(Параметры) Экспорт 
    
    Условия = Новый Массив;
    Условия.Добавить("ПометкаУдаления = Ложь");
    Условия.Добавить("ЭтоГруппа = Истина");
    Возврат ПараметрыОтбора(Условия);
    
КонецФункции

// 
////
Функция ПараметрыОтбораДокумента(Параметры) Экспорт 
    
    Условия = Новый Массив;
    Условия.Добавить("ПометкаУдаления = Ложь");
    Условия.Добавить("Проведен = Ложь");
    Условия.Добавить("Дата >= &Дата");
    ЗначенияПараметров = Новый Структура;
    ЗначенияПараметров.Вставить("Дата", ОтборДата());
    Возврат ПараметрыОтбора(Условия, ЗначенияПараметров);
    
КонецФункции

// 
////
Функция ПараметрыОтбораПроведенногоДокумента(Параметры) Экспорт 
    
    Условия = Новый Массив;
    Условия.Добавить("ПометкаУдаления = Ложь");
    Условия.Добавить("Проведен = Истина");
    Условия.Добавить("Дата >= &Дата");
    ЗначенияПараметров = Новый Структура;
    ЗначенияПараметров.Вставить("Дата", ОтборДата());
    Возврат ПараметрыОтбора(Условия, ЗначенияПараметров);
    
КонецФункции

// 
////
Функция ПараметрыОтбораПланаВидовХарактеристик(Параметры) Экспорт 
    
    Условия = Новый Массив;
    Условия.Добавить("ПометкаУдаления = Ложь");
    
    Если Параметры.Иерархический Тогда
        Условия.Добавить("ЭтоГруппа = Ложь");
    КонецЕсли;
    
    Возврат ПараметрыОтбора(Условия);
    
КонецФункции

// 
////
Функция ПараметрыОтбораГруппыПланаВидовХарактеристик(Параметры) Экспорт 
    
    Условия = Новый Массив;
    Условия.Добавить("ПометкаУдаления = Ложь");
    Условия.Добавить("ЭтоГруппа = Истина");
    Возврат ПараметрыОтбора(Условия);
    
КонецФункции

// 
////
Функция ПараметрыОтбораПланаСчетов(Параметры) Экспорт 
    
    Условия = Новый Массив;
    Условия.Добавить("ПометкаУдаления = Ложь");
    Возврат ПараметрыОтбора(Условия);
    
КонецФункции

// 
////
Функция ПараметрыОтбораПланаВидовРасчета(Параметры) Экспорт 
    
    Условия = Новый Массив;
    Условия.Добавить("ПометкаУдаления = Ложь");
    Возврат ПараметрыОтбора(Условия);
    
КонецФункции

// 
////
Функция ПараметрыОтбораРегистраСведений(Параметры) Экспорт 
    
    Условия = Новый Массив;
    ЗначенияПараметров = Новый Структура;
    
    Если Параметры.Периодический Тогда
        Условия.Добавить("Период >= &Период");
        ЗначенияПараметров.Вставить("Период", ОтборДата());
    КонецЕсли;
    
    Возврат ПараметрыОтбора(Условия, ЗначенияПараметров);
    
КонецФункции

// 
////
Функция ПараметрыОтбораРегистраНакопления(Параметры) Экспорт 
    
    Условия = Новый Массив;
    Условия.Добавить("Период >= &Период");
    ЗначенияПараметров = Новый Структура;
    ЗначенияПараметров.Вставить("Период", ОтборДата());
    Возврат ПараметрыОтбора(Условия, ЗначенияПараметров);
    
КонецФункции

// 
////
Функция ПараметрыОтбораРегистраБухгалтерии(Параметры) Экспорт 
    
    Условия = Новый Массив;
    Условия.Добавить("Период >= &Период");
    ЗначенияПараметров = Новый Структура;
    ЗначенияПараметров.Вставить("Период", ОтборДата());
    Возврат ПараметрыОтбора(Условия, ЗначенияПараметров);
    
КонецФункции

// 
////
Функция ПараметрыОтбораРегистраРасчета(Параметры) Экспорт 
    
    Условия = Новый Массив;
    Условия.Добавить("Период >= &Период");
    ЗначенияПараметров = Новый Структура;
    ЗначенияПараметров.Вставить("Период", ОтборДата());
    Возврат ПараметрыОтбора(Условия, ЗначенияПараметров);
    
КонецФункции

// 
////
Функция ПараметрыОтбораБизнесПроцесса(Параметры) Экспорт 
    
    Условия = Новый Массив;
    Условия.Добавить("ПометкаУдаления = Ложь");
    Условия.Добавить("Дата >= &Дата");
    ЗначенияПараметров = Новый Структура;
    ЗначенияПараметров.Вставить("Дата", ОтборДата());
    Возврат ПараметрыОтбора(Условия, ЗначенияПараметров);
    
КонецФункции

// 
////
Функция ПараметрыОтбораЗадачи(Параметры) Экспорт 
    
    Условия = Новый Массив;
    Условия.Добавить("ПометкаУдаления = Ложь");
    Условия.Добавить("Дата >= &Дата");
    ЗначенияПараметров = Новый Структура;
    ЗначенияПараметров.Вставить("Дата", ОтборДата());
    Возврат ПараметрыОтбора(Условия, ЗначенияПараметров);
    
КонецФункции

// 
////
Функция ПараметрыОтбораПланаОбмена(Параметры) Экспорт 
    
    Возврат ПараметрыОтбора();
    
КонецФункции

#КонецОбласти

// TODO 
////
Функция Пропустить(Идентификатор) Экспорт 
    
    Возврат НастройкиИсключений().Найти(Идентификатор) <> Неопределено;
    
КонецФункции

#КонецОбласти

#Область СлужебныеПроцедурыИФункции

#Область НастройкиИсключений

// 
////
Функция НастройкиИсключений() 
    
    НастройкиИсключений = Новый Массив;
    ЮТОбщий.ДополнитьМассив(НастройкиИсключений, НастройкиИсключенийСправочников());
    ЮТОбщий.ДополнитьМассив(НастройкиИсключений, НастройкиИсключенийДокументов());
    ЮТОбщий.ДополнитьМассив(НастройкиИсключений, НастройкиИсключенийЖурналовДокументов());
    ЮТОбщий.ДополнитьМассив(НастройкиИсключений, НастройкиИсключенийПеречислений());
    ЮТОбщий.ДополнитьМассив(НастройкиИсключений, НастройкиИсключенийОтчетов());
    ЮТОбщий.ДополнитьМассив(НастройкиИсключений, НастройкиИсключенийОбработок());
    ЮТОбщий.ДополнитьМассив(НастройкиИсключений, НастройкиИсключенийПлановВидовХарактеристик());
    ЮТОбщий.ДополнитьМассив(НастройкиИсключений, НастройкиИсключенийПлановСчетов());
    ЮТОбщий.ДополнитьМассив(НастройкиИсключений, НастройкиИсключенийПлановВидовРасчета());
    ЮТОбщий.ДополнитьМассив(НастройкиИсключений, НастройкиИсключенийРегистровСведений());
    ЮТОбщий.ДополнитьМассив(НастройкиИсключений, НастройкиИсключенийРегистровНакопления());
    ЮТОбщий.ДополнитьМассив(НастройкиИсключений, НастройкиИсключенийРегистровБухгалтерии());
    ЮТОбщий.ДополнитьМассив(НастройкиИсключений, НастройкиИсключенийРегистровРасчета());
    ЮТОбщий.ДополнитьМассив(НастройкиИсключений, НастройкиИсключенийБизнесПроцессов());
    ЮТОбщий.ДополнитьМассив(НастройкиИсключений, НастройкиИсключенийЗадач());
    ЮТОбщий.ДополнитьМассив(НастройкиИсключений, НастройкиИсключенийПлановОбмена());
    ЮТОбщий.ДополнитьМассив(НастройкиИсключений, НастройкиИсключенийКритериевОтбора());
    ЮТОбщий.ДополнитьМассив(НастройкиИсключений, НастройкиИсключенийХранилищНастроек());
    ЮТОбщий.ДополнитьМассив(НастройкиИсключений, НастройкиИсключенийОбщихФорм());
    ЮТОбщий.ДополнитьМассив(НастройкиИсключений, НастройкиИсключенийОбщихМакетов());
    Возврат НастройкиИсключений;
    
КонецФункции

// 
////
Функция НастройкиИсключенийСправочников() 
    
    НастройкиИсключений = Новый Массив;
    Возврат НастройкиИсключений;
    
КонецФункции

// 
////
Функция НастройкиИсключенийДокументов() 
    
    НастройкиИсключений = Новый Массив;
    Возврат НастройкиИсключений;
    
КонецФункции

// 
////
Функция НастройкиИсключенийЖурналовДокументов() 
    
    НастройкиИсключений = Новый Массив;
    Возврат НастройкиИсключений;
    
КонецФункции

// 
////
Функция НастройкиИсключенийПеречислений() 
    
    НастройкиИсключений = Новый Массив;
    Возврат НастройкиИсключений;
    
КонецФункции

// 
////
Функция НастройкиИсключенийОтчетов() 
    
    НастройкиИсключений = Новый Массив;
    Возврат НастройкиИсключений;
    
КонецФункции

// 
////
Функция НастройкиИсключенийОбработок()
    
    НастройкиИсключений = Новый Массив;
    // Обработки фреймворка YAXUnit
    НастройкиИсключений.Добавить("Обработка.ЮТHTTPСервисЗапрос");
    НастройкиИсключений.Добавить("Обработка.ЮТКонструкторТестовыхДанных");
    НастройкиИсключений.Добавить("Обработка.ЮТЮнитТесты");
    Возврат НастройкиИсключений;
    
КонецФункции

// 
////
Функция НастройкиИсключенийПлановВидовХарактеристик() 
    
    НастройкиИсключений = Новый Массив;
    Возврат НастройкиИсключений;
    
КонецФункции

// 
////
Функция НастройкиИсключенийПлановСчетов() 
    
    НастройкиИсключений = Новый Массив;
    Возврат НастройкиИсключений;
    
КонецФункции

// 
////
Функция НастройкиИсключенийПлановВидовРасчета() 
    
    НастройкиИсключений = Новый Массив;
    Возврат НастройкиИсключений;
    
КонецФункции

// 
////
Функция НастройкиИсключенийРегистровСведений() 
    
    НастройкиИсключений = Новый Массив;
    Возврат НастройкиИсключений;
    
КонецФункции

// 
////
Функция НастройкиИсключенийРегистровНакопления() 
    
    НастройкиИсключений = Новый Массив;
    Возврат НастройкиИсключений;
    
КонецФункции

// 
////
Функция НастройкиИсключенийРегистровБухгалтерии() 
    
    НастройкиИсключений = Новый Массив;
    Возврат НастройкиИсключений;
    
КонецФункции

// 
////
Функция НастройкиИсключенийРегистровРасчета() 
    
    НастройкиИсключений = Новый Массив;
    Возврат НастройкиИсключений;
    
КонецФункции

// 
////
Функция НастройкиИсключенийБизнесПроцессов() 
    
    НастройкиИсключений = Новый Массив;
    Возврат НастройкиИсключений;
    
КонецФункции

// 
////
Функция НастройкиИсключенийЗадач() 
    
    НастройкиИсключений = Новый Массив;
    Возврат НастройкиИсключений;
    
КонецФункции

// 
////
Функция НастройкиИсключенийПлановОбмена() 
    
    НастройкиИсключений = Новый Массив;
    Возврат НастройкиИсключений;
    
КонецФункции

// 
////
Функция НастройкиИсключенийКритериевОтбора() 
    
    НастройкиИсключений = Новый Массив;
    Возврат НастройкиИсключений;
    
КонецФункции

// 
////
Функция НастройкиИсключенийХранилищНастроек() 
    
    НастройкиИсключений = Новый Массив;
    Возврат НастройкиИсключений;
    
КонецФункции

// 
////
Функция НастройкиИсключенийОбщихФорм() 
    
    НастройкиИсключений = Новый Массив;
    Возврат НастройкиИсключений;
    
КонецФункции

// 
////
Функция НастройкиИсключенийОбщихМакетов() 
    
    НастройкиИсключений = Новый Массив;
    Возврат НастройкиИсключений;
    
КонецФункции

#КонецОбласти

// 
////
Функция ПараметрыОтбора(Условия = Неопределено, ЗначенияПараметров = Неопределено, КоличествоЗаписей = Неопределено) 
    
    ПараметрыОтбора = Новый Структура;
    ПараметрыОтбора.Вставить("Условия", Новый Массив);
    ПараметрыОтбора.Вставить("ЗначенияПараметров", Новый Структура);
    ПараметрыОтбора.Вставить("КоличествоЗаписей", КоличествоЗаписей());
    
    Если ЗначениеЗаполнено(Условия) Тогда
        ПараметрыОтбора.Условия = Условия;
    КонецЕсли;
    
    Если ЗначениеЗаполнено(ЗначенияПараметров) Тогда
        ПараметрыОтбора.ЗначенияПараметров = ЗначенияПараметров;
    КонецЕсли;
    
    Если ЗначениеЗаполнено(КоличествоЗаписей) Тогда
        ПараметрыОтбора.КоличествоЗаписей = КоличествоЗаписей;
    КонецЕсли;
    
    Возврат ПараметрыОтбора;
    
КонецФункции

// 
////
Функция ОтборДата() 
    
    Возврат НачалоДня(ТекущаяДата()) - (60 * 60 * 24 * 7); // Неделя
    
КонецФункции

// 
////
Функция КоличествоЗаписей() 
    
    Возврат 1000;
    
КонецФункции

#КонецОбласти
