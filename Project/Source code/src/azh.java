// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.content.SharedPreferences;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.TreeSet;

public class azh
{

    private static final String a[] = {
        "ondemand", "ONDEMAND", "conservative"
    };
    private static azh p;
    private Context b;
    private boolean c;
    private boolean d;
    private int e;
    private int f;
    private int g;
    private ArrayList h;
    private ArrayList i;
    private ArrayList j;
    private ArrayList k;
    private ArrayList l;
    private ArrayList m;
    private ArrayList n;
    private ArrayList o;

    private azh(Context context)
    {
        h = new ArrayList(1);
        i = new ArrayList(1);
        j = new ArrayList(1);
        k = new ArrayList(1);
        l = new ArrayList(1);
        m = new ArrayList(1);
        n = new ArrayList(1);
        o = new ArrayList(1);
        b = context.getApplicationContext();
    }

    private int a(int i1, ArrayList arraylist)
    {
        int j1 = arraylist.size();
        for (int k1 = 0; k1 < j1; k1++)
        {
            if (((Integer)arraylist.get(k1)).intValue() == i1)
            {
                return k1;
            }
        }

        return -1;
    }

    public static int a(String s)
    {
        int i1;
        try
        {
            i1 = Integer.parseInt(s);
        }
        catch (NumberFormatException numberformatexception)
        {
            return -1;
        }
        return i1;
    }

    public static azh a(Context context)
    {
        if (p != null) goto _L2; else goto _L1
_L1:
        azh;
        JVM INSTR monitorenter ;
        if (p == null)
        {
            p = new azh(context);
        }
        azh;
        JVM INSTR monitorexit ;
_L2:
        return p;
        Exception exception;
        exception;
        azh;
        JVM INSTR monitorexit ;
        throw exception;
    }

    private void a(String s, int i1, int j1, int k1, int l1, ArrayList arraylist)
    {
        int i2 = 0;
        TreeSet treeset = new TreeSet();
        String s1 = azo.b((new StringBuilder()).append(s).append("scaling_available_frequencies").toString());
        if (s1 != null)
        {
            String as1[] = s1.split("\\s");
            int k2 = as1.length;
            int l2 = 0;
            while (l2 < k2) 
            {
                String s3 = as1[l2];
                int i3 = a(s3);
                if (i3 < i1 || i3 > j1)
                {
                    azt.d("CpuSettings", (new StringBuilder()).append("Invalid freq: ").append(s3).toString());
                } else
                {
                    treeset.add(Integer.valueOf(i3));
                }
                l2++;
            }
        }
        if (treeset.isEmpty())
        {
            String s2 = azo.b((new StringBuilder()).append(s).append("stats/time_in_state").toString());
            if (s2 != null)
            {
                d = true;
                String as[] = s2.split("\\s");
                while (i2 < as.length) 
                {
                    int j2 = a(as[i2]);
                    if (j2 < i1 || j2 > j1)
                    {
                        azt.d("CpuSettings", (new StringBuilder()).append("Invalid freq: ").append(as[i2]).toString());
                    } else
                    {
                        treeset.add(Integer.valueOf(j2));
                    }
                    i2 += 2;
                }
            }
        }
        if (treeset.isEmpty())
        {
            treeset.add(Integer.valueOf(i1));
            treeset.add(Integer.valueOf(j1));
            treeset.add(Integer.valueOf(k1));
            treeset.add(Integer.valueOf(l1));
        }
        for (Iterator iterator = treeset.iterator(); iterator.hasNext(); arraylist.add((Integer)iterator.next())) { }
    }

