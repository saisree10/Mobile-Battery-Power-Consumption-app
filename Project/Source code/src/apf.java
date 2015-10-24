// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.widget.Toast;
import com.dianxinos.powermanager.PowerMangerApplication;

public class apf
{

    public static void a(Context context, int i)
    {
        if (i == 5)
        {
            com.dianxinos.dxbs.R.string _tmp = ly.i;
            Object aobj3[] = new Object[1];
            com.dianxinos.dxbs.R.string _tmp1 = ly.i;
            aobj3[0] = context.getString(0x7f0a00da);
            Toast.makeText(context, context.getString(0x7f0a01a6, aobj3), 0).show();
        } else
        {
            if (i == ahl.b)
            {
                com.dianxinos.dxbs.R.string _tmp2 = ly.i;
                Object aobj2[] = new Object[1];
                com.dianxinos.dxbs.R.string _tmp3 = ly.i;
                aobj2[0] = context.getString(0x7f0a00be);
                Toast.makeText(context, context.getString(0x7f0a01a6, aobj2), 0).show();
                return;
            }
            if (i == 0)
            {
                com.dianxinos.dxbs.R.string _tmp4 = ly.i;
                Object aobj1[] = new Object[1];
                com.dianxinos.dxbs.R.string _tmp5 = ly.i;
                aobj1[0] = context.getString(0x7f0a00df);
                Toast.makeText(context, context.getString(0x7f0a01a6, aobj1), 0).show();
                return;
            }
            if (i == 4)
            {
                com.dianxinos.dxbs.R.string _tmp6 = ly.i;
                Object aobj[] = new Object[1];
                com.dianxinos.dxbs.R.string _tmp7 = ly.i;
                aobj[0] = context.getString(0x7f0a00db);
                Toast.makeText(context, context.getString(0x7f0a01a6, aobj), 0).show();
                return;
            }
        }
    }

    public static void a(Context context, boolean flag, String s)
    {
        if (flag)
        {
            com.dianxinos.dxbs.R.string _tmp = ly.i;
            PowerMangerApplication.a(context.getString(0x7f0a01a2, new Object[] {
                s
            }), 0);
            return;
        } else
        {
            com.dianxinos.dxbs.R.string _tmp1 = ly.i;
            PowerMangerApplication.a(context.getString(0x7f0a01a3, new Object[] {
                s
            }), 0);
            return;
        }
    }

    public static void b(Context context, int i)
    {
        if (i == 0)
        {
            StringBuilder stringbuilder = new StringBuilder();
            com.dianxinos.dxbs.R.string _tmp = ly.i;
            StringBuilder stringbuilder1 = stringbuilder.append(context.getString(0x7f0a00bb));
            com.dianxinos.dxbs.R.string _tmp1 = ly.i;
            Toast.makeText(context, stringbuilder1.append(context.getString(0x7f0a00e0)).toString(), 0).show();
        } else
        {
            if (i == 1)
            {
                StringBuilder stringbuilder2 = new StringBuilder();
                com.dianxinos.dxbs.R.string _tmp2 = ly.i;
                StringBuilder stringbuilder3 = stringbuilder2.append(context.getString(0x7f0a00bb));
                com.dianxinos.dxbs.R.string _tmp3 = ly.i;
                Toast.makeText(context, stringbuilder3.append(context.getString(0x7f0a00e1)).toString(), 0).show();
                return;
            }
            if (i == 2)
            {
                StringBuilder stringbuilder4 = new StringBuilder();
                com.dianxinos.dxbs.R.string _tmp4 = ly.i;
                StringBuilder stringbuilder5 = stringbuilder4.append(context.getString(0x7f0a00bb));
                com.dianxinos.dxbs.R.string _tmp5 = ly.i;
                Toast.makeText(context, stringbuilder5.append(context.getString(0x7f0a00e2)).toString(), 0).show();
                return;
            }
            if (i == 3)
            {
                StringBuilder stringbuilder6 = new StringBuilder();
                com.dianxinos.dxbs.R.string _tmp6 = ly.i;
                StringBuilder stringbuilder7 = stringbuilder6.append(context.getString(0x7f0a00bb));
                com.dianxinos.dxbs.R.string _tmp7 = ly.i;
                Toast.makeText(context, stringbuilder7.append(context.getString(0x7f0a00e3)).toString(), 0).show();
                return;
            }
            if (i == 4)
            {
                StringBuilder stringbuilder8 = new StringBuilder();
                com.dianxinos.dxbs.R.string _tmp8 = ly.i;
                StringBuilder stringbuilder9 = stringbuilder8.append(context.getString(0x7f0a00bb));
                com.dianxinos.dxbs.R.string _tmp9 = ly.i;
                Toast.makeText(context, stringbuilder9.append(context.getString(0x7f0a00e4)).toString(), 0).show();
                return;
            }
            if (i == 5)
            {
                StringBuilder stringbuilder10 = new StringBuilder();
                com.dianxinos.dxbs.R.string _tmp10 = ly.i;
                StringBuilder stringbuilder11 = stringbuilder10.append(context.getString(0x7f0a00bb));
                com.dianxinos.dxbs.R.string _tmp11 = ly.i;
                Toast.makeText(context, stringbuilder11.append(context.getString(0x7f0a0220)).toString(), 0).show();
                return;
            }
        }
    }
}
