// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import java.util.ArrayList;

public abstract class ahp
{

    public static final int b;
    public static final int c;
    protected Context d;
    protected ahq e;
    protected boolean f;
    protected boolean g;

    public ahp(Context context)
    {
        f = false;
        d = context.getApplicationContext();
    }

    public void a(int i)
    {
        boolean flag;
        if (i == 0)
        {
            flag = false;
        } else
        {
            flag = true;
        }
        a(flag);
    }

    public void a(ahq ahq)
    {
    }

    public abstract void a(boolean flag);

    public abstract boolean a();

    public String b()
    {
        a();
        Context context = d;
        int i;
        if (g)
        {
            com.dianxinos.dxbs.R.string _tmp = ly.i;
            i = 0x7f0a0101;
        } else
        {
            com.dianxinos.dxbs.R.string _tmp1 = ly.i;
            i = 0x7f0a0102;
        }
        return context.getString(i);
    }

    public String b(int i)
    {
        return b();
    }

    public int c(int i)
    {
        return i;
    }

    public String c()
    {
        return null;
    }

    public ArrayList d()
    {
        return null;
    }

    public int e()
    {
        return 2;
    }

    public int e(int i)
    {
        return i;
    }

    public int f()
    {
        a();
        return !g ? 0 : 1;
    }

    public int g()
    {
        return f();
    }

    public boolean h()
    {
        return f;
    }

    static 
    {
        int i = 6;
        int j;
        if (azw.d)
        {
            j = i;
        } else
        {
            j = 2;
        }
        b = j;
        if (azw.d)
        {
            i = 7;
        }
        c = i;
    }
}
