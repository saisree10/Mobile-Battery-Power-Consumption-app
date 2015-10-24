// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.content.SharedPreferences;
import java.util.ArrayList;

public class amx
{

    private static String a = "ModePrefs";
    private static boolean b = false;
    private SharedPreferences c;
    private Context d;

    public amx(Context context)
    {
        d = context;
        c = d.getSharedPreferences("mode_settings", 0);
    }

    private void a(android.content.SharedPreferences.Editor editor, int i)
    {
        editor.remove((new StringBuilder()).append("mode").append(i).append("-name").toString());
    }

    private void a(android.content.SharedPreferences.Editor editor, int i, int j)
    {
        editor.remove(d(i, j));
    }

    private void a(android.content.SharedPreferences.Editor editor, int i, int j, int k)
    {
        editor.putInt(d(i, j), k);
    }

    private void a(android.content.SharedPreferences.Editor editor, int i, String s)
    {
        editor.putString((new StringBuilder()).append("mode").append(i).append("-name").toString(), s);
    }

    private String d(int i, int j)
    {
        String s = "";
        if (j == 0)
        {
            s = (new StringBuilder()).append("mode").append(i).append("-brightness").toString();
        } else
        {
            if (j == 1)
            {
                return (new StringBuilder()).append("mode").append(i).append("-screen_timeout").toString();
            }
            if (j == 2)
            {
                return (new StringBuilder()).append("mode").append(i).append("-wifi").toString();
            }
            if (j == 3)
            {
                return (new StringBuilder()).append("mode").append(i).append("-bluetooth").toString();
            }
            if (j == 4)
            {
                return (new StringBuilder()).append("mode").append(i).append("-mobile_data").toString();
            }
            if (j == 10)
            {
                return (new StringBuilder()).append("mode").append(i).append("-bk_data").toString();
            }
            if (j == 5)
            {
                return (new StringBuilder()).append("mode").append(i).append("-auto_sync").toString();
            }
            if (j == 6)
            {
                return (new StringBuilder()).append("mode").append(i).append("-virbate").toString();
            }
            if (j == 7)
            {
                return (new StringBuilder()).append("mode").append(i).append("-haptic_feedback").toString();
            }
            if (j == 8)
            {
                return (new StringBuilder()).append("mode").append(i).append("-auto_clean").toString();
            }
            if (j == 9)
            {
                return (new StringBuilder()).append("mode").append(i).append("-gps").toString();
            }
            if (j == 11)
            {
                return (new StringBuilder()).append("mode").append(i).append("-only2g").toString();
            }
            if (j == 12)
            {
                return (new StringBuilder()).append("mode").append(i).append("-rotation").toString();
            }
        }
        return s;
    }

    private void f(int i)
    {
        if (c.getInt("Version", 0) >= i)
        {
            return;
        } else
        {
            android.content.SharedPreferences.Editor editor = c.edit();
            editor.putInt("Version", i);
            gm.a(editor);
            return;
        }
    }

    private int g(int i)
    {
        byte byte0 = 120;
        if (i == 0)
        {
            byte0 = 10;
        } else
        {
            if (i == 1)
            {
                return 30;
            }
            if (i == 2)
            {
                return 50;
            }
            if (i == 3)
            {
                return 100;
            }
            if (i == 4)
            {
                return byte0;
            }
        }
        return byte0;
    }

    private int h(int i)
    {
        byte byte0 = 30;
        if (i == 0)
        {
            byte0 = 15;
        } else
        if (i != 1)
        {
            if (i == 2)
            {
                return 60;
            }
            if (i == 3)
            {
                return 120;
            }
            if (i == 4)
            {
                return 600;
            }
        }
        return byte0;
    }

    public int a()
    {
        return c.getInt("ModeCounts", 3);
    }

    public int a(int i)
    {
        return c.getInt("ModeSelected", i);
    }

