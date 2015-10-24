// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import com.dianxinos.powermanager.menu.AppWhiteListActivity;

class alm
    implements Runnable
{

    final all a;

    alm(all all1)
    {
        a = all1;
        super();
    }

    public void run()
    {
        AppWhiteListActivity.b(a.a).a(AppWhiteListActivity.a(a.a));
    }
}
