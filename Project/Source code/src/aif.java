// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import java.util.ArrayList;

public class aif extends ahp
{

    private static final int a[] = {
        1, 2, 2
    };
    private ArrayList h;
    private int i;
    private int j;
    private api k;
    private BroadcastReceiver l;

    public aif(Context context)
    {
        super(context);
        j = 0;
        l = new aig(this);
        f = azw.k;
        h = new ArrayList();
        ArrayList arraylist = h;
        Context context1 = d;
        com.dianxinos.dxbs.R.string _tmp = ly.i;
        arraylist.add(context1.getString(0x7f0a00e6));
        ArrayList arraylist1 = h;
        Context context2 = d;
        com.dianxinos.dxbs.R.string _tmp1 = ly.i;
        arraylist1.add(context2.getString(0x7f0a00e5));
        k = api.a(d);
        i();
    }

    static int a(aif aif1)
    {
        return aif1.j;
    }

    static int b(aif aif1)
    {
        return aif1.i;
    }

    private void j()
    {
        if (j == 0)
        {
            g = false;
            return;
        } else
        {
            g = true;
            return;
        }
    }

    public void a(int i1)
    {
        i();
        i1;
        JVM INSTR tableswitch 0 2: default 32
    //                   0 37
    //                   1 80
    //                   2 80;
           goto _L1 _L2 _L3 _L3
_L1:
        j();
        return;
_L2:
        if (i == 2)
        {
            k.a(1);
        } else
        if (i == 4)
        {
            k.a(3);
        }
        j = 0;
        continue; /* Loop/switch isn't completed */
_L3:
        if (i != 1)
        {
            break; /* Loop/switch isn't completed */
        }
        k.a(2);
_L6:
        j = 1;
        if (true) goto _L1; else goto _L4
_L4:
        if (i != 3) goto _L6; else goto _L5
_L5:
        k.a(4);
          goto _L6
    }

    public void a(ahq ahq)
    {
        e = ahq;
        IntentFilter intentfilter = new IntentFilter();
        intentfilter.addAction("android.media.VIBRATE_SETTING_CHANGED");
        intentfilter.addAction("android.media.RINGER_MODE_CHANGED");
        d.registerReceiver(l, intentfilter);
    }

    public void a(boolean flag)
    {
        if (g)
        {
            a(0);
            return;
        } else
        {
            a(1);
            return;
        }
    }

    public boolean a()
    {
        return g;
    }

    public String b()
    {
        if (!f)
        {
            return "";
        } else
        {
            d();
            return (String)h.get(f());
        }
    }

    public String b(int i1)
    {
        d();
        return (String)h.get(c(i1));
    }

    public int c(int i1)
    {
        while (i1 == 3 || i1 == 2) 
        {
            return 1;
        }
        return 0;
    }

    public String c()
    {
        Context context = d;
        com.dianxinos.dxbs.R.string _tmp = ly.i;
        return context.getString(0x7f0a00c8);
    }

    public ArrayList d()
    {
        ArrayList arraylist = h;
        Context context = d;
        com.dianxinos.dxbs.R.string _tmp = ly.i;
        arraylist.set(0, context.getString(0x7f0a00e6));
        ArrayList arraylist1 = h;
        Context context1 = d;
        com.dianxinos.dxbs.R.string _tmp1 = ly.i;
        arraylist1.set(1, context1.getString(0x7f0a00e5));
        return h;
    }

    public int e()
    {
        return 2;
    }

    public int e(int i1)
    {
        return a[i1];
    }

    public int f()
    {
        i();
        return j;
    }

    public int g()
    {
        return e(f());
    }

    public void i()
    {
        int i1 = k.b();
        if (i1 != 1) goto _L2; else goto _L1
_L1:
        i = 1;
        j = 0;
_L4:
        j();
        return;
_L2:
        if (i1 == 2)
        {
            i = 2;
            j = 1;
        } else
        if (i1 == 3)
        {
            i = 3;
            j = 0;
        } else
        if (i1 == 4)
        {
            i = 4;
            j = 1;
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public String toString()
    {
        return "VibrateCommand";
    }

}
