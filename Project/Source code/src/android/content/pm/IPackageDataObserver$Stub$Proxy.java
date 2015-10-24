// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.content.pm;

import android.os.IBinder;
import android.os.Parcel;

// Referenced classes of package android.content.pm:
//            IPackageDataObserver

class 
    implements IPackageDataObserver
{

    private IBinder a;

    public void a(String s, boolean flag)
    {
        int i;
        Parcel parcel;
        i = 1;
        parcel = Parcel.obtain();
        parcel.writeInterfaceToken("android.content.pm.IPackageDataObserver");
        parcel.writeString(s);
        if (!flag)
        {
            i = 0;
        }
        parcel.writeInt(i);
        a.transact(1, parcel, null, 1);
        parcel.recycle();
        return;
        Exception exception;
        exception;
        parcel.recycle();
        throw exception;
    }

    public IBinder asBinder()
    {
        return a;
    }
}
