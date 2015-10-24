// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.text.TextUtils;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public class hj
    implements hg
{

    private static String a = "DownLoadManager";
    private static hj b;
    private static Context c;
    private static ThreadPoolExecutor d;
    private HashMap e;
    private HashMap f;

    private hj(Context context)
    {
        e = new HashMap();
        f = new HashMap();
        c = context;
        d = new ThreadPoolExecutor(1, 2, 60L, TimeUnit.SECONDS, new ArrayBlockingQueue(10));
    }

    public static hj a(Context context)
    {
        if (b == null)
        {
            b = new hj(context);
        }
        return b;
    }

    private void a(int i)
    {
        if (f.containsKey("all_task_listener"))
        {
            hk hk1 = (hk)f.get("all_task_listener");
            in.b(a, (new StringBuilder()).append("notifyAllListener result ").append(i).toString());
            hk1.a(i);
        }
    }

    private void a(String s, String s1, String s2, String s3, String s4, int i)
    {
        hf hf1 = new hf(c, s1, s2, s3, s4, i);
        hf1.a(this);
        hf1.a(d.submit(new hl(c, hf1)));
        e.put(s, hf1);
        in.b(a, (new StringBuilder()).append("not exist task key ").append(s).append(" start new task").toString());
    }

    private void c()
    {
        Iterator iterator = e.keySet().iterator();
        int i = 0;
        boolean flag = true;
        while (iterator.hasNext()) 
        {
            hf hf1 = (hf)e.get(iterator.next());
            int j;
            boolean flag1;
            if (hf1.a() != 2)
            {
                j = i;
                flag1 = false;
            } else
            if (hf1.b() != 0)
            {
                j = 2;
                flag1 = flag;
            } else
            {
                j = i;
                flag1 = flag;
            }
            flag = flag1;
            i = j;
        }
        if (flag)
        {
            a(i);
        }
    }

    public void a()
    {
        Iterator iterator = e.keySet().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            hf hf1 = (hf)e.get(iterator.next());
            if (hf1.f() == 0)
            {
                hf1.g();
            }
        } while (true);
    }

    public void a(hb hb1, int i)
    {
        if (hb1 != null)
        {
            hc hc1 = hb1.b;
            int j = hc1.m.length;
            for (int k = 0; k < j; k++)
            {
                hd hd1 = hc1.m[k];
                if (!TextUtils.isEmpty(hd1.g) && !TextUtils.isEmpty(hd1.f) && !TextUtils.isEmpty(hd1.h))
                {
                    a(hb1.c, hd1.g, hd1.f, hd1.h, i, ((hk) (null)));
                }
            }

        }
    }

    public void a(hk hk1)
    {
        if (hk1 != null && !TextUtils.isEmpty("all_task_listener"))
        {
            f.put("all_task_listener", hk1);
        }
    }

    public void a(String s, int i)
    {
        if (!TextUtils.isEmpty(s))
        {
            hk hk1 = (hk)f.get(s);
            if (hk1 != null)
            {
                hk1.a(i);
            }
            in.b(a, (new StringBuilder()).append(" url download task finish ").append(s).append(" result  status ").append(i).toString());
        }
        c();
    }

    public void a(String s, String s1, String s2)
    {
        if (TextUtils.isEmpty(s) || TextUtils.isEmpty(s1) || TextUtils.isEmpty(s2))
        {
            return;
        }
        String s3 = hi.a(s1, s2);
        in.b(a, (new StringBuilder()).append("Stop download task remove url ").append(s).append(" pkgName ").append(s1).append(" version Name").append(s2).toString());
        if (e.containsKey(s3))
        {
            ((hf)e.get(s3)).g();
            return;
        } else
        {
            in.a(a, (new StringBuilder()).append("task not exist! url ").append(s).toString());
            return;
        }
    }

    public void a(String s, String s1, String s2, String s3, int i, hk hk1)
    {
        String s4 = hi.a(s2, s3);
        if (hk1 != null)
        {
            f.put(s4, hk1);
        }
        hi.a();
        in.b(a, (new StringBuilder()).append(" startDowload url ").append(s1).append(" pkgName ").append(s2).append(" versionName ").append(s3).append(" mode ").append(i).toString());
        if (e.containsKey(s4) && ((hf)e.get(s4)).a() == 1)
        {
            hf hf1 = (hf)e.get(s4);
            in.b(a, (new StringBuilder()).append(" controller state ").append(hf1.a()).toString());
            hf1.a(i);
            return;
        }
        if (e.containsKey(s4))
        {
            synchronized (e)
            {
                ((hf)e.get(s4)).h();
                e.remove(s4);
            }
        }
        a(s4, s, s2, s3, s1, i);
        return;
        exception;
        hashmap;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void b()
    {
        f.remove("all_task_listener");
    }

}
