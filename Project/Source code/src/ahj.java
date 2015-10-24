// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.bluetooth.BluetoothAdapter;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;

public class ahj extends ahp
{

    private BluetoothAdapter a;
    private int h;
    private BroadcastReceiver i;

    public ahj(Context context)
    {
        super(context);
        i = new ahk(this);
        a = BluetoothAdapter.getDefaultAdapter();
        boolean flag;
        if (a != null && azw.b)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        f = flag;
    }

    static int a(ahj ahj1)
    {
        return ahj1.h;
    }

    public void a(ahq ahq)
    {
        if (!f)
        {
            return;
        } else
        {
            e = ahq;
            IntentFilter intentfilter = new IntentFilter();
            intentfilter.addAction("android.bluetooth.adapter.action.STATE_CHANGED");
            d.registerReceiver(i, intentfilter);
            return;
        }
    }

    public void a(boolean flag)
    {
        if (!f)
        {
            return;
        }
        if (flag)
        {
            a.enable();
            return;
        } else
        {
            a.disable();
            return;
        }
    }

    public boolean a()
    {
        if (!f)
        {
            return false;
        }
        h = a.getState();
        if (h == 11 || h == 12)
        {
            g = true;
        } else
        {
            g = false;
        }
        return g;
    }

    public String c()
    {
        Context context = d;
        com.dianxinos.dxbs.R.string _tmp = ly.i;
        return context.getString(0x7f0a00c6);
    }

    public String toString()
    {
        return "BluetoothCommand ";
    }
}
