// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.os.Parcel;

class bh
    implements android.os.Parcelable.Creator
{

    final bi a;

    public bh(bi bi1)
    {
        a = bi1;
    }

    public Object createFromParcel(Parcel parcel)
    {
        return a.a(parcel, null);
    }

    public Object[] newArray(int i)
    {
        return a.a(i);
    }
}
