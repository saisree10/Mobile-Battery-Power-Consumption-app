// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;

public class ahd extends ahp
{

    private ContentResolver a;
    private ahe h;
    private boolean i;

    public ahd(Context context)
    {
        super(context);
        bag.a();
        i = bag.a(context);
        boolean flag;
        if (azw.i && azf.b(context) && !azf.n())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        f = flag;
        a = context.getContentResolver();
        h = new ahe(this, new Handler());
    }

    static ContentResolver a(ahd ahd1)
    {
        return ahd1.a;
    }

    public void a(ahq ahq)
    {
        h.a();
        e = ahq;
    }

    public void a(boolean flag)
    {
        if (!f)
        {
            return;
        }
        ContentResolver contentresolver = a;
        int j;
        Intent intent;
        if (flag)
        {
            j = 1;
        } else
        {
            j = 0;
        }
        android.provider.Settings.System.putInt(contentresolver, "airplane_mode_on", j);
        intent = new Intent("android.intent.action.AIRPLANE_MODE");
        intent.addFlags(0x20000000);
        intent.putExtra("state", flag);
        d.sendBroadcast(intent);
    }

    public boolean a()
    {
        boolean flag = true;
        if (android.provider.Settings.System.getInt(a, "airplane_mode_on", 0) != flag)
        {
            flag = false;
        }
        g = flag;
        return g;
    }

    public String b()
    {
        a();
        Context context = d;
        int j;
        if (g)
        {
            com.dianxinos.dxbs.R.string _tmp = ly.i;
            j = 0x7f0a0102;
        } else
        {
            com.dianxinos.dxbs.R.string _tmp1 = ly.i;
            j = 0x7f0a0101;
        }
        return context.getString(j);
    }

    public String toString()
    {
        return "AirplaneCommand ";
    }
}
