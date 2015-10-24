// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import java.io.File;

public class nc
{

    private static final boolean h;
    public String a;
    public long b;
    public long c;
    public String d;
    public String e;
    public String f;
    public float g;

    public nc()
    {
        g = 1.5F;
    }

    private static void e(String s)
    {
        if (h)
        {
            ms.a("SplashItem", s);
        }
    }

    public nc a(float f1)
    {
        g = f1;
        return this;
    }

    public nc a(long l)
    {
        b = l;
        return this;
    }

    public nc a(String s)
    {
        a = s;
        return this;
    }

    public boolean a()
    {
        if (f == null || f.equals(""))
        {
            e("SplashExist: no local path");
            return false;
        }
        File file = new File(f);
        if (!file.exists())
        {
            e("SplashExist: no local file");
            return false;
        }
        String s = nd.a(file);
        if (s == null || d == null || !s.equals(d))
        {
            e("SplashExist: don't match md5!");
            return false;
        } else
        {
            return true;
        }
    }

    public boolean a(Context context)
    {
        if (System.currentTimeMillis() > c)
        {
            e("SplashItem: Last time passed");
        } else
        if (!a())
        {
            return true;
        }
        return false;
    }

    public nc b(long l)
    {
        c = l;
        return this;
    }

    public nc b(String s)
    {
        d = s;
        return this;
    }

    public nc c(String s)
    {
        e = s;
        return this;
    }

    public nc d(String s)
    {
        f = s;
        return this;
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("SplashItem:[name=").append(a);
        stringbuilder.append(", firstTime=").append(nd.a(b));
        stringbuilder.append(", lastTime=").append(nd.a(c));
        stringbuilder.append(", md5=").append(d);
        stringbuilder.append(", url=").append(e);
        stringbuilder.append(", localPath=").append(f);
        stringbuilder.append(", stayTime=").append(g);
        stringbuilder.append("]");
        return stringbuilder.toString();
    }

    static 
    {
        h = mi.a;
    }
}
