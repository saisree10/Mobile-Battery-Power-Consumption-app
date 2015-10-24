// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

public class arp extends BroadcastReceiver
{

    private static int a = 0x4e200;

    public arp()
    {
    }

    static int a()
    {
        return a;
    }

    static int a(int i)
    {
        a = i;
        return i;
    }

    public void onReceive(Context context, Intent intent)
    {
        String s = intent.getAction();
        if (arr.a(context).r() != 1)
        {
            return;
        } else
        {
            azi.a().a(new arq(this, context, s));
            return;
        }
    }

}
