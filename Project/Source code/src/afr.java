// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import java.util.ArrayList;

class afr extends afh
{

    private static afr b;
    private Context c;
    private ArrayList d;
    private int e;

    private afr(Context context)
    {
        d = new ArrayList();
        c = context;
        ArrayList arraylist = d;
        com.dianxinos.dxbs.R.string _tmp = ly.i;
        com.dianxinos.dxbs.R.string _tmp1 = ly.i;
        com.dianxinos.dxbs.R.string _tmp2 = ly.i;
        com.dianxinos.dxbs.R.drawable _tmp3 = ly.e;
        com.dianxinos.dxbs.R.drawable _tmp4 = ly.e;
        arraylist.add(new afg(0x7f0a0179, 0, 0x7f0a01ef, 0x7f0a01f0, 0x7f0203bc, 0x7f0203bb));
        ArrayList arraylist1 = d;
        com.dianxinos.dxbs.R.string _tmp5 = ly.i;
        com.dianxinos.dxbs.R.string _tmp6 = ly.i;
        com.dianxinos.dxbs.R.string _tmp7 = ly.i;
        com.dianxinos.dxbs.R.drawable _tmp8 = ly.e;
        com.dianxinos.dxbs.R.drawable _tmp9 = ly.e;
        arraylist1.add(new afg(0x7f0a017a, 1, 0x7f0a01f1, 0x7f0a01f2, 0x7f0201ba, 0x7f0201b9));
        ArrayList arraylist2 = d;
        com.dianxinos.dxbs.R.string _tmp10 = ly.i;
        com.dianxinos.dxbs.R.string _tmp11 = ly.i;
        com.dianxinos.dxbs.R.string _tmp12 = ly.i;
        com.dianxinos.dxbs.R.drawable _tmp13 = ly.e;
        com.dianxinos.dxbs.R.drawable _tmp14 = ly.e;
        arraylist2.add(new afg(0x7f0a017b, 2, 0x7f0a01f3, 0x7f0a01f4, 0x7f020478, 0x7f020477));
        a = (afg)d.get(0);
    }

    public static afr a(Context context)
    {
        if (b != null) goto _L2; else goto _L1
_L1:
        afr;
        JVM INSTR monitorenter ;
        if (b == null)
        {
            b = new afr(context);
        }
        afr;
        JVM INSTR monitorexit ;
_L2:
        return b;
        Exception exception;
        exception;
        afr;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void a(int i)
    {
        e = i;
    }

    public void a(add add1)
    {
        e = add1.k;
    }

    public ArrayList b()
    {
        return d;
    }

    public int c()
    {
        return e;
    }

    public void d()
    {
    }
}
