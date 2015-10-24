// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.os.Parcel;

public final class ep
    implements bi
{

    public ep()
    {
    }

    public Object a(Parcel parcel, ClassLoader classloader)
    {
        return b(parcel, classloader);
    }

    public Object[] a(int i)
    {
        return b(i);
    }

    public android.support.v4.view.ViewPager.SavedState b(Parcel parcel, ClassLoader classloader)
    {
        return new android.support.v4.view.ViewPager.SavedState(parcel, classloader);
    }

    public android.support.v4.view.ViewPager.SavedState[] b(int i)
    {
        return new android.support.v4.view.ViewPager.SavedState[i];
    }
}
