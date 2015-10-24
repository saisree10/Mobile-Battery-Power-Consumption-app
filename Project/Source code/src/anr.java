// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.BufferedReader;
import java.io.Closeable;
import java.io.DataOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class anr
    implements Closeable
{

    private static final String f = System.getenv("LD_LIBRARY_PATH");
    private static final int g;
    private final Process a;
    private final BufferedReader b;
    private final DataOutputStream c;
    private final List d = new ArrayList();
    private boolean e;
    private Runnable h;
    private Runnable i;

    private anr(String s, ArrayList arraylist, String s1)
    {
        e = false;
        h = new ans(this);
        i = new ant(this);
        azt.a("Shell", (new StringBuilder()).append("Starting shell: ").append(s).toString());
        a = a(s, arraylist, s1);
        b = new BufferedReader(new InputStreamReader(a.getInputStream()));
        c = new DataOutputStream(a.getOutputStream());
        c.write("echo Started\n".getBytes());
        c.flush();
        String s2;
        do
        {
            s2 = b.readLine();
            if (s2 == null)
            {
                throw new anq("stdout line is null! Access was denied or this executeable is not a shell!");
            }
        } while ("".equals(s2));
        if ("Started".equals(s2))
        {
            (new Thread(h, "Shell Input")).start();
            (new Thread(i, "Shell Output")).start();
            return;
        } else
        {
            d();
            throw new IOException((new StringBuilder()).append("Unable to start shell, unexpected output \"").append(s2).append("\"").toString());
        }
    }

    public static anr a(ArrayList arraylist, String s)
    {
        azt.a("Shell", "Starting Root Shell!");
        String s1 = c();
        if (s1 == null)
        {
            throw new IOException("get su path return null");
        }
        if (arraylist == null)
        {
            arraylist = new ArrayList();
        }
        arraylist.add((new StringBuilder()).append("LD_LIBRARY_PATH=").append(f).toString());
        return new anr(s1, arraylist, s);
    }

    public static Process a(String s, ArrayList arraylist, String s1)
    {
        Map map = System.getenv();
        int j = map.size();
        int k;
        String as[];
        Iterator iterator;
        int l;
        if (arraylist != null)
        {
            k = arraylist.size();
        } else
        {
            k = 0;
        }
        as = new String[k + j];
        iterator = map.entrySet().iterator();
        int j1;
        for (l = 0; iterator.hasNext(); l = j1)
        {
            java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
            j1 = l + 1;
            as[l] = (new StringBuilder()).append((String)entry.getKey()).append("=").append((String)entry.getValue()).toString();
        }

        if (arraylist != null)
        {
            for (Iterator iterator1 = arraylist.iterator(); iterator1.hasNext();)
            {
                String s2 = (String)iterator1.next();
                int i1 = l + 1;
                as[l] = s2;
                l = i1;
            }

        }
        if (s1 == null)
        {
            return Runtime.getRuntime().exec(s, as, null);
        } else
        {
            return Runtime.getRuntime().exec(s, as, new File(s1));
        }
    }

    static void a(anr anr1)
    {
        anr1.e();
    }

    public static boolean a()
    {
        return c() != null;
    }

    private static boolean a(String s)
    {
        Object obj;
label0:
        {
            Object aobj[] = {
                gk.a()
            };
            if (gk.a(s, aobj))
            {
                obj = aobj[0];
                if (gk.a(obj) == 0)
                {
                    break label0;
                }
                azt.a("Shell", (new StringBuilder()).append("Remove [").append(s).append("] for file owner.").toString());
            }
            return false;
        }
        if ((gk.b(obj) & g) != g)
        {
            azt.a("Shell", (new StringBuilder()).append("Remove [").append(s).append("] for file permission.").toString());
            return false;
        } else
        {
            return true;
        }
    }

    public static anr b()
    {
        return a(null, null);
    }

    static void b(anr anr1)
    {
        anr1.f();
    }

    private static String c()
    {
        String as[] = System.getenv("PATH").split(":");
        int j = as.length;
        for (int k = 0; k < j; k++)
        {
            String s = as[k];
            String s1 = (new StringBuilder()).append(s).append("/su").toString();
            if (a(s1))
            {
                return s1;
            }
        }

        return null;
    }

    private void d()
    {
        try
        {
            a.exitValue();
        }
        catch (IllegalThreadStateException illegalthreadstateexception)
        {
            a.destroy();
        }
        azt.a("Shell", "Shell destroyed");
    }

    private void e()
    {
        int j = 0;
_L2:
        List list = d;
        list;
        JVM INSTR monitorenter ;
        for (; !e && j >= d.size(); d.wait()) { }
        break MISSING_BLOCK_LABEL_57;
        Exception exception;
        exception;
        list;
        JVM INSTR monitorexit ;
        try
        {
            throw exception;
        }
        catch (InterruptedException interruptedexception)
        {
            azt.b("Shell", "interrupted while writing command", interruptedexception);
        }
        return;
        DataOutputStream dataoutputstream = c;
        list;
        JVM INSTR monitorexit ;
        if (j >= d.size())
        {
            break MISSING_BLOCK_LABEL_143;
        }
        ((anp)d.get(j)).a(dataoutputstream);
        dataoutputstream.write((new StringBuilder()).append("\necho dxbs@dxos*D^@#F ").append(j).append(" $?\n").toString().getBytes());
        dataoutputstream.flush();
        int k;
        k = j + 1;
        break MISSING_BLOCK_LABEL_183;
        if (e)
        {
            dataoutputstream.write("\nexit 0\n".getBytes());
            dataoutputstream.flush();
            dataoutputstream.close();
            azt.a("Shell", "Closing shell");
            return;
        }
        k = j;
        j = k;
        if (true) goto _L2; else goto _L1
_L1:
    }

    private void f()
    {
        int j;
        anp anp1;
        j = 0;
        anp1 = null;
_L5:
        String s = b.readLine();
        if (s != null) goto _L2; else goto _L1
_L1:
        azt.a("Shell", "Read all output");
        a.waitFor();
        d();
        while (j < d.size()) 
        {
            if (anp1 == null)
            {
                anp1 = (anp)d.get(j);
            }
            anp1.c("Unexpected Termination!");
            j++;
            anp1 = null;
        }
        break; /* Loop/switch isn't completed */
_L2:
        if (anp1 != null)
        {
            break MISSING_BLOCK_LABEL_123;
        }
        if (j < d.size())
        {
            break; /* Loop/switch isn't completed */
        }
        if (!e)
        {
            continue; /* Loop/switch isn't completed */
        }
        if (true) goto _L1; else goto _L3
_L3:
        anp1 = (anp)d.get(j);
        int k = s.indexOf("dxbs@dxos*D^@#F");
        if (k > 0)
        {
            anp1.a(s.substring(0, k));
        }
        if (k >= 0)
        {
            s = s.substring(k);
            String as[] = s.split(" ");
            if (Integer.parseInt(as[1]) == j)
            {
                anp1.c(Integer.parseInt(as[2]));
                j++;
                anp1 = null;
                continue; /* Loop/switch isn't completed */
            }
        }
        anp1.a(s);
        if (true) goto _L5; else goto _L4
_L4:
    }

    public anp a(anp anp1)
    {
        if (e)
        {
            throw new IOException("Unable to add commands to a closed shell");
        }
        synchronized (d)
        {
            d.add(anp1);
            anp1.a(this, -1 + d.size());
            d.notifyAll();
        }
        return anp1;
        exception;
        list;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void close()
    {
        synchronized (d)
        {
            e = true;
            d.notifyAll();
        }
        return;
        exception;
        list;
        JVM INSTR monitorexit ;
        throw exception;
    }

    static 
    {
        int j;
        if (android.os.Build.VERSION.SDK_INT >= 18)
        {
            j = 1;
        } else
        {
            j = 2049;
        }
        g = j;
    }
}
