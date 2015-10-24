// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.os.Binder;
import android.os.IBinder;
import android.os.Parcel;

public abstract class akc extends Binder
    implements akb
{

    public akc()
    {
        attachInterface(this, "com.dianxinos.powermanager.download.IDownloadFileService");
    }

    public static akb a(IBinder ibinder)
    {
        if (ibinder == null)
        {
            return null;
        }
        android.os.IInterface iinterface = ibinder.queryLocalInterface("com.dianxinos.powermanager.download.IDownloadFileService");
        if (iinterface != null && (iinterface instanceof akb))
        {
            return (akb)iinterface;
        } else
        {
            return new akd(ibinder);
        }
    }

    public IBinder asBinder()
    {
        return this;
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel1, int j)
    {
        boolean flag;
        switch (i)
        {
        default:
            return super.onTransact(i, parcel, parcel1, j);

        case 1598968902: 
            parcel1.writeString("com.dianxinos.powermanager.download.IDownloadFileService");
            return true;

        case 1: // '\001'
            parcel.enforceInterface("com.dianxinos.powermanager.download.IDownloadFileService");
            a(parcel.readString(), parcel.readString(), parcel.readLong(), parcel.readLong(), ajz.a(parcel.readStrongBinder()));
            parcel1.writeNoException();
            return true;

        case 2: // '\002'
            parcel.enforceInterface("com.dianxinos.powermanager.download.IDownloadFileService");
            a(parcel.readString());
            parcel1.writeNoException();
            return true;

        case 3: // '\003'
            parcel.enforceInterface("com.dianxinos.powermanager.download.IDownloadFileService");
            flag = b(parcel.readString());
            parcel1.writeNoException();
            break;
        }
        int k;
        if (flag)
        {
            k = 1;
        } else
        {
            k = 0;
        }
        parcel1.writeInt(k);
        return true;
    }
}
