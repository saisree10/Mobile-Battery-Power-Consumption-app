// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.os.Message;

public class ako extends Handler
{

    private Context a;
    private akx b;
    private aku c;

    public ako(Context context)
    {
        a = context;
        b = akx.a(context);
        c = new aku();
    }

    private void a(int i)
    {
        if (a instanceof Activity)
        {
            c.a((Activity)a, i);
        }
    }

    public void a()
    {
        c.a();
    }

    public void handleMessage(Message message)
    {
        switch (message.what)
        {
        default:
            return;

        case 1: // '\001'
            a();
            b.a();
            return;

        case 2: // '\002'
            a();
            b.a();
            return;

        case 3: // '\003'
            a();
            a(1);
            return;

        case 4: // '\004'
            a();
            break;
        }
        a(2);
    }
}
