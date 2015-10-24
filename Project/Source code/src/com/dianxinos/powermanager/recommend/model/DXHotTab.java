// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.dianxinos.powermanager.recommend.model;

import android.os.Parcel;
import ann;

// Referenced classes of package com.dianxinos.powermanager.recommend.model:
//            DXHotBase

public class DXHotTab extends DXHotBase
{

    public static final android.os.Parcelable.Creator CREATOR = new ann();
    public String a;
    public long b[];
    public long c[];
    public long d[];

    protected DXHotTab()
    {
    }

    public DXHotTab(Parcel parcel)
    {
        super(parcel);
        a = parcel.readString();
        b = parcel.createLongArray();
        c = parcel.createLongArray();
        d = parcel.createLongArray();
    }

    public int describeContents()
    {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        super.writeToParcel(parcel, i);
        parcel.writeString(a);
        parcel.writeLongArray(b);
        parcel.writeLongArray(c);
        parcel.writeLongArray(d);
    }

}
