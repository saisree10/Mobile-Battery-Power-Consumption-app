// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.File;
import java.io.FilenameFilter;

class kc
    implements FilenameFilter
{

    final String a;
    final ka b;

    kc(ka ka, String s)
    {
        b = ka;
        a = s;
        super();
    }

    public boolean accept(File file, String s)
    {
        return s.startsWith(a);
    }
}
