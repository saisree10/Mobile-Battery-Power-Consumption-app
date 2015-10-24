// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;

public class ahz extends ahp
{

    private boolean a;
    private BroadcastReceiver h;

    public ahz(Context context)
    {
        super(context);
        h = new aia(this);
        a = false;
        f = false;
    }

    static void a(ahz ahz1, Intent intent)
    {
        ahz1.a(intent);
    }

    private void a(Intent intent)
    {
        boolean flag = true;
        if (intent.getAction().equals("dianxinos.intent.action.ACTION_PREFERRED_NETWORK_STATE"))
        {
            f = flag;
            if (intent.getIntExtra("prefer2G", -1) == 0)
            {
                g = false;
            } else
            if (intent.getIntExtra("prefer2G", -1) == flag)
            {
                g = flag;
            }
            if (e != null && h())
            {
                if (!g)
                {
                    flag = false;
                }
                e.a(this, flag, flag);
            }
        }
    }

    private void b(boolean flag)
    {
        Intent intent = new Intent("dianxinos.intent.action.ACTION_SET_PREFERRED_NETWORK");
        intent.putExtra("prefer2G", flag);
        d.sendBroadcast(intent);
    }

    private void i()
    {
        IntentFilter intentfilter = new IntentFilter();
        intentfilter.addAction("dianxinos.intent.action.ACTION_PREFERRED_NETWORK_STATE");
        Intent intent = d.registerReceiver(h, intentfilter);
        if (intent != null)
        {
            f = true;
            a(intent);
            return;
        } else
        {
            f = false;
            return;
        }
    }

    public void a(ahq ahq1)
    {
        if (!a)
        {
            return;
        } else
        {
            e = ahq1;
            i();
            return;
        }
    }

    public void a(boolean flag)
    {
        if (!a)
        {
            return;
        } else
        {
            b(flag);
            return;
        }
    }

    public boolean a()
    {
        return g;
    }

    public String c()
    {
        Context context = d;
        com.dianxinos.dxbs.R.string _tmp = ly.i;
        return context.getString(0x7f0a00d6);
    }

    public String toString()
    {
        return "Only2GCommand";
    }
}
