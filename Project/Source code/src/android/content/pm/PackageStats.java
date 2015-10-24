// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.content.pm;

import android.os.Parcel;
import android.os.Parcelable;

public class PackageStats
    implements Parcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new _cls1();
    public String a;
    public int b;
    public long c;
    public long d;
    public long e;
    public long f;
    public long g;
    public long h;
    public long i;
    public long j;

    public PackageStats(Parcel parcel)
    {
        a = parcel.readString();
        b = parcel.readInt();
        c = parcel.readLong();
        d = parcel.readLong();
        e = parcel.readLong();
        f = parcel.readLong();
        g = parcel.readLong();
        h = parcel.readLong();
        i = parcel.readLong();
        j = parcel.readLong();
    }

    public int describeContents()
    {
        return 0;
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder("PackageStats{");
        stringbuilder.append(Integer.toHexString(System.identityHashCode(this)));
        stringbuilder.append(" ");
        stringbuilder.append(a);
        if (c != 0L)
        {
            stringbuilder.append(" code=");
            stringbuilder.append(c);
        }
        if (d != 0L)
        {
            stringbuilder.append(" data=");
            stringbuilder.append(d);
        }
        if (e != 0L)
        {
            stringbuilder.append(" cache=");
            stringbuilder.append(e);
        }
        if (f != 0L)
        {
            stringbuilder.append(" extCode=");
            stringbuilder.append(f);
        }
        if (g != 0L)
        {
            stringbuilder.append(" extData=");
            stringbuilder.append(g);
        }
        if (h != 0L)
        {
            stringbuilder.append(" extCache=");
            stringbuilder.append(h);
        }
        if (i != 0L)
        {
            stringbuilder.append(" media=");
            stringbuilder.append(i);
        }
        if (j != 0L)
        {
            stringbuilder.append(" obb=");
            stringbuilder.append(j);
        }
        stringbuilder.append("}");
        return stringbuilder.toString();
    }

    public void writeToParcel(Parcel parcel, int k)
    {
        parcel.writeString(a);
        parcel.writeInt(b);
        parcel.writeLong(c);
        parcel.writeLong(d);
        parcel.writeLong(e);
        parcel.writeLong(f);
        parcel.writeLong(g);
        parcel.writeLong(h);
        parcel.writeLong(i);
        parcel.writeLong(j);
    }


    private class _cls1
        implements android.os.Parcelable.Creator
    {

        public PackageStats a(Parcel parcel)
        {
            return new PackageStats(parcel);
        }

        public PackageStats[] a(int k)
        {
            return new PackageStats[k];
        }

        public Object createFromParcel(Parcel parcel)
        {
            return a(parcel);
        }

        public Object[] newArray(int k)
        {
            return a(k);
        }

        _cls1()
        {
        }
    }

}