    public void a(int i, int j)
    {
        int k = 0;
        int l = 3 + (i - 3);
        android.content.SharedPreferences.Editor editor = c.edit();
        int i1 = 3 + (j - 3);
        for (int j1 = l + 1; j1 <= i1; j1++)
        {
            String s = (new StringBuilder()).append("mode_id").append(j1).toString();
            int i2 = c.getInt(s, 0);
            int j2 = j1 - 1;
            editor.putInt((new StringBuilder()).append("mode_id").append(j2).toString(), i2);
        }

        editor.remove((new StringBuilder()).append("mode_id").append(i1).toString());
        int k1 = c.getInt((new StringBuilder()).append("mode_id").append(l).toString(), 0);
        for (int l1 = c.getInt("setting_num", 0); k < l1; k++)
        {
            a(editor, k1, k);
        }

        a(editor, k1);
        editor.putInt("ModeCounts", j);
        gm.a(editor);
    }

    public void a(int i, String s, ArrayList arraylist, boolean flag, boolean flag1)
    {
        int j = 3 + (i - 3);
        android.content.SharedPreferences.Editor editor = c.edit();
        String s1 = (new StringBuilder()).append("mode_id").append(j).toString();
        int k = c.getInt("ModeCounter", 3);
        int l;
        int i1;
        int j1;
        if (flag)
        {
            int l1 = c.getInt("ModeCounts", 3);
            editor.putInt(s1, k);
            editor.putInt("ModeCounter", k + 1);
            editor.putInt("ModeCounts", l1 + 1);
            l = k;
        } else
        {
            l = c.getInt(s1, 3);
        }
        i1 = arraylist.size();
        j1 = 0;
        while (j1 < i1) 
        {
            int k1 = ((Integer)arraylist.get(j1)).intValue();
            if (b)
            {
                azt.a(a, (new StringBuilder()).append("share prrferences index : ").append(j1).append(" index value:").append(k1).toString());
            }
            if (flag1)
            {
                a(editor, l, j1, k1);
            } else
            {
                a(editor, l, amg.a(j1), k1);
            }
            j1++;
        }
        a(editor, l, s);
        editor.putInt("setting_num", i1);
        gm.a(editor);
    }

    public void a(boolean flag)
    {
        android.content.SharedPreferences.Editor editor = c.edit();
        editor.putBoolean("hasmymode", flag);
        gm.a(editor);
    }

    public int b()
    {
        return c.getInt("ModeSelected", amq.d(1));
    }

    public int b(int i, int j)
    {
        int k = 3 + (i - 3);
        String s = (new StringBuilder()).append("mode_id").append(k).toString();
        String s1 = d(c.getInt(s, 0), j);
        return c.getInt(s1, 0);
    }

    public void b(int i)
    {
        android.content.SharedPreferences.Editor editor = c.edit();
        editor.putInt("ModeSelected", i);
        gm.a(editor);
    }

    public void b(boolean flag)
    {
        android.content.SharedPreferences.Editor editor = c.edit();
        editor.putBoolean("has_mymode_name", flag);
        gm.a(editor);
    }

    public int c()
    {
        return c.getInt("ModeCounter", 3);
    }

    public String c(int i)
    {
        int j = 3 + (i - 3);
        String s = (new StringBuilder()).append("mode_id").append(j).toString();
        int k = c.getInt(s, 0);
        if (k == 3 && e())
        {
            Context context = d;
            com.dianxinos.dxbs.R.string _tmp = ly.i;
            return context.getString(0x7f0a00b0);
        } else
        {
            return c.getString((new StringBuilder()).append("mode").append(k).append("-name").toString(), "");
        }
    }

