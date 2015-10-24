// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import com.dianxinos.powermanager.menu.MoreSettingsActivity;

public class alx
    implements Runnable
{

    final MoreSettingsActivity a;

    public alx(MoreSettingsActivity moresettingsactivity)
    {
        a = moresettingsactivity;
        super();
    }

    public void run()
    {
        MoreSettingsActivity.a(a);
    }
}
