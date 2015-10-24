// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;

public class hd
{

    public String a;
    public String b;
    public int c;
    public String d;
    public int e;
    public String f;
    public String g;
    public String h;
    public int i;
    public String j[];
    public int k;
    public String l;

    public hd()
    {
        c = 0;
        k = 3;
    }

    public int a()
    {
        if (b != null)
        {
            if (i == 1)
            {
                if (f != null && g != null && h != null && j != null && j.length > 0)
                {
                    return 0;
                }
            } else
            {
                return 1;
            }
        }
        return -1;
    }

    public int a(Context context)
    {
        int i1;
        int j1;
        i1 = 1;
        j1 = a();
        if (j1 != -1) goto _L2; else goto _L1
_L1:
        i1 = j1;
_L4:
        return i1;
_L2:
        if (j1 != 0) goto _L4; else goto _L3
_L3:
        int l1;
        int k1 = 0;
        l1 = i1;
        do
        {
            if (k1 >= j.length)
            {
                continue; /* Loop/switch isn't completed */
            }
            while (false) 
            {
                if (j[k1] != null && im.a(context, j[k1]) == null)
                {
                    l1 = 0;
                }
                k1++;
            }
        } while (true);
        if (l1 == 0) goto _L4; else goto _L5
_L5:
        return i1;
    }
}
