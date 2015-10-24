// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.os.Bundle;
import android.support.v4.app.Fragment;

public final class ad
{

    private final String a;
    private final Class b;
    private final Bundle c;
    private Fragment d;

    public static Fragment a(ad ad1)
    {
        return ad1.d;
    }

    public static Fragment a(ad ad1, Fragment fragment)
    {
        ad1.d = fragment;
        return fragment;
    }

    public static String b(ad ad1)
    {
        return ad1.a;
    }

    public static Class c(ad ad1)
    {
        return ad1.b;
    }

    public static Bundle d(ad ad1)
    {
        return ad1.c;
    }
}
