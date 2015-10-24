// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;

final class apc
    implements Runnable
{

    final int a;
    final boolean b;
    final Context c;

    apc(int i, boolean flag, Context context)
    {
        a = i;
        b = flag;
        c = context;
        super();
    }

    public void run()
    {
        boolean flag = true;
        bag bag1 = bag.a();
        StringBuilder stringbuilder = (new StringBuilder()).append("settings put global airplane_mode_on ").append(a).append(" && am broadcast -a android.intent.action.AIRPLANE_MODE --ez state ");
        boolean flag1;
        if (!b)
        {
            flag1 = flag;
        } else
        {
            flag1 = false;
        }
        if (!bag1.a(stringbuilder.append(flag1).toString()))
        {
            apb.a(c);
            return;
        }
        Context context = c;
        Context context1;
        if (b)
        {
            flag = false;
        }
        context1 = c;
        com.dianxinos.dxbs.R.string _tmp = ly.i;
        apf.a(context, flag, context1.getString(0x7f0a019e));
    }
}
