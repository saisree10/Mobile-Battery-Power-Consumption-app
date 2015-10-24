// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.PrintStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class bcx
    implements bdf
{

    public bcx()
    {
    }

    private void a(Map map)
    {
        if (map != null)
        {
            for (Iterator iterator = map.keySet().iterator(); iterator.hasNext();)
            {
                String s = (String)iterator.next();
                Iterator iterator1 = ((List)map.get(s)).iterator();
                while (iterator1.hasNext()) 
                {
                    String s1 = (String)iterator1.next();
                    a((new StringBuilder()).append(s).append(":").append(s1).toString());
                }
            }

        }
    }

    public void a(bdc bdc1)
    {
        if (bdc1 != null)
        {
            a("=== HTTP Response ===");
            a((new StringBuilder("Receive url: ")).append(bdc1.b()).toString());
            a((new StringBuilder("Status: ")).append(bdc1.a()).toString());
            a(bdc1.c());
            a((new StringBuilder("Content:\n")).append(bdc1.d()).toString());
        }
    }

    public void a(String s)
    {
        System.out.println(s);
    }

    public void a(HttpURLConnection httpurlconnection, Object obj)
    {
        a("=== HTTP Request ===");
        a((new StringBuilder()).append(httpurlconnection.getRequestMethod()).append(" ").append(httpurlconnection.getURL().toString()).toString());
        if (obj instanceof String)
        {
            a((new StringBuilder("Content: ")).append((String)obj).toString());
        }
        a(httpurlconnection.getRequestProperties());
    }

    public boolean a()
    {
        return true;
    }
}
