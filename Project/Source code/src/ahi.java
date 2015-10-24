// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.net.ConnectivityManager;

public class ahi extends ahp
{

    private ConnectivityManager a;

    public ahi(Context context)
    {
        super(context);
        f = false;
        a = (ConnectivityManager)context.getSystemService("connectivity");
    }

    public void a(boolean flag)
    {
        if (!f)
        {
            return;
        } else
        {
            azv.a(a, flag);
            return;
        }
    }

    public boolean a()
    {
        g = a.getBackgroundDataSetting();
        return g;
    }

    public String c()
    {
        Context context = d;
        com.dianxinos.dxbs.R.string _tmp = ly.i;
        return context.getString(0x7f0a00c1);
    }

    public String toString()
    {
        return "BkDataCommand ";
    }
}
