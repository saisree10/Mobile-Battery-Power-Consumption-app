// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.os.Binder;
import android.os.IBinder;
import android.os.Parcel;

public abstract class ajz extends Binder
    implements ajy
{

    public ajz()
    {
        attachInterface(this, "com.dianxinos.powermanager.download.IDownloadFileCallbacks");
    }

    public static ajy a(IBinder ibinder)
    {
        if (ibinder == null)
        {
            return null;
        }
        android.os.IInterface iinterface = ibinder.queryLocalInterface("com.dianxinos.powermanager.download.IDownloadFileCallbacks");
        if (iinterface != null && (iinterface instanceof ajy))
        {
            return (ajy)iinterface;
        } else
        {
            return new aka(ibinder);
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
            parcel1.writeString("com.dianxinos.powermanager.download.IDownloadFileCallbacks");
            return true;

        case 1: // '\001'
            parcel.enforceInterface("com.dianxinos.powermanager.download.IDownloadFileCallbacks");
            a(parcel.readString(), parcel.readInt(), parcel.readLong(), parcel.readLong());
            parcel1.writeNoException();
            return true;

        case 2: // '\002'
            parcel.enforceInterface("com.dianxinos.powermanager.download.IDownloadFileCallbacks");
            a(parcel.readString());
            parcel1.writeNoException();
            return true;

        case 3: // '\003'
            parcel.enforceInterface("com.dianxinos.powermanager.download.IDownloadFileCallbacks");
            a(parcel.readString(), parcel.readLong());
            parcel1.writeNoException();
            return true;

        case 4: // '\004'
            parcel.enforceInterface("com.dianxinos.powermanager.download.IDownloadFileCallbacks");
            a(parcel.readString(), parcel.readInt(), parcel.readLong());
            parcel1.writeNoException();
            return true;

        case 5: // '\005'
            parcel.enforceInterface("com.dianxinos.powermanager.download.IDownloadFileCallbacks");
            b(parcel.readString(), parcel.readLong());
            parcel1.writeNoException();
            return true;
        }
    }
}
