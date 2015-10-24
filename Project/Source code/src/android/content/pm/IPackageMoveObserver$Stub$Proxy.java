// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.content.pm;

import android.os.IBinder;
import android.os.Parcel;

// Referenced classes of package android.content.pm:
//            IPackageMoveObserver

class 
    implements IPackageMoveObserver
{

    private IBinder a;

    public void a(String s, int i)
    {
        Parcel parcel = Parcel.obtain();
        parcel.writeInterfaceToken("android.content.pm.IPackageMoveObserver");
        parcel.writeString(s);
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
