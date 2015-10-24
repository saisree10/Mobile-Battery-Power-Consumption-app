// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.os.Parcel;

public class atx extends atl
{

    public int a;
    public long b;

    public atx(int i, double d, long l)
    {
        a = 0;
        c = 1;
        a = i;
        this.d = d;
        b = l;
    }

    private atx(Parcel parcel)
    {
        a = 0;
        c = 1;
        a(parcel);
    }

    atx(Parcel parcel, atv atv)
    {
        this(parcel);
    }

    private void a(Parcel parcel)
    {
        a = parcel.readInt();
        d = parcel.readDouble();
        b = parcel.readLong();
    }

    static void a(atx atx1, Parcel parcel)
    {
        atx1.b(parcel);
    }

    private void b(Parcel parcel)
    {
        parcel.writeInt(a);
        parcel.writeDouble(d);
        parcel.writeLong(b);
    }

    protected atl c()
    {
        return e();
    }

    protected atx e()
    {
        return new atx(a, d, b);
    }
}
