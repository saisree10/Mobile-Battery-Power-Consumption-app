// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;

public abstract class gp extends Binder
    implements go
{

    public static go a(IBinder ibinder)
    {
        if (ibinder == null)
        {
            return null;
        }
        android.os.IInterface iinterface = ibinder.queryLocalInterface("com.android.vending.billing.IMarketBillingService");
        if (iinterface != null && (iinterface instanceof go))
        {
            return (go)iinterface;
        } else
        {
            return new gq(ibinder);
        }
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel1, int j)
    {
        switch (i)
        {
        default:
            return super.onTransact(i, parcel, parcel1, j);

        case 1598968902: 
            parcel1.writeString("com.android.vending.billing.IMarketBillingService");
            return true;

        case 1: // '\001'
            parcel.enforceInterface("com.android.vending.billing.IMarketBillingService");
            break;
        }
        Bundle bundle;
        Bundle bundle1;
        if (parcel.readInt() != 0)
        {
            bundle = (Bundle)Bundle.CREATOR.createFromParcel(parcel);
        } else
        {
            bundle = null;
        }
        bundle1 = a(bundle);
        parcel1.writeNoException();
        if (bundle1 != null)
        {
            parcel1.writeInt(1);
            bundle1.writeToParcel(parcel1, 1);
        } else
        {
            parcel1.writeInt(0);
        }
        return true;
    }
}
