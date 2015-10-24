// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.content.pm;

import android.os.Binder;
import android.os.IBinder;
import android.os.Parcel;

// Referenced classes of package android.content.pm:
//            IPackageDataObserver

public abstract class attachInterface extends Binder
    implements IPackageDataObserver
{

    public IBinder asBinder()
    {
        return this;
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel1, int j)
    {
        String s;
        switch (i)
        {
        default:
            return super.onTransact(i, parcel, parcel1, j);

        case 1598968902: 
            parcel1.writeString("android.content.pm.IPackageDataObserver");
            return true;

        case 1: // '\001'
            parcel.enforceInterface("android.content.pm.IPackageDataObserver");
            s = parcel.readString();
            break;
        }
        boolean flag;
        if (parcel.readInt() != 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        a(s, flag);
        return true;
    }

    public ()
    {
        attachInterface(this, "android.content.pm.IPackageDataObserver");
    }
}
