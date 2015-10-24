// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.os.Binder;
import android.os.IBinder;
import android.os.Parcel;

public abstract class mq extends Binder
    implements mp
{

    public mq()
    {
        attachInterface(this, "com.dianxinos.common.dxsplash.ISplashDownloadFileService");
    }

    public static mp a(IBinder ibinder)
    {
        if (ibinder == null)
        {
            return null;
        }
        android.os.IInterface iinterface = ibinder.queryLocalInterface("com.dianxinos.common.dxsplash.ISplashDownloadFileService");
        if (iinterface != null && (iinterface instanceof mp))
        {
            return (mp)iinterface;
        } else
        {
            return new mr(ibinder);
        }
    }

    public IBinder asBinder()
    {
        return this;
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel1, int j)
    {
        switch (i)
        {
        default:
            return super.onTransact(i, parcel, parcel1, j);

        case 1598968902: 
            parcel1.writeString("com.dianxinos.common.dxsplash.ISplashDownloadFileService");
            return true;

        case 1: // '\001'
            parcel.enforceInterface("com.dianxinos.common.dxsplash.ISplashDownloadFileService");
            a(parcel.readString(), parcel.readString(), parcel.readLong(), parcel.readLong(), mn.a(parcel.readStrongBinder()));
            parcel1.writeNoException();
            return true;

        case 2: // '\002'
            parcel.enforceInterface("com.dianxinos.common.dxsplash.ISplashDownloadFileService");
            a(parcel.readString());
            parcel1.writeNoException();
            return true;
        }
    }
}