    private void a(boolean flag)
    {
        int i1;
        h.clear();
        i.clear();
        j.clear();
        k.clear();
        l.clear();
        m.clear();
        n.clear();
        o.clear();
        i1 = 0;
_L8:
        String s;
        Object aobj[] = new Object[1];
        aobj[0] = Integer.valueOf(i1);
        s = String.format("/sys/devices/system/cpu/cpu%d/cpufreq/", aobj);
        if ((new File(s)).exists()) goto _L2; else goto _L1
_L1:
        return;
_L2:
        String s1 = (new StringBuilder()).append(s).append("cpuinfo_min_freq").toString();
        if (b(s1)) goto _L4; else goto _L3
_L3:
        i1++;
        continue; /* Loop/switch isn't completed */
_L4:
        String s2;
        int j1;
        String s4;
        int k1;
        s2 = azo.b(s1);
        if (s2 == null)
        {
            continue; /* Loop/switch isn't completed */
        }
        j1 = a(s2);
        if (j1 <= 0)
        {
            azt.d("CpuSettings", (new StringBuilder()).append("Invalid min freq: ").append(s2).toString());
            continue; /* Loop/switch isn't completed */
        }
        String s3 = (new StringBuilder()).append(s).append("cpuinfo_max_freq").toString();
        if (!b(s3))
        {
            continue; /* Loop/switch isn't completed */
        }
        s4 = azo.b(s3);
        if (s4 == null)
        {
            continue; /* Loop/switch isn't completed */
        }
        k1 = a(s4);
        if (k1 > 0)
        {
            break; /* Loop/switch isn't completed */
        }
        azt.d("CpuSettings", (new StringBuilder()).append("Invalid max freq: ").append(s4).toString());
        if (true) goto _L3; else goto _L5
_L5:
        String s5 = azo.b((new StringBuilder()).append(s).append("scaling_min_freq").toString());
        if (s5 == null)
        {
            s5 = s2;
        }
        int l1 = a(s5);
        if (l1 < j1)
        {
            l1 = j1;
        }
        String s6 = azo.b((new StringBuilder()).append(s).append("scaling_max_freq").toString());
        if (s6 == null)
        {
            s6 = s4;
        }
        int i2 = a(s6);
        if (i2 > k1)
        {
            i2 = k1;
        }
        ArrayList arraylist = new ArrayList();
        a(s, arraylist);
        n.add(arraylist);
        String s7 = c(s);
        o.add(s7);
        h.add(s);
        i.add(Integer.valueOf(j1));
        j.add(Integer.valueOf(k1));
        k.add(Integer.valueOf(l1));
        l.add(Integer.valueOf(i2));
        ArrayList arraylist1 = new ArrayList();
        m.add(arraylist1);
        a(s, j1, k1, l1, i2, arraylist1);
        SharedPreferences sharedpreferences = b.getSharedPreferences("cpu_settings", 0);
        boolean flag1 = sharedpreferences.getBoolean("boot_init", false);
        if (flag || !flag1)
        {
            azt.b("CpuSettings", "init the cpu info pref");
            android.content.SharedPreferences.Editor editor = sharedpreferences.edit();
            editor.putInt("boot_scaling_min_0", l1);
            editor.putInt("boot_scaling_max_0", i2);
            editor.putInt("boot_max", i2);
            if (s7 != null)
            {
                editor.putString("boot_scaling_governor_0", s7);
            }
            editor.putBoolean("boot_init", true);
            gm.a(editor);
        }
        int j2 = sharedpreferences.getInt("boot_max", i2);
        int k2 = a(j2, arraylist1);
        e = j2;
        if (k2 > 8)
        {
            f = ((Integer)arraylist1.get((k2 * 2) / 3)).intValue();
            g = ((Integer)arraylist1.get(k2 / 3)).intValue();
        } else
        if (k2 > 2)
        {
            f = ((Integer)arraylist1.get(k2 - 1)).intValue();
            g = ((Integer)arraylist1.get(k2 - 2)).intValue();
        } else
        if (k2 > 1)
        {
            f = ((Integer)arraylist1.get(k2 - 1)).intValue();
            g = 0;
        } else
        {
            f = 0;
            g = 0;
        }
        if (f < i())
        {
            f = 0;
            g = 0;
        }
        if (g >= i()) goto _L1; else goto _L6
_L6:
        g = 0;
        return;
        if (true) goto _L8; else goto _L7
_L7:
    }

