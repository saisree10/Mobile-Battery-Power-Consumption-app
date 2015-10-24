// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.File;
import java.util.ArrayList;
import java.util.List;

public class xm
{

    public static xn a(int i)
    {
        xn xn1;
        if (!(new File((new StringBuilder()).append("/proc/uid_stat/").append(i).toString())).exists())
        {
            xn1 = null;
        } else
        {
            xn1 = new xn();
            xn1.a = i;
            Object aobj[] = new Object[1];
            aobj[0] = Integer.valueOf(i);
            String s = zq.a(String.format("/proc/uid_stat/%d/tcp_rcv", aobj));
            if (s != null)
            {
                xn1.b = zy.a(s, 0L);
            }
            Object aobj1[] = new Object[1];
            aobj1[0] = Integer.valueOf(i);
            String s1 = zq.a(String.format("/proc/uid_stat/%d/tcp_snd", aobj1));
            if (s1 != null)
            {
                xn1.c = zy.a(s1, 0L);
                return xn1;
            }
        }
        return xn1;
    }

    public static boolean a()
    {
        File file = new File("/proc/uid_stat/");
        return file.exists() && file.isDirectory();
    }

    public static List b()
    {
        File afile[] = (new File("/proc/uid_stat/")).listFiles();
        Object obj;
        if (afile == null || afile.length == 0)
        {
            obj = null;
        } else
        {
            ws ws1 = ws.a();
            obj = new ArrayList();
            int i = afile.length;
            int j = 0;
            while (j < i) 
            {
                File file = afile[j];
                if (file.isDirectory() && file.getName().matches("[\\d]+"))
                {
                    int k = zy.b(file.getName(), -1);
                    if (k != -1 && !ws1.b(k))
                    {
                        xn xn1 = a(k);
                        if (xn1 != null)
                        {
                            ((List) (obj)).add(xn1);
                        }
                    }
                }
                j++;
            }
        }
        return ((List) (obj));
    }
}
