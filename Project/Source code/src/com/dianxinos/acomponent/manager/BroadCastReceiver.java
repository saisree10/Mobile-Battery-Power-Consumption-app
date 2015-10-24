// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.dianxinos.acomponent.manager;

import android.app.NotificationManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import gu;
import hn;
import hp;
import ij;
import il;
import in;

public class BroadCastReceiver extends BroadcastReceiver
{

    public BroadCastReceiver()
    {
    }

    private void a(Context context)
    {
        (new Thread(new hp(this, context))).start();
    }

    private void a(Context context, String s, String s1)
    {
        if (s1 == null)
        {
            break MISSING_BLOCK_LABEL_46;
        }
        if (s1.equals(il.i(context)))
        {
            if (ij.a)
            {
                in.c("ad=BroadCastReceiver", (new StringBuilder()).append(" from self ,ignore ; ").append(s1).toString());
                return;
            }
            break MISSING_BLOCK_LABEL_66;
        }
        try
        {
            ((NotificationManager)context.getSystemService("notification")).cancelAll();
            return;
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
        }
    }

    public void onReceive(Context context, Intent intent)
    {
        String s = intent.getAction();
        in.b("BroadCastReceiver424 ", (new StringBuilder()).append("got action ").append(s).toString());
        if ("com.dianxinos.acomponent.CANCEL_SP".equals(s))
        {
            a(context, intent.getStringExtra("id"), intent.getStringExtra("from"));
        } else
        if ("com.dianxinos.acomponent.CHECK_".equals(s))
        {
            if (!gu.a(context).a())
            {
                in.b("ad=BroadCastReceiver", " delaytime is time return");
                return;
            }
            int i = hn.c(context).a(context);
            in.b("BroadCastReceiver424 ", (new StringBuilder()).append("res ").append(i).toString());
            if (i > -1)
            {
                a(context);
                return;
            }
        }
    }
}
