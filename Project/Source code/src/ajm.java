// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.net.ConnectivityManager;
import android.os.Handler;
import android.view.View;
import android.widget.LinearLayout;

public class ajm extends ajk
{

    private ConnectivityManager a;
    private ahv p;

    public ajm(Context context, Handler handler, LinearLayout linearlayout)
    {
        super(context, handler, linearlayout);
        j = 2;
        p = new ahv(context);
    }

    public void a()
    {
        boolean flag;
        if (azw.h && azf.b(c) && azf.d())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        o = flag;
        if (!o)
        {
            l = 1;
            n = false;
            k = j;
            return;
        }
        a = (ConnectivityManager)c.getSystemService("connectivity");
        if (gj.a(a))
        {
            l = 3;
            k = 0;
            Context context1 = c;
            com.dianxinos.dxbs.R.string _tmp = ly.i;
            m = context1.getString(0x7f0a0324);
            return;
        } else
        {
            l = 1;
            Context context = c;
            com.dianxinos.dxbs.R.string _tmp1 = ly.i;
            m = context.getString(0x7f0a0325);
            k = j;
            return;
        }
    }

    public void b()
    {
        if (a != null)
        {
            if (l == 3)
            {
                l = 4;
                p.a(false);
                Context context1 = c;
                com.dianxinos.dxbs.R.string _tmp = ly.i;
                m = context1.getString(0x7f0a0325);
                k = j;
            } else
            if (l == 4)
            {
                l = 3;
                p.a(true);
                Context context = c;
                com.dianxinos.dxbs.R.string _tmp1 = ly.i;
                m = context.getString(0x7f0a0324);
                k = 0;
                return;
            }
        }
    }

    public String c()
    {
        Context context = c;
        com.dianxinos.dxbs.R.string _tmp = ly.i;
        return context.getString(0x7f0a0323);
    }

    public String d()
    {
        if (l == 4)
        {
            Context context1 = c;
            com.dianxinos.dxbs.R.string _tmp = ly.i;
            return context1.getString(0x7f0a0349);
        } else
        {
            Context context = c;
            com.dianxinos.dxbs.R.string _tmp1 = ly.i;
            return context.getString(0x7f0a0345);
        }
    }

    public void onClick(View view)
    {
        e();
    }
}
