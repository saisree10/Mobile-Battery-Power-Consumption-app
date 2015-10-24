// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.widget.TextView;
import com.dianxinos.powermanager.ui.DXSwitchButton;

public class ani
{

    private static int g[] = new int[2];
    public TextView a;
    private Context b;
    private int c;
    private boolean d;
    private String e;
    private boolean f;

    public ani()
    {
        c = -2;
    }

    public ani(Context context, int i, boolean flag, boolean flag1, String s, View view)
    {
        b = context;
        c = i;
        f = flag;
        d();
        d = flag1;
        e = s;
        a = (TextView)view;
        if (f)
        {
            a(flag1);
        }
    }

    private void d()
    {
        Resources resources = b.getResources();
        int ai[] = g;
        com.dianxinos.dxbs.R.color _tmp = ly.c;
        ai[0] = resources.getColor(0x7f090023);
        int ai1[] = g;
        com.dianxinos.dxbs.R.color _tmp1 = ly.c;
        ai1[1] = resources.getColor(0x7f090026);
    }

    public void a(int i)
    {
        c = i;
    }

    public void a(boolean flag)
    {
        if (a != null)
        {
            d = flag;
            if (a instanceof DXSwitchButton)
            {
                ((DXSwitchButton)a).setStatus(d);
                if (!d)
                {
                    c = 0;
                    return;
                } else
                {
                    c = 1;
                    return;
                }
            }
        }
    }

    public boolean a()
    {
        return f;
    }

    public int b()
    {
        return c;
    }

    public void c()
    {
        boolean flag;
        for (flag = true; a == null || !(a instanceof DXSwitchButton);)
        {
            return;
        }

        if (d == flag)
        {
            c = 0;
        } else
        {
            c = ((flag) ? 1 : 0);
        }
        if (d)
        {
            flag = false;
        }
        d = flag;
        ((DXSwitchButton)a).setStatus(d);
    }

}