    public boolean c(int i, int j)
    {
        SharedPreferences sharedpreferences = d.getSharedPreferences("ModeSetting", 0);
        if (sharedpreferences.getInt("ItemCounts", 3) <= 3)
        {
            f(1);
            return false;
        }
        int k = sharedpreferences.getInt("ItemCounts", 3);
        int l = sharedpreferences.getInt("Selected", 1);
        android.content.SharedPreferences.Editor editor = d.getSharedPreferences("mode_settings", 0).edit();
        editor.putInt("ModeCounts", k);
        editor.putInt("ModeSelected", l);
        editor.putInt("ModeCounter", k);
        editor.putInt("setting_num", j);
        editor.putInt("Version", 1);
        for (int i1 = 3; i1 < k; i1++)
        {
            String s = sharedpreferences.getString((new StringBuilder()).append("item").append(i1).toString(), "");
            editor.putInt((new StringBuilder()).append("mode_id").append(i1).toString(), i1);
            a(editor, i1, s);
            int j1 = 0;
            while (j1 < i) 
            {
                int k1 = sharedpreferences.getInt((new StringBuilder()).append("item").append(i1).append("-").append(j1).toString(), 0);
                if (azf.d())
                {
                    a(editor, i1, j1, k1);
                } else
                if (j1 < 4)
                {
                    a(editor, i1, j1, k1);
                } else
                {
                    a(editor, i1, j1 + 1, k1);
                }
                j1++;
            }
        }

        android.content.SharedPreferences.Editor editor1 = sharedpreferences.edit();
        editor1.clear();
        gm.a(editor1);
        gm.a(editor);
        return true;
    }

    public int d(int i)
    {
        int j = 3;
        if (i >= j) goto _L2; else goto _L1
_L1:
        j = amq.d(i);
_L4:
        return j;
_L2:
        int k = c.getInt("ModeCounts", j);
        do
        {
            if (j >= k)
            {
                break;
            }
            int l = 3 + (j - 3);
            String s = (new StringBuilder()).append("mode_id").append(l).toString();
            if (i == c.getInt(s, -1))
            {
                if (b)
                {
                    azt.a(a, (new StringBuilder()).append("getModeIndexById(").append(i).append(") = ").append(j).toString());
                    return j;
                }
                continue; /* Loop/switch isn't completed */
            }
            j++;
        } while (true);
        return -1;
        if (true) goto _L4; else goto _L3
_L3:
    }

    public boolean d()
    {
        return c.getBoolean("hasmymode", false);
    }

    public int e(int i)
    {
        int k;
        if (i >= 0 && i < 3)
        {
            k = amq.a(i);
        } else
        {
            int j = 3 + (i - 3);
            String s = (new StringBuilder()).append("mode_id").append(j).toString();
            k = c.getInt(s, -1);
            if (b)
            {
                azt.a(a, (new StringBuilder()).append("getModeIdByIndex(").append(j).append(") = ").append(k).toString());
                return k;
            }
        }
        return k;
    }

    public boolean e()
    {
        return c.getBoolean("has_mymode_name", false);
    }

    public boolean f()
    {
        int i = 3;
        int j = c.getInt("Version", 0);
        if (b)
        {
            azt.a(a, (new StringBuilder()).append("version:").append(j).toString());
        }
        if (j == 1)
        {
            int k = c.getInt("ModeCounts", i);
            azt.a(a, (new StringBuilder()).append("modeCounts:").append(k).toString());
            android.content.SharedPreferences.Editor editor = c.edit();
            for (; i < k; i++)
            {
                String s = (new StringBuilder()).append("mode_id").append(i).toString();
                int l = c.getInt(s, 0);
                String s1 = (new StringBuilder()).append("mode").append(l).append("-brightness").toString();
                int i1 = c.getInt(s1, 0);
                int j1 = g(i1);
                if (b)
                {
                    azt.a(a, (new StringBuilder()).append("i:").append(i).append("  brightnessIndex: ").append(i1).append(", brightness: ").append(j1).toString());
                }
                editor.putInt(s1, j1);
                String s2 = (new StringBuilder()).append("mode").append(l).append("-screen_timeout").toString();
                int k1 = c.getInt(s2, 0);
                int l1 = h(k1);
                if (b)
                {
                    azt.a(a, (new StringBuilder()).append("  timeoutIndex: ").append(k1).append(",timout: ").append(l1).toString());
                }
                editor.putInt(s2, l1);
            }

            editor.putInt("Version", 2);
            gm.a(editor);
            return true;
        } else
        {
            f(2);
            return false;
        }
    }

}
