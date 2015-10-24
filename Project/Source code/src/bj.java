// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.os.Parcel;

class bj
    implements android.os.Parcelable.ClassLoaderCreator
{

    private final bi a;

    public bj(bi bi1)
    {
        a = bi1;
    }

    public Object createFromParcel(Parcel parcel)
    {
        return a.a(parcel, null);
    }

    public Object createFromParcel(Parcel parcel, ClassLoader classloader)
    {
        return a.a(parcel, classloader);
    }

    public Object[] newArray(int i)
    {
        return a.a(i);
    }
}
