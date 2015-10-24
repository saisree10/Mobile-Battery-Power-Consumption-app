// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.dianxinos.powermanager.recommend.model;

import android.os.Parcel;
import android.os.Parcelable;
import anm;

public class DXHotBase
    implements Parcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new anm();
    public long j;
    public String k;
    public String l;
    public String m;

    protected DXHotBase()
    {
    }

    public DXHotBase(Parcel parcel)
    {
        j = parcel.readLong();
        k = parcel.readString();
        l = parcel.readString();
        m = parcel.readString();
    }

    public int describeContents()
    {
        return 0;
    }

    public String toString()
    {
        return (new StringBuilder()).append("id=").append(j).append("   title=").append(k).toString();
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        parcel.writeLong(j);
        parcel.writeString(k);
        parcel.writeString(l);
        parcel.writeString(m);
    }

}
