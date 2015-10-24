// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.content.pm;

import android.os.IBinder;
import android.os.Parcel;

// Referenced classes of package android.content.pm:
//            IPackageStatsObserver, PackageStats

class _cls9
    implements IPackageStatsObserver
{

    private IBinder a;

    public void a(PackageStats packagestats, boolean flag)
    {
        int i;
        Parcel parcel;
        i = 1;
        parcel = Parcel.obtain();
        parcel.writeInterfaceToken("android.content.pm.IPackageStatsObserver");
        if (packagestats == null) goto _L2; else goto _L1
_L1:
        parcel.writeInt(1);
        packagestats.writeToParcel(parcel, 0);
          goto _L3
_L5:
        parcel.writeInt(i);
        a.transact(1, parcel, null, 1);
        parcel.recycle();
        return;
_L2:
        parcel.writeInt(0);
        break; /* Loop/switch isn't completed */
        Exception exception;
        exception;
        parcel.recycle();
        throw exception;
_L6:
        i = 0;
        if (true) goto _L4; else goto _L3
_L4:
        break; /* Loop/switch isn't completed */
_L3:
        if (!flag) goto _L6; else goto _L5
    }

    public IBinder asBinder()
    {
        return a;
    }
}
