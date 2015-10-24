// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import com.dianxinos.powermanager.menu.AppListActivity;

class ald
    implements Runnable
{

    final alc a;

    ald(alc alc1)
    {
        a = alc1;
        super();
    }

    public void run()
    {
        AppListActivity.b(a.a).a(AppListActivity.a(a.a));
    }
}
