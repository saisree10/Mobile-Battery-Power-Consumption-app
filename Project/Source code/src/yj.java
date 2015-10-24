// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.lang.ref.SoftReference;
import java.util.LinkedHashMap;
import java.util.concurrent.ConcurrentHashMap;

final class yj extends LinkedHashMap
{

    yj(int i, float f, boolean flag)
    {
        super(i, f, flag);
    }

    protected boolean removeEldestEntry(java.util.Map.Entry entry)
    {
        if (size() > 10)
        {
            yi.b().put(entry.getKey(), new SoftReference(entry.getValue()));
            return true;
        } else
        {
            return false;
        }
    }
}
