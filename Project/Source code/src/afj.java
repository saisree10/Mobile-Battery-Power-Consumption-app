// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.content.SharedPreferences;
import android.os.PowerManager;
import android.text.TextUtils;
import java.util.ArrayList;

public class afj
{

    private static afj a;
    private Context b;
    private long c;
    private int d;
    private boolean e;

    private afj(Context context)
    {
        c = -1L;
        d = -1;
        b = context;
    }

    private int a(long l)
    {
        return (int)(Math.abs(l - c) / 60000L);
    }

    private int a(String s)
    {
        return b.getSharedPreferences("charge_stats_report", 0).getInt(s, -1);
    }

    public static afj a(Context context)
    {
        if (a != null) goto _L2; else goto _L1
_L1:
        afj;
        JVM INSTR monitorenter ;
        if (a == null)
        {
            a = new afj(context);
        }
        afj;
        JVM INSTR monitorexit ;
_L2:
        return a;
        Exception exception;
        exception;
        afj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    private String a(String s, int i, int j)
    {
        int k;
        String as[];
        int l;
        ArrayList arraylist;
        int i2;
        int j2;
        k = 0;
        as = (new String[] {
            "none"
        });
        String as3[];
        if (s.contains("|"))
        {
            as = s.split("\\|");
        } else
        {
            as[0] = s;
        }
        l = 0;
_L9:
        if (l >= as.length)
        {
            break MISSING_BLOCK_LABEL_495;
        }
        as3 = as[l].split(",");
        i2 = Integer.valueOf(as3[0]).intValue();
        j2 = Integer.valueOf(as3[1]).intValue();
        if (i <= j2) goto _L2; else goto _L1
_L1:
        if (l != -1 + as.length) goto _L4; else goto _L3
_L3:
        as[l] = (new StringBuilder()).append(as[l]).append("|").append(i).append(",").append(j).toString();
        l = -1;
_L8:
        arraylist = new ArrayList();
        if (l <= -1) goto _L6; else goto _L5
_L5:
        if (l < as.length && l + 1 != as.length) goto _L7; else goto _L6
_L2:
        if (j < i2)
        {
            as[l] = (new StringBuilder()).append(i).append(",").append(j).append("|").append(as[l]).toString();
            l = -1;
        } else
        if (i >= i2 && j <= j2)
        {
            l = -1;
        } else
        {
            as[l] = b(i2, j2, i, j);
        }
          goto _L8
_L4:
        l++;
          goto _L9
_L7:
        String as1[] = as[l].split(",");
        i1 = Integer.valueOf(as1[0]).intValue();
        j1 = Integer.valueOf(as1[1]).intValue();
        String as2[] = as[l + 1].split(",");
        k1 = Integer.valueOf(as2[0]).intValue();
        l1 = Integer.valueOf(as2[1]).intValue();
        if (!a(i1, j1, k1, l1)) goto _L6; else goto _L10
_L10:
        as[l + 1] = b(i1, j1, k1, l1);
        arraylist.add(Integer.valueOf(l));
        l++;
          goto _L5
_L6:
        StringBuffer stringbuffer = new StringBuffer();
        while (k < as.length) 
        {
            int i1;
            int j1;
            int k1;
            int l1;
            if (!arraylist.contains(Integer.valueOf(k)))
            {
                stringbuffer.append((new StringBuilder()).append("|").append(as[k]).toString());
            }
            k++;
        }
        String s1 = stringbuffer.toString();
        if (s1.startsWith("|"))
        {
            s1 = s1.substring(1);
        }
        return s1;
        l = -1;
          goto _L8
    }

    private void a()
    {
        android.content.SharedPreferences.Editor editor = b.getSharedPreferences("charge_stats_report", 0).edit();
        int i = a("sentCount");
        if (i == -1)
        {
            editor.putInt("sentCount", 1);
        } else
        {
            editor.putInt("sentCount", i + 1);
        }
        editor.remove("batteryLevelIntervals");
        gm.a(editor);
    }

    private void a(long l, long l1, add add1, boolean flag)
    {
        if (l1 == -1L)
        {
            c = l;
            d = add1.j;
            e = true;
            return;
        }
        if (add1.j - d <= 0 && !flag) goto _L2; else goto _L1
_L1:
        if (!e) goto _L4; else goto _L3
_L3:
        e = false;
_L6:
        c = l;
_L2:
        d = add1.j;
        return;
_L4:
        String s;
        if (!a(d, add1.j) && !flag)
        {
            continue; /* Loop/switch isn't completed */
        }
        s = (new StringBuilder()).append(d).append("_").append(String.valueOf(add1.j)).toString();
        if (add1.e != 1)
        {
            break; /* Loop/switch isn't completed */
        }
        (new StringBuilder()).append(s).append("_ac").toString();
_L8:
        a(l);
        if (true) goto _L6; else goto _L5
_L5:
        if (add1.e != 2) goto _L8; else goto _L7
_L7:
        (new StringBuilder()).append(s).append("_usb").toString();
          goto _L8
    }

    private boolean a(int i)
    {
        String s = b.getSharedPreferences("charge_stats_report", 0).getString("batteryLevelIntervals", null);
        if (TextUtils.isEmpty(s))
        {
            return false;
        }
        String as[] = {
            "-1,-1"
        };
        String as1[];
        String as2[];
        if (s.contains("|"))
        {
            as = s.split("\\|");
        } else
        {
            as[0] = s;
        }
        as1 = as[0].split(",");
        as2 = as[-1 + as.length].split(",");
        return !s.contains("|") && Integer.valueOf(as1[0]).intValue() <= 10 && Integer.valueOf(as2[1]).intValue() >= i;
    }

    private boolean a(int i, int j)
    {
        android.content.SharedPreferences.Editor editor;
        String s;
        SharedPreferences sharedpreferences = b.getSharedPreferences("charge_stats_report", 0);
        editor = sharedpreferences.edit();
        s = sharedpreferences.getString("batteryLevelIntervals", null);
        if (!TextUtils.isEmpty(s)) goto _L2; else goto _L1
_L1:
        editor.putString("batteryLevelIntervals", (new StringBuilder()).append(i).append(",").append(j).toString());
_L6:
        boolean flag1;
        gm.a(editor);
        flag1 = true;
_L4:
        return flag1;
_L2:
        String s1;
        boolean flag;
        s1 = a(s, i, j);
        flag = s1.equalsIgnoreCase(s);
        flag1 = false;
        if (flag) goto _L4; else goto _L3
_L3:
        editor.putString("batteryLevelIntervals", s1);
        if (true) goto _L6; else goto _L5
_L5:
    }

    private boolean a(int i, int j, int k, int l)
    {
        return k >= i && k <= j || l >= i && l <= j;
    }

    private String b(int i, int j, int k, int l)
    {
        if (i >= k)
        {
            i = k;
        }
        if (j <= l)
        {
            j = l;
        }
        return (new StringBuilder()).append(i).append(",").append(j).toString();
    }

    public void a(long l, add add1)
    {
        if (!((PowerManager)b.getSystemService("power")).isScreenOn() && a("sentCount") < 2)
        {
            long l1 = c;
            if (add1.a == 2)
            {
                a(l, l1, add1, false);
                return;
            }
            if (add1.a == 3 && l1 != -1L)
            {
                a(l, l1, add1, false);
                c = -1L;
                d = -1;
                return;
            }
            if (add1.a == 5)
            {
                a(l, l1, add1, true);
                if (a(add1.j))
                {
                    a();
                }
                c = -1L;
                d = -1;
                return;
            }
        }
    }
}