    private boolean a(String s, String s1)
    {
        int i1 = gk.a(s);
        boolean flag;
        if (i1 != -1)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (flag && (i1 == 33188 || i1 == 33204 || i1 == 33206))
        {
            return true;
        }
        ArrayList arraylist = new ArrayList();
        if (!flag)
        {
            arraylist.add((new StringBuilder()).append("cat ").append(s1).append(" > ").append(s).toString());
        }
        if (i1 != 33204 && i1 != 33188 && i1 != 33206)
        {
            arraylist.add((new StringBuilder()).append("chmod 664 ").append(s).toString());
        }
        return bag.a().a(arraylist);
    }

    private boolean a(String s, ArrayList arraylist)
    {
        int i1 = 0;
        String s1 = (new StringBuilder()).append(s).append("scaling_available_governors").toString();
        String s2;
        if (b(s1))
        {
            if ((s2 = azo.b(s1)) != null)
            {
                String as[] = s2.split("\\s");
                Arrays.sort(as);
                for (int j1 = as.length; i1 < j1; i1++)
                {
                    arraylist.add(as[i1]);
                }

                return true;
            }
        }
        return false;
    }

    private boolean b(String s)
    {
        File file = new File(s);
        boolean flag = file.exists();
        boolean flag1 = file.canRead();
        if (!flag || !flag1)
        {
            if (flag && !flag1)
            {
                return bag.a().a((new StringBuilder()).append("chmod 444 ").append(s).toString());
            }
            if (!flag || !flag1)
            {
                return false;
            }
        }
        return true;
    }

    private String c(String s)
    {
        return azo.b((new StringBuilder()).append(s).append("scaling_governor").toString());
    }

    public int a()
    {
        return h.size();
    }

    public String a(int i1)
    {
        ArrayList arraylist = (ArrayList)n.get(i1);
        String as[] = a;
        int j1 = as.length;
        for (int k1 = 0; k1 < j1; k1++)
        {
            String s = as[k1];
            if (Collections.binarySearch(arraylist, s) >= 0)
            {
                return s;
            }
        }

        return null;
    }

    public boolean a(int i1, int j1)
    {
        android.content.SharedPreferences.Editor editor = b.getSharedPreferences("cpu_settings", 0).edit();
        editor.putInt("boot_scaling_min_0", i1);
        editor.putInt("boot_scaling_max_0", j1);
        gm.a(editor);
        return a(i1, j1, a(0));
    }

    public boolean a(int i1, int j1, String s)
    {
        int k1 = h.size();
        if (k1 == 0)
        {
            return false;
        }
        ArrayList arraylist = new ArrayList(k1 * 2);
        for (int l1 = 0; l1 < k1; l1++)
        {
            String s1 = (String)h.get(l1);
            String s2 = (new StringBuilder()).append(s1).append("scaling_min_freq").toString();
            if (!a(s2, String.valueOf(i1)))
            {
                return false;
            }
            String s3 = (new StringBuilder()).append(s1).append("scaling_max_freq").toString();
            if (!a(s3, String.valueOf(j1)))
            {
                return false;
            }
            if (a(s, l1))
            {
                arraylist.add((new StringBuilder()).append("echo ").append(i1).append(" > ").append(s2).toString());
                arraylist.add((new StringBuilder()).append("echo ").append(j1).append(" > ").append(s3).toString());
            }
        }

        if (j() || bag.a().a(arraylist))
        {
            for (int i2 = 0; i2 < k1; i2++)
            {
                String _tmp = (String)h.get(i2);
                k.set(i2, Integer.valueOf(i1));
                l.set(i2, Integer.valueOf(j1));
            }

            android.content.SharedPreferences.Editor editor = b.getSharedPreferences("cpu_settings", 0).edit();
            editor.putInt("scaling_min_0", i1);
            editor.putInt("scaling_max_0", j1);
            gm.a(editor);
            return true;
        } else
        {
            return false;
        }
    }

