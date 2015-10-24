// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.os.IBinder;
import android.os.Parcel;

class e
    implements f
{

    private IBinder a;

    public e(IBinder ibinder)
    {
        a = ibinder;
    }

    public IBinder a(String s)
    {
        Parcel parcel = Parcel.obtain();
        Parcel parcel1 = Parcel.obtain();
        parcel.writeInterfaceToken("android.os.bp");
        parcel.writeString(s);
        a.transact(2, parcel, parcel1, 0);
        IBinder ibinder = parcel1.readStrongBinder();
        parcel1.recycle();
        parcel.recycle();
        return ibinder;
    }

    public IBinder asBinder()
    {
        return a;
    }
}
