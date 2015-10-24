// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Intent;
import com.dianxinos.powermanager.PowerMgrActivity;
import com.dianxinos.powermanager.PowerMgrTabActivity;

public class aaz extends Thread
{

    final PowerMgrActivity a;

    public aaz(PowerMgrActivity powermgractivity)
    {
        a = powermgractivity;
        super();
    }

    public void run()
    {
        long l = 0L;
        while (PowerMgrActivity.a(a) && l < (long)PowerMgrActivity.a()) 
        {
            Intent intent;
            try
            {
                sleep(100L);
            }
            catch (Exception exception) { }
            l += 100L;
        }
        if (!PowerMgrActivity.b(a) && !PowerMgrActivity.c(a))
        {
            PowerMgrActivity.a(a, true);
            intent = new Intent(a, com/dianxinos/powermanager/PowerMgrTabActivity);
            a.startActivityForResult(intent, 1);
            my.a(a).c();
        }
    }
}
