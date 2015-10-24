// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.os.Handler;
import android.os.Message;
import com.dianxinos.powermanager.chargingrecord.CalendarView;

public class afw extends Handler
{

    final CalendarView a;

    public afw(CalendarView calendarview)
    {
        a = calendarview;
        super();
    }

    public void handleMessage(Message message)
    {
        if (message.what == 1)
        {
            a.requestLayout();
        }
    }
}
