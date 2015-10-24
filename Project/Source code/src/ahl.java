// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.ContentResolver;
import android.content.Context;
import android.os.Handler;
import android.view.Window;
import java.util.ArrayList;

public class ahl extends ahp
{

    public static int a = 11;
    private static final int m[] = {
        10, 20, 30, 40, 50, 100, 120
    };
    private ContentResolver h;
    private ahm i;
    private ArrayList j;
    private int k;
    private String l;
    private boolean n;
    private int o;

    public ahl(Context context)
    {
        super(context);
        k = 0;
        h = context.getContentResolver();
        j = new ArrayList();
        ArrayList arraylist = j;
        ly.i;
        arraylist.add(context.getString(0x7f0a00df));
        ArrayList arraylist1 = j;
        ly.i;
        arraylist1.add(context.getString(0x7f0a00de));
        ArrayList arraylist2 = j;
        ly.i;
        arraylist2.add(context.getString(0x7f0a00dd));
        ArrayList arraylist3 = j;
        ly.i;
        arraylist3.add(context.getString(0x7f0a00dc));
        ArrayList arraylist4 = j;
        ly.i;
        arraylist4.add(context.getString(0x7f0a00db));
        ArrayList arraylist5 = j;
        ly.i;
        arraylist5.add(context.getString(0x7f0a00da));
        if (azw.d)
        {
            ArrayList arraylist6 = j;
            ly.i;
            arraylist6.add(context.getString(0x7f0a00be));
        }
        f = azw.c;
        if (!f)
        {
            return;
        }
        if (!azf.h) goto _L2; else goto _L1
_L1:
        a = 120;
_L4:
        i = new ahm(this, new Handler());
        return;
_L2:
        if (azf.l)
        {
            a = 75;
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    static ContentResolver a(ahl ahl1)
    {
        return ahl1.h;
    }

    public static void a(Window window)
    {
        android.view.WindowManager.LayoutParams layoutparams = window.getAttributes();
        layoutparams.screenBrightness = -1F;
        window.setAttributes(layoutparams);
    }

    public static void a(Window window, int i1)
    {
        float f1 = (float)f(i1) / 255F;
        android.view.WindowManager.LayoutParams layoutparams = window.getAttributes();
        layoutparams.screenBrightness = f1;
        window.setAttributes(layoutparams);
    }

    static void b(ahl ahl1)
    {
        ahl1.i();
    }

    static int c(ahl ahl1)
    {
        return ahl1.k;
    }

    private static int f(int i1)
    {
        int j1 = m[i1];
        return a + (j1 * (255 - a)) / 100;
    }

    private void g(int i1)
    {
        if (o >= 255)
        {
            k = 5;
        } else
        if (o >= d(50))
        {
            k = 4;
        } else
        if (o >= d(40))
        {
            k = 3;
        } else
        if (o >= d(30))
        {
            k = 2;
        } else
        if (o >= d(20))
        {
            k = 1;
        } else
        {
            k = 0;
        }
        l = (String)j.get(k);
    }

    private void i()
    {
        n = false;
        o = -1;
        if (android.provider.Settings.System.getInt(h, "screen_brightness_mode", 1) == 1)
        {
            n = true;
            k = b;
        }
        if (!n)
        {
            o = android.provider.Settings.System.getInt(h, "screen_brightness", 255);
            g(o);
        }
    }

    public void a(int i1)
    {
        if (!f)
        {
            return;
        }
        int j1 = e(i1);
        if (j1 == 120)
        {
            k = b;
            n = true;
            android.provider.Settings.System.putInt(h, "screen_brightness_mode", 1);
            return;
        } else
        {
            android.provider.Settings.System.putInt(h, "screen_brightness_mode", 0);
            int k1 = a + (j1 * (255 - a)) / 100;
            android.provider.Settings.System.putInt(h, "screen_brightness", k1);
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
            i.a();
            e = ahq;
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
        String s;
        if (!f)
        {
            s = "";
        } else
        {
            i();
            if (n)
            {
                Context context = d;
                com.dianxinos.dxbs.R.string _tmp = ly.i;
                s = context.getString(0x7f0a00be);
                if (azw.d)
                {
                    j.set(b, s);
                    return s;
                }
            } else
            {
                o = android.provider.Settings.System.getInt(h, "screen_brightness", 255);
                g(o);
                return l;
            }
        }
        return s;
    }

    public String b(int i1)
    {
        if (azw.d)
        {
            Context context = d;
            com.dianxinos.dxbs.R.string _tmp = ly.i;
            String s = context.getString(0x7f0a00be);
            j.set(b, s);
        }
        return (String)j.get(c(i1));
    }

    public int c(int i1)
    {
        if (i1 == 10)
        {
            return 0;
        }
        if (i1 == 20)
        {
            return 1;
        }
        if (i1 == 30)
        {
            return 2;
        }
        if (i1 == 40)
        {
            return 3;
        }
        if (i1 == 50)
        {
            return 4;
        }
        if (i1 == 100)
        {
            return 5;
        }
        if (i1 == 120)
        {
            return b;
        } else
        {
            return b;
        }
    }

    public String c()
    {
        Context context = d;
        com.dianxinos.dxbs.R.string _tmp = ly.i;
        return context.getString(0x7f0a00d4);
    }

    public int d(int i1)
    {
        return a + (i1 * (255 - a)) / 100;
    }

    public ArrayList d()
    {
        if (azw.d)
        {
            Context context = d;
            com.dianxinos.dxbs.R.string _tmp = ly.i;
            String s = context.getString(0x7f0a00be);
            j.set(b, s);
        }
        return j;
    }

    public int e()
    {
        return c;
    }

    public int e(int i1)
    {
        return m[i1];
    }

    public int f()
    {
        i();
        if (n)
        {
            k = b;
            return b;
        } else
        {
            return k;
        }
    }

    public int g()
    {
        int i1 = f();
        return m[i1];
    }

    public String toString()
    {
        return "BrightnessCommand ";
    }

}
