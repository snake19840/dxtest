(function (global, factory) {
    typeof exports === 'object' && typeof module !== 'undefined' ? module.exports = factory() :
    typeof define === 'function' && define.amd ? define(factory) :
    (global = global || self, (global.FullCalendarLocales = global.FullCalendarLocales || {}, global.FullCalendarLocales['zh-tw'] = factory()));
}(this, function () { 'use strict';

    var zhTw = {
        code: "zh-tw",
        buttonText: {
            prev: "����",
            next: "����",
            today: "����",
            month: "��",
            week: "�L",
            day: "��",
            list: "����б�"
        },
        weekLabel: "��",
        allDayText: "����",
        eventLimitText: '�@ʾ����',
        noEventsMessage: "û���κλ��"
    };

    return zhTw;

}));
