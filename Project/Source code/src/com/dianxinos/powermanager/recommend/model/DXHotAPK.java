// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.dianxinos.powermanager.recommend.model;

import android.os.Parcel;
import anl;

// Referenced classes of package com.dianxinos.powermanager.recommend.model:
//            DXHotBase

public class DXHotAPK extends DXHotBase
{

    public static final android.os.Parcelable.Creator CREATOR = new anl();
    public String a;
    public String b;
    public int c;
    public long d;
    public String e;
    public String f;
    public int g;
    public int h;
    public int i;

    protected DXHotAPK()
    {
    }

    public DXHotAPK(Parcel parcel)
    {
        super(parcel);
        a = parcel.readString();
        b = parcel.readString();
        c = parcel.readInt();
        d = parcel.readLong();
        e = parcel.readString();
        f = parcel.readString();
        g = parcel.readInt();
        h = parcel.readInt();
        i = parcel.readInt();
    }

    public int describeContents()
    {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int j)
    {
        super.writeToParcel(parcel, j);
        parcel.writeString(a);
        parcel.writeString(b);
        parcel.writeInt(c);
        parcel.writeLong(d);
        parcel.writeString(e);
        parcel.writeString(f);
        parcel.writeInt(g);
        parcel.writeInt(h);
        parcel.writeInt(i);
    }

}