    public boolean a(String s, int i1)
    {
        if (s == null)
        {
            return false;
        }
        String s1 = (String)h.get(i1);
        String s2 = c(s1);
        if (s2 != null && s2.equals(s))
        {
            return true;
        }
        ArrayList arraylist = new ArrayList();
        String s3 = (new StringBuilder()).append(s1).append("scaling_governor").toString();
        arraylist.add((new StringBuilder()).append("echo ").append(s).append(" > ").append(s3).toString());
        return bag.a().a(arraylist);
    }

    public int b()
    {
        return e;
    }

    public int b(int i1)
    {
        return ((Integer)i.get(i1)).intValue();
    }

    public boolean b(int i1, int j1)
    {
        if (!c)
        {
            a(false);
            c = true;
        }
        boolean flag = a(i1, j1, a(0));
        if (flag)
        {
            gm.a(b.getSharedPreferences("cpu_settings", 0).edit().putBoolean("enabled", true));
        }
        return flag;
    }

    public int c()
    {
        return f;
    }

    public int c(int i1)
    {
        return ((Integer)k.get(i1)).intValue();
    }

    public int d()
    {
        return g;
    }

    public int d(int i1)
    {
        return ((Integer)l.get(i1)).intValue();
    }

    public ArrayList e(int i1)
    {
        return (ArrayList)m.get(i1);
    }

    public void e()
    {
        if (!c)
        {
            a(false);
            c = true;
        }
    }

    public boolean f()
    {
        SharedPreferences sharedpreferences = b.getSharedPreferences("cpu_settings", 0);
        if (!sharedpreferences.getBoolean("enabled", false))
        {
            azt.c("CpuSettings", "Cannot disablePowerSave when not in power save mode");
            return false;
        }
        int i1 = sharedpreferences.getInt("boot_scaling_min_0", -1);
        int j1 = sharedpreferences.getInt("boot_scaling_max_0", -1);
        if (i1 <= 0 || j1 <= 0)
        {
            azt.d("CpuSettings", (new StringBuilder()).append("disablePowerSave, minFreq: ").append(i1).append(", maxFreq: ").append(j1).toString());
            return false;
        }
        boolean flag = a(i1, j1, sharedpreferences.getString("boot_scaling_governor_0", null));
        if (flag)
        {
            gm.a(sharedpreferences.edit().putBoolean("enabled", false));
        }
        return flag;
    }

    public void g()
    {
        if (!c)
        {
            a(true);
            c = true;
        }
        if (h.size() != 0)
        {
            SharedPreferences sharedpreferences = b.getSharedPreferences("cpu_settings", 0);
            boolean flag = sharedpreferences.getBoolean("enabled", false);
            boolean flag1 = sharedpreferences.getBoolean("boot_auto_set", false);
            if (flag && flag1)
            {
                int i1 = sharedpreferences.getInt("scaling_min_0", -1);
                int j1 = sharedpreferences.getInt("scaling_max_0", -1);
                if (i1 < 0 || j1 < 0)
                {
                    azt.d("CpuSettings", (new StringBuilder()).append("Failed to set CPU, scalingMin: ").append(i1).append(", scalingMax: ").append(j1).toString());
                    gm.a(sharedpreferences.edit().putBoolean("enabled", false));
                    return;
                } else
                {
                    b(i1, j1);
                    return;
                }
            }
        }
    }

    public boolean h()
    {
        return d;
    }

    public int i()
    {
        return !azf.l() || !h() ? 0x30d40 : 0x668a0;
    }

    public boolean j()
    {
        return azf.o;
    }

}
