// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.widget.Toast;

class ajc extends Handler
{

    final aiy a;

    ajc(aiy aiy1)
    {
        a = aiy1;
        super();
    }

    public void handleMessage(Message message)
    {
        if (message.what == aiy.j())
        {
            a.e();
        } else
        {
            if (message.what == aiy.h())
            {
                Context context2 = a.c;
                Context context3 = a.c;
                com.dianxinos.dxbs.R.string _tmp = ly.i;
                Toast.makeText(context2, context3.getString(0x7f0a0191), 0).show();
                return;
            }
            if (message.what == aiy.i())
            {
                Context context = a.c;
                Context context1 = a.c;
                com.dianxinos.dxbs.R.string _tmp1 = ly.i;
                Toast.makeText(context, context1.getString(0x7f0a0194), 0).show();
                return;
            }
        }
    }
}
