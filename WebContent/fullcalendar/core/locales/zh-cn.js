(function (global, factory) {
    typeof exports === 'object' && typeof module !== 'undefined' ? module.exports = factory() :
    typeof define === 'function' && define.amd ? define(factory) :
    (global = global || self, (global.FullCalendarLocales = global.FullCalendarLocales || {}, global.FullCalendarLocales['zh-cn'] = factory()));
}(this, function () { 'use strict';

    var zhCn = {
        code: "zh-cn",
        week: {
            // GB/T 7408-1994������Ԫ�ͽ�����ʽ����Ϣ���������ں�ʱ���ʾ������ISO 8601:1988��Ч
            dow: 1,
            doy: 4 // The week that contains Jan 4th is the first week of the year.
        },
        buttonText: {
            prev: "����",
            next: "����",
            today: "����",
            month: "��",
            week: "��",
            day: "��",
            list: "�ճ�"
        },
        weekLabel: "��",
        allDayText: "ȫ��",
        eventLimitText: function (n) {
            return "���� " + n + " ��";
        },
        noEventsMessage: "û���¼���ʾ"
    };

    return zhCn;

}));
