// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.app.ActivityManager;
import android.content.Context;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

public class atm
    implements adc
{

    private static atm v;
    private Context a;
    private ato b;
    private asy c;
    private boolean d;
    private boolean e;
    private long f;
    private int g;
    private int h;
    private long i;
    private long j;
    private long k;
    private long l;
    private ats m;
    private ats n;
    private long o;
    private ArrayList p;
    private HashSet q;
    private ats r;
    private long s;
    private boolean t;
    private volatile boolean u;

    private atm(Context context)
    {
        d = false;
        e = false;
        n = new ats();
        p = new ArrayList();
        t = false;
        u = false;
        a = context.getApplicationContext();
        b = ato.a(a);
        c = asy.a(a);
        d();
    }

    public static atm a(Context context)
    {
        if (v != null) goto _L2; else goto _L1
_L1:
        atm;
        JVM INSTR monitorenter ;
        if (v == null)
        {
            v = new atm(context);
        }
        atm;
        JVM INSTR monitorexit ;
_L2:
        return v;
        Exception exception;
        exception;
        atm;
        JVM INSTR monitorexit ;
        throw exception;
    }

    private String a(int i1)
    {
        return (new StringBuilder()).append("snaps_stats_").append(i1).toString();
    }

    private String a(long l1)
    {
        return azq.c(a, (int)(l1 / 1000L));
    }

    private void a(ats ats1, long l1)
    {
        long l2;
        HashSet hashset;
        l2 = l1 - s;
        hashset = h();
        if (t || d || r == null || l2 >= 0x124f80L || l2 <= 0x493e0L) goto _L2; else goto _L1
_L1:
        ats ats2;
        Iterator iterator;
        boolean flag;
        ats2 = (ats)ats1.b();
        ats2.a(r);
        ats2.a(null);
        iterator = ats2.g.iterator();
        flag = false;
_L7:
        if (!iterator.hasNext()) goto _L4; else goto _L3
_L3:
        atl atl1 = (atl)iterator.next();
        if (!flag) goto _L5; else goto _L4
_L4:
        ats2.a();
_L2:
        if (q != null)
        {
            q.clear();
        }
        q = hashset;
        if (r != null)
        {
            r.a();
        }
        r = ats1;
        s = l1;
        t = d;
        return;
_L5:
        boolean flag1;
        atu atu1 = (atu)atl1;
        if (atu1.a != 0 && (!q.contains(Integer.valueOf(atu1.a)) || !hashset.contains(Integer.valueOf(atu1.a))))
        {
            continue; /* Loop/switch isn't completed */
        }
        Iterator iterator1 = atu1.g.iterator();
        atx atx1;
        do
        {
            if (!iterator1.hasNext())
            {
                break; /* Loop/switch isn't completed */
            }
            atx1 = (atx)(atl)iterator1.next();
        } while (atx1.b <= 0L || c.a(atu1.a, atu1.b, atx1.a, l2, atx1.b));
        flag1 = true;
_L8:
        flag = flag1;
        if (true) goto _L7; else goto _L6
_L6:
        flag1 = flag;
          goto _L8
        if (true) goto _L7; else goto _L9
_L9:
    }

    private void a(DataInputStream datainputstream)
    {
label0:
        {
            g = datainputstream.readInt();
            h = datainputstream.readInt();
            int i1 = datainputstream.readInt();
            p.clear();
            for (int j1 = 0; j1 < i1; j1++)
            {
                long l1 = datainputstream.readLong();
                long l2 = datainputstream.readLong();
                int i2 = datainputstream.readInt();
                p.add(new atn(l1, l2, i2));
            }

            if (i1 > 0)
            {
                atn atn1 = (atn)p.get(0);
                atn atn2 = (atn)p.get(i1 - 1);
                i = atn1.a;
                j = atn2.a;
                k = atn1.b;
                l = atn2.b;
                s = j;
                r = new ats();
                int k1 = ((atn)p.get(i1 - 1)).c;
                if (r.a(a, a(k1)))
                {
                    break label0;
                }
                s = 0L;
                r.a();
                r = null;
            }
            return;
        }
        q = h();
    }

    private void a(ArrayList arraylist)
    {
        int i1 = 0;
        while (i1 < arraylist.size()) 
        {
            String s1 = ((atu)arraylist.get(i1)).b;
            int j1;
            if ("com.dianxinos.powermanager".equals(s1) || "com.dianxinos.dxbs.paid".equals(s1) || "com.dianxinos.dxbs".equals(s1))
            {
                arraylist.remove(i1);
                j1 = i1;
            } else
            {
                j1 = i1 + 1;
            }
            i1 = j1;
        }
    }

    private void d()
    {
        DataInputStream datainputstream = new DataInputStream(a.openFileInput("snaps_config"));
        int i1;
        i1 = datainputstream.readInt();
        datainputstream.readInt();
        if (i1 == 0xf15d345a) goto _L2; else goto _L1
_L1:
        try
        {
            g();
        }
        catch (IOException ioexception) { }
_L4:
        if (datainputstream == null)
        {
            break MISSING_BLOCK_LABEL_49;
        }
        datainputstream.close();
        return;
_L2:
        a(datainputstream);
        continue; /* Loop/switch isn't completed */
        IOException ioexception1;
        ioexception1;
        return;
        IOException ioexception2;
        ioexception2;
        datainputstream = null;
        if (true) goto _L4; else goto _L3
_L3:
    }

    private void e()
    {
        int i1;
        DataOutputStream dataoutputstream;
        i1 = 0;
        dataoutputstream = null;
        DataOutputStream dataoutputstream1 = new DataOutputStream(a.openFileOutput("snaps_config", 0));
        dataoutputstream1.writeInt(0xf15d345a);
        dataoutputstream1.writeInt(2);
        dataoutputstream1.writeInt(g);
        dataoutputstream1.writeInt(h);
        dataoutputstream1.writeInt(p.size());
_L3:
        if (i1 >= p.size()) goto _L2; else goto _L1
_L1:
        atn atn1 = (atn)p.get(i1);
        dataoutputstream1.writeLong(atn1.a);
        dataoutputstream1.writeLong(atn1.b);
        dataoutputstream1.writeInt(atn1.c);
        i1++;
          goto _L3
        IOException ioexception2;
        ioexception2;
_L5:
        dataoutputstream1 = dataoutputstream;
_L2:
        if (dataoutputstream1 == null)
        {
            break MISSING_BLOCK_LABEL_131;
        }
        dataoutputstream1.close();
        return;
        IOException ioexception1;
        ioexception1;
        return;
        IOException ioexception;
        ioexception;
        dataoutputstream = dataoutputstream1;
        if (true) goto _L5; else goto _L4
_L4:
    }

    private String f()
    {
        return (new StringBuilder()).append("snaps_stats_").append(h).toString();
    }

    private void g()
    {
        ArrayList arraylist = p;
        arraylist;
        JVM INSTR monitorenter ;
        int i1 = g;
_L1:
        if (i1 >= h)
        {
            break MISSING_BLOCK_LABEL_39;
        }
        a.deleteFile(a(i1));
        i1++;
          goto _L1
        g = h;
        i = 0L;
        j = 0L;
        k = 0L;
        l = 0L;
        p.clear();
        e();
        arraylist;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        arraylist;
        JVM INSTR monitorexit ;
        throw exception;
    }

    private HashSet h()
    {
        HashSet hashset = new HashSet();
        List list = ((ActivityManager)a.getSystemService("activity")).getRunningAppProcesses();
        if (list == null)
        {
            return hashset;
        }
        Iterator iterator = list.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            android.app.ActivityManager.RunningAppProcessInfo runningappprocessinfo = (android.app.ActivityManager.RunningAppProcessInfo)iterator.next();
            if (runningappprocessinfo != null)
            {
                hashset.add(Integer.valueOf(runningappprocessinfo.uid));
            }
        } while (true);
        return hashset;
    }

    public long a()
    {
        long l1 = System.currentTimeMillis() - j;
        if (l1 < 0L || l1 > 0x927c0L)
        {
            l1 = 0x927c0L;
        }
        return 0x927c0L - l1;
    }

    public void a(int i1, String s1)
    {
        atu atu1;
        Iterator iterator;
        if (i1 == -1)
        {
            return;
        }
        atu1 = null;
        iterator = m.g.iterator();
_L4:
        if (!iterator.hasNext()) goto _L2; else goto _L1
_L1:
        atu1 = (atu)(atl)iterator.next();
        if (atu1.a != i1) goto _L4; else goto _L3
_L3:
        atu atu2 = atu1;
_L14:
        ats ats1;
        if (atu2 == null)
        {
            azt.d("PowerStatsSnapMgr", (new StringBuilder()).append("Not found uid: ").append(i1).append(", proc: ").append(s1).toString());
            return;
        }
        ats1 = new ats();
        ArrayList arraylist = p;
        arraylist;
        JVM INSTR monitorenter ;
        int j1;
        boolean flag;
        j1 = 0;
        flag = false;
_L15:
        if (j1 >= p.size()) goto _L6; else goto _L5
_L5:
        String s2;
        s2 = a(((atn)p.get(j1)).c);
        ats1.a();
        if (ats1.a(a, s2)) goto _L8; else goto _L7
_L7:
        azt.d("PowerStatsSnapMgr", (new StringBuilder()).append("Bad data file: ").append(s2).append("! remove it").toString());
        a.deleteFile(s2);
        p.remove(j1);
        int i2;
        boolean flag2;
        i2 = j1 - 1;
        flag2 = true;
          goto _L9
_L8:
        int k1 = ats1.g.size();
        int l1 = 0;
_L16:
        if (l1 >= k1) goto _L11; else goto _L10
_L10:
        atu atu3 = (atu)ats1.g.get(l1);
        if (atu3.a != i1)
        {
            break MISSING_BLOCK_LABEL_429;
        }
        ats1.g.set(l1, atu2);
        ats1.b(a, s2);
        ats1.g.set(l1, atu3);
        boolean flag1 = true;
_L13:
        if (flag1)
        {
            break; /* Loop/switch isn't completed */
        }
        ats1.g.add(atu2);
        ats1.b(a, s2);
        ats1.g.remove(k1);
        break; /* Loop/switch isn't completed */
_L6:
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_372;
        }
        e();
        arraylist;
        JVM INSTR monitorexit ;
        ats1.a();
        return;
        Exception exception;
        exception;
        arraylist;
        JVM INSTR monitorexit ;
        throw exception;
