// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.dianxinos.powermanager.recommend.model;

import android.os.Parcel;
import android.os.Parcelable;
import ano;
import java.util.ArrayList;

// Referenced classes of package com.dianxinos.powermanager.recommend.model:
//            DXHotTab

public class DXHotTabList
    implements Parcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new ano();
    public static long c;
    public static long d;
    public static String e;
    public static String f;
    public int a;
    public long b;
    public String g;
    public ArrayList h;

    public DXHotTabList()
    {
    }

    public DXHotTabList(Parcel parcel)
    {
        a = parcel.readInt();
        b = parcel.readLong();
        c = parcel.readLong();
        d = parcel.readLong();
        e = parcel.readString();
        f = parcel.readString();
        g = parcel.readString();
        DXHotTab adxhottab[] = (DXHotTab[])(DXHotTab[])parcel.readParcelableArray(com/dianxinos/powermanager/recommend/model/DXHotTabList.getClassLoader());
        if (adxhottab != null)
        {
            h = new ArrayList();
            int i = adxhottab.length;
            for (int j = 0; j < i; j++)
            {
                DXHotTab dxhottab = adxhottab[j];
                h.add(dxhottab);
            }

        }
    }

    public int describeContents()
    {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        parcel.writeInt(a);
        parcel.writeLong(b);
        parcel.writeLong(c);
        parcel.writeLong(d);
        parcel.writeString(e);
        parcel.writeString(f);
        parcel.writeString(g);
        if (h != null)
        {
            DXHotTab adxhottab[] = new DXHotTab[h.size()];
            h.toArray(adxhottab);
            parcel.writeParcelableArray(adxhottab, i);
        }
    }

}
