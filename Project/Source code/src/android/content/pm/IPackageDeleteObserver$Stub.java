// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.content.pm;

import android.os.Binder;
import android.os.Parcel;

// Referenced classes of package android.content.pm:
//            IPackageDeleteObserver

public abstract class attachInterface extends Binder
    implements IPackageDeleteObserver
{

    public boolean onTransact(int i, Parcel parcel, Parcel parcel1, int j)
    {
        i;
        JVM INSTR lookupswitch 2: default 28
    //                   1: 46
    //                   1598968902: 38;
           goto _L1 _L2 _L3
_L1:
        return super.onTransact(i, parcel, parcel1, j);
_L3:
        parcel1.writeString("android.content.pm.IPackageDeleteObserver");
        return true;
_L2:
        if (android.os.er.Stub < 14)
        {
            parcel.enforceInterface("android.content.pm.IPackageDeleteObserver");
            boolean flag;
            if (parcel.readInt() != 0)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            a(flag);
            return true;
        }
        if (android.os.er.Stub.a >= 14)
        {
            parcel.enforceInterface("android.content.pm.IPackageDeleteObserver");
            a(parcel.readString(), parcel.readInt());
            return true;
        }
        if (true) goto _L1; else goto _L4
_L4:
    }

    public ()
    {
        attachInterface(this, "android.content.pm.IPackageDeleteObserver");
    }
}
