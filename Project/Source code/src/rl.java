// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.os.Parcel;

final class rl
    implements android.os.Parcelable.Creator
{

    rl()
    {
    }

    public rk a(Parcel parcel)
    {
        return new rk(parcel);
    }

    public rk[] a(int i)
    {
        return new rk[i];
    }

    public Object createFromParcel(Parcel parcel)
    {
        return a(parcel);
    }

    public Object[] newArray(int i)
    {
        return a(i);
    }
}
