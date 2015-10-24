// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.ContentResolver;
import android.content.Context;
import android.os.Handler;
import java.util.ArrayList;

public class aid extends ahp
{

    private ContentResolver a;
    private aie h;
    private int i;
    private int j;
    private ArrayList k;
    private ahq l;

    public aid(Context context)
    {
        super(context);
        k = new ArrayList();
        a = context.getContentResolver();
        i = android.provider.Settings.System.getInt(a, "screen_off_timeout", 30000);
        f = azw.j;
        if (!f)
        {
            return;
        } else
        {
            h = new aie(this, new Handler());
            return;
        }
    }

    static ContentResolver a(aid aid1)
    {
        return aid1.a;
    }

    static ahq b(aid aid1)
    {
        return aid1.l;
    }

    static int c(aid aid1)
    {
        return aid1.j;
    }

    private String d(int i1)
    {
        d();
        if (i1 == 15000)
        {
            j = 0;
        } else
        if (i1 == 30000)
        {
            j = 1;
        } else
        if (i1 == 60000)
        {
            j = 2;
        } else
        if (i1 == 0x1d4c0)
        {
            j = 3;
        } else
        if (i1 == 0x927c0)
        {
            j = 4;
        } else
        if (i1 >= 0x1b7740)
        {
            j = 5;
        } else
        {
            j = 4;
        }
        return (String)k.get(j);
    }

    private int f(int i1)
    {
        char c1 = '\u7530';
        if (i1 == 0)
        {
            c1 = '\u3A98';
        } else
        if (i1 != 1)
        {
            if (i1 == 2)
            {
                return 60000;
            }
            if (i1 == 3)
            {
                return 0x1d4c0;
            }
            if (i1 == 4)
            {
                return 0x927c0;
            }
            if (i1 == 5)
            {
                return 0x1b7740;
            }
        }
        return c1;
    }

    public void a(int i1)
    {
        int j1 = f(i1);
        try
        {
            android.provider.Settings.System.putInt(a, "screen_off_timeout", j1);
            return;
        }
        catch (NumberFormatException numberformatexception)
        {
            return;
        }
    }

    public void a(ahq ahq)
    {
        if (!f)
        {
            return;
        } else
        {
            h.a();
            l = ahq;
            return;
        }
    }

    public void a(boolean flag)
    {
    }

    public boolean a()
    {
        return false;
    }

    public String b()
    {
        i = android.provider.Settings.System.getInt(a, "screen_off_timeout", 30000);
        return d(i);
    }

    public String b(int i1)
    {
        d();
        return (String)k.get(c(i1));
    }

    public int c(int i1)
    {
        int j1 = 1;
        if (i1 == 15)
        {
            j1 = 0;
        } else
        if (i1 != 30)
        {
            if (i1 == 60)
            {
                return 2;
            }
            if (i1 == 120)
            {
                return 3;
            }
            if (i1 == 600)
            {
                return 4;
            }
            if (i1 == 1800)
            {
                return 5;
            }
        }
        return j1;
    }

    public String c()
    {
        Context context = d;
        com.dianxinos.dxbs.R.string _tmp = ly.i;
        return context.getString(0x7f0a00d5);
    }

    public ArrayList d()
    {
        k.clear();
        ArrayList arraylist = k;
        Context context = d;
        com.dianxinos.dxbs.R.string _tmp = ly.i;
        arraylist.add(context.getString(0x7f0a00e0));
        ArrayList arraylist1 = k;
        Context context1 = d;
        com.dianxinos.dxbs.R.string _tmp1 = ly.i;
        arraylist1.add(context1.getString(0x7f0a00e1));
        ArrayList arraylist2 = k;
        Context context2 = d;
        com.dianxinos.dxbs.R.string _tmp2 = ly.i;
        arraylist2.add(context2.getString(0x7f0a00e2));
        ArrayList arraylist3 = k;
        Context context3 = d;
        com.dianxinos.dxbs.R.string _tmp3 = ly.i;
        arraylist3.add(context3.getString(0x7f0a00e3));
        ArrayList arraylist4 = k;
        Context context4 = d;
        com.dianxinos.dxbs.R.string _tmp4 = ly.i;
        arraylist4.add(context4.getString(0x7f0a00e4));
        ArrayList arraylist5 = k;
        Context context5 = d;
        com.dianxinos.dxbs.R.string _tmp5 = ly.i;
        arraylist5.add(context5.getString(0x7f0a0220));
        return k;
    }

    public int e()
    {
        return 6;
    }

    public int e(int i1)
    {
        byte byte0 = 30;
        if (i1 == 0)
        {
            byte0 = 15;
        } else
        if (i1 != 1)
        {
            if (i1 == 2)
            {
                return 60;
            }
            if (i1 == 3)
            {
                return 120;
            }
            if (i1 == 4)
            {
                return 600;
            }
            if (i1 == 5)
            {
                return 1800;
            }
        }
        return byte0;
    }

    public int f()
    {
        i = android.provider.Settings.System.getInt(a, "screen_off_timeout", 30000);
        if (i == 15000)
        {
            j = 0;
        } else
        if (i == 30000)
        {
            j = 1;
        } else
        if (i == 60000)
        {
            j = 2;
        } else
        if (i == 0x1d4c0)
        {
            j = 3;
        } else
        if (i == 0x927c0)
        {
            j = 4;
        } else
        if (i == 0x1b7740)
        {
            j = 5;
        } else
        {
            j = 4;
        }
        return j;
    }

    public int g()
    {
        i = android.provider.Settings.System.getInt(a, "screen_off_timeout", 30000);
        return i / 1000;
    }

    public String toString()
    {
        return "ScreenTimeOutCommand";
    }
}
