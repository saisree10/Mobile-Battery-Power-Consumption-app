// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.os.Handler;
import android.os.Message;
import android.widget.Scroller;

class avp extends Handler
{

    final avo a;

    avp(avo avo1)
    {
        a = avo1;
        super();
    }

    public void handleMessage(Message message)
    {
        avo.a(a).computeScrollOffset();
        int i = avo.a(a).getCurrY();
        int j = avo.b(a) - i;
        avo.a(a, i);
        if (j != 0)
        {
            avo.c(a).a(j);
        }
        if (Math.abs(i - avo.a(a).getFinalY()) < 1)
        {
            avo.a(a).getFinalY();
            avo.a(a).forceFinished(true);
        }
        if (!avo.a(a).isFinished())
        {
            avo.d(a).sendEmptyMessage(message.what);
            return;
        }
        if (message.what == 0)
        {
            avo.e(a);
            return;
        } else
        {
            a.b();
            return;
        }
    }
}
