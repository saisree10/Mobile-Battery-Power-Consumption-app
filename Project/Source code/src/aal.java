// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.dianxinos.powermanager.ConnectivityChangedReceiver;

public class aal
    implements Runnable
{

    final Context a;
    final Intent b;
    final ConnectivityChangedReceiver c;

    public aal(ConnectivityChangedReceiver connectivitychangedreceiver, Context context, Intent intent)
    {
        c = connectivitychangedreceiver;
        a = context;
        b = intent;
        super();
    }

    public void run()
    {
        if (azr.a(a).h())
        {
            pa.b(a, b);
        }
        ConnectivityManager connectivitymanager = (ConnectivityManager)a.getSystemService("connectivity");
        NetworkInfo networkinfo = connectivitymanager.getNetworkInfo(1);
        boolean flag;
        if (networkinfo == null)
        {
            flag = false;
        } else
        {
            flag = networkinfo.isConnected();
        }
        if (flag)
        {
            aob.a().b();
            aoj.b().d();
            aoj.b().f();
        } else
        {
            NetworkInfo networkinfo1 = connectivitymanager.getActiveNetworkInfo();
            boolean flag1;
            if (networkinfo1 == null)
            {
                flag1 = false;
            } else
            {
                flag1 = networkinfo1.isConnected();
            }
            if (flag1)
            {
                aob.a().b();
                aoj.b().d();
                return;
            }
        }
    }
}
