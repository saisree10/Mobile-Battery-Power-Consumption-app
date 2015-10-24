// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.content.pm;

import android.os.Parcel;

// Referenced classes of package android.content.pm:
//            PackageStats

class 
    implements android.os.tor
{

    public PackageStats a(Parcel parcel)
    {
        return new PackageStats(parcel);
    }

    public PackageStats[] a(int i)
    {
        return new PackageStats[i];
    }

    public Object createFromParcel(Parcel parcel)
    {
        return a(parcel);
    }

    public Object[] newArray(int i)
    {
        return a(i);
    }

    ()
    {
    }
}
