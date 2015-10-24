// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.os.Handler;
import android.os.Message;
import com.dianxinos.powermanager.ui.DxDigitalTimeDisplay;

public class avf extends Handler
{

    final DxDigitalTimeDisplay a;

    public avf(DxDigitalTimeDisplay dxdigitaltimedisplay)
    {
        a = dxdigitaltimedisplay;
        super();
    }

    public void handleMessage(Message message)
    {
        if (message.what == 1)
        {
            DxDigitalTimeDisplay.a(a, DxDigitalTimeDisplay.a(a, DxDigitalTimeDisplay.a(a), DxDigitalTimeDisplay.b(a)));
            DxDigitalTimeDisplay.b(a, DxDigitalTimeDisplay.b(a, DxDigitalTimeDisplay.c(a), DxDigitalTimeDisplay.d(a)));
            DxDigitalTimeDisplay.e(a);
            if (DxDigitalTimeDisplay.a(a) == DxDigitalTimeDisplay.b(a) && DxDigitalTimeDisplay.c(a) == DxDigitalTimeDisplay.d(a))
            {
                removeMessages(1);
            }
        }
    }
}
