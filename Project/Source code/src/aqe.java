// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.os.Message;
import android.view.View;

class aqe
    implements android.view.View.OnClickListener
{

    final Message a;
    final aqd b;

    aqe(aqd aqd, Message message)
    {
        b = aqd;
        a = message;
        super();
    }

    public void onClick(View view)
    {
        Message.obtain(a).sendToTarget();
    }
}
