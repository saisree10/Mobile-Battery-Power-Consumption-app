// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.util.Log;
import android.webkit.ValueCallback;
import java.util.ArrayList;
import java.util.concurrent.CountDownLatch;

public class bch
    implements ValueCallback
{

    CountDownLatch a;
    public String b;
    public ArrayList c;
    private final String d = bch.getName();

    bch(CountDownLatch countdownlatch)
    {
        a = null;
        c = new ArrayList();
        a = countdownlatch;
    }

    private void a(String s, String s1)
    {
        String s2;
        long l;
        if (s == null)
        {
            s2 = "null";
        } else
        {
            s2 = s;
        }
        l = 0L;
        if (a != null)
        {
            l = a.getCount();
        }
        String _tmp = d;
        (new StringBuilder("in ")).append(s1).append("(").append(s2).append(") count = ").append(l);
        b = s;
        if (s == null)
        {
            c.add("");
        } else
        {
            c.add(s);
        }
        if (a != null)
        {
            a.countDown();
            String _tmp1 = d;
            (new StringBuilder("in ")).append(s1).append("() count = ").append(a.getCount());
            return;
        } else
        {
            Log.e(d, (new StringBuilder("in ")).append(s1).append("() latch == null").toString());
            return;
        }
    }

    public void a(String s)
    {
        a(s, "getString");
    }

    public void a(CountDownLatch countdownlatch)
    {
        if (a != null)
        {
            String _tmp = d;
        }
        a = countdownlatch;
    }

    public void b(String s)
    {
        if (s == null) goto _L2; else goto _L1
_L1:
        if (s.length() != 2 || !s.equals("\"\"")) goto _L4; else goto _L3
_L3:
        s = "";
_L2:
        a(s, "onReceiveValue");
        return;
_L4:
        if (s.length() > 1)
        {
            s = s.substring(1, -1 + s.length());
        }
        if (true) goto _L2; else goto _L5
_L5:
    }

    public void onReceiveValue(Object obj)
    {
        b((String)obj);
    }
}