_L11:
        flag1 = false;
        if (true) goto _L13; else goto _L12
_L2:
        atu2 = atu1;
          goto _L14
_L9:
        int j2 = i2 + 1;
        flag = flag2;
        j1 = j2;
          goto _L15
_L12:
        i2 = j1;
        flag2 = flag;
          goto _L9
        l1++;
          goto _L16
    }

    public void a(add add1)
    {
        boolean flag;
        if (add1.a == 2)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (!d) goto _L2; else goto _L1
_L1:
        if (System.currentTimeMillis() - f >= 0x927c0L)
        {
            g();
            e = true;
            f = System.currentTimeMillis();
        }
_L4:
        if (!flag)
        {
            d = false;
            f = 0L;
            if (e || h == g)
            {
                a(false);
                e = false;
            }
        }
        return;
_L2:
        if (flag)
        {
            d = true;
            f = System.currentTimeMillis();
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public void a(boolean flag)
    {
        boolean flag1;
        flag1 = true;
        if (u)
        {
            return;
        }
        u = flag1;
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_51;
        }
        int i1;
        int j1;
        if (!d)
        {
            break MISSING_BLOCK_LABEL_51;
        }
        i1 = h;
        j1 = g;
        if (i1 == j1)
        {
            u = false;
            return;
        }
        atr atr1 = b.e();
        if (atr1 != null)
        {
            break MISSING_BLOCK_LABEL_80;
        }
        azt.c("PowerStatsSnapMgr", "Failed to get stats snap. Cannot add new snap.");
        u = false;
        return;
        atr1.d.a();
        ArrayList arraylist;
        Exception exception;
        long l1;
        long l2;
        ats ats1;
        Exception exception1;
        atn atn1;
        if (atr1.b >= l)
        {
            flag1 = false;
        }
        if (!flag1)
        {
            break MISSING_BLOCK_LABEL_109;
        }
        g();
        l1 = atr1.a;
        l2 = atr1.b;
        ats1 = atr1.c;
        ats1.b(a, f());
        a(ats1, l1);
        arraylist = p;
        arraylist;
        JVM INSTR monitorenter ;
        p.add(new atn(l1, l2, h));
        h = 1 + h;
        j = l1;
        l = l2;
        if (i == 0L)
        {
            i = System.currentTimeMillis();
            k = l2;
        }
        while (0x36ee80L + i < j && p.size() > 2) 
        {
            p.remove(0);
            a.deleteFile(a(g));
            atn1 = (atn)p.get(0);
            i = atn1.a;
            g = atn1.c;
        }
        break MISSING_BLOCK_LABEL_334;
        exception1;
        arraylist;
        JVM INSTR monitorexit ;
        throw exception1;
        exception;
        u = false;
        throw exception;
        e();
        arraylist;
        JVM INSTR monitorexit ;
        u = false;
        return;
    }

    public ats b()
    {
        ArrayList arraylist = p;
        arraylist;
        JVM INSTR monitorenter ;
        boolean flag;
        atn atn1;
        flag = false;
        atn1 = null;
_L5:
        if (p.size() <= 0) goto _L2; else goto _L1
_L1:
        String s1;
        ats ats3;
        atn1 = (atn)p.get(0);
        s1 = a(atn1.c);
        ats3 = new ats();
        if (ats3.a(a, s1)) goto _L4; else goto _L3
_L3:
        azt.d("PowerStatsSnapMgr", (new StringBuilder()).append("Bad data file: ").append(s1).append("! remove it").toString());
        a.deleteFile(s1);
        ats3.a();
        p.remove(0);
        flag = true;
          goto _L5
_L8:
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_136;
        }
        e();
        ats ats1;
        if (ats1 == null)
        {
            break MISSING_BLOCK_LABEL_378;
        }
        long l1;
        i = atn1.a;
        g = atn1.c;
        l1 = i;
_L6:
        arraylist;
        JVM INSTR monitorexit ;
        if (ats1 == null)
        {
            if (!d)
            {
                a(false);
            }
            n.a();
            o = 0L;
            return n;
        }
        break MISSING_BLOCK_LABEL_206;
        Exception exception;
        exception;
        arraylist;
        JVM INSTR monitorexit ;
        throw exception;
        atr atr1 = b.e();
        if (atr1 == null)
        {
            azt.c("PowerStatsSnapMgr", "Failed to get stats snap. Use the old one.");
            return n;
        }
        atr1.d.a();
        ats ats2 = atr1.c;
        if (m != null)
        {
            m.a();
        }
        m = (ats)ats2.b();
        ats2.a(ats1);
        long l2 = atr1.a - l1;
        azt.a("PowerStatsSnapMgr", (new StringBuilder()).append("Snap time gap: ").append(a(l2)).toString());
        ats2.a(null);
        a(ats2.g);
        ats2.a(a);
        ats2.a(a, 20, 0.10000000000000001D);
        n = ats2;
        o = l2;
        return n;
        l1 = 0L;
          goto _L6
_L4:
        ats1 = ats3;
        continue; /* Loop/switch isn't completed */
_L2:
        ats1 = null;
        if (true) goto _L8; else goto _L7
_L7:
    }

    public ats c()
    {
        return n;
    }
}
