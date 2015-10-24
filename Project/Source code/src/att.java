// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.os.Parcel;

final class att
    implements android.os.Parcelable.Creator
{

    att()
    {
    }

    public ats a(Parcel parcel)
    {
        ats ats1 = new ats();
        ats.a(ats1, parcel);
        return ats1;
    }

    public ats[] a(int i)
    {
        return new ats[i];
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
