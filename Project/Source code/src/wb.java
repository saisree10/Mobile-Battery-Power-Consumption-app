// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.ComponentName;
import android.os.Binder;
import android.os.IBinder;
import android.os.Parcel;
import android.widget.RemoteViews;

public abstract class wb extends Binder
    implements wa
{

    public static wa a(IBinder ibinder)
    {
        if (ibinder == null)
        {
            return null;
        }
        android.os.IInterface iinterface = ibinder.queryLocalInterface("com.dianxinos.launcher2.dxwidget.IDXWidgetService");
        if (iinterface != null && (iinterface instanceof wa))
        {
            return (wa)iinterface;
        } else
        {
            return new wc(ibinder);
        }
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel1, int j)
    {
        switch (i)
        {
        default:
            return super.onTransact(i, parcel, parcel1, j);

        case 1598968902: 
            parcel1.writeString("com.dianxinos.launcher2.dxwidget.IDXWidgetService");
            return true;

        case 1: // '\001'
            parcel.enforceInterface("com.dianxinos.launcher2.dxwidget.IDXWidgetService");
            int i1 = parcel.readInt();
            RemoteViews remoteviews2;
            if (parcel.readInt() != 0)
            {
                remoteviews2 = (RemoteViews)RemoteViews.CREATOR.createFromParcel(parcel);
            } else
            {
                remoteviews2 = null;
            }
            a(i1, remoteviews2);
            parcel1.writeNoException();
            return true;

        case 2: // '\002'
            parcel.enforceInterface("com.dianxinos.launcher2.dxwidget.IDXWidgetService");
            ComponentName componentname2;
            RemoteViews remoteviews1;
            if (parcel.readInt() != 0)
            {
                componentname2 = (ComponentName)ComponentName.CREATOR.createFromParcel(parcel);
            } else
            {
                componentname2 = null;
            }
            if (parcel.readInt() != 0)
            {
                remoteviews1 = (RemoteViews)RemoteViews.CREATOR.createFromParcel(parcel);
            } else
            {
                remoteviews1 = null;
            }
            a(componentname2, remoteviews1);
            parcel1.writeNoException();
            return true;

        case 3: // '\003'
            parcel.enforceInterface("com.dianxinos.launcher2.dxwidget.IDXWidgetService");
            ComponentName componentname1;
            int l;
            RemoteViews remoteviews;
            if (parcel.readInt() != 0)
            {
                componentname1 = (ComponentName)ComponentName.CREATOR.createFromParcel(parcel);
            } else
            {
                componentname1 = null;
            }
            l = parcel.readInt();
            if (parcel.readInt() != 0)
            {
                remoteviews = (RemoteViews)RemoteViews.CREATOR.createFromParcel(parcel);
            } else
            {
                remoteviews = null;
            }
            a(componentname1, l, remoteviews);
            parcel1.writeNoException();
            return true;

        case 4: // '\004'
            parcel.enforceInterface("com.dianxinos.launcher2.dxwidget.IDXWidgetService");
            ComponentName componentname;
            int ai[];
            if (parcel.readInt() != 0)
            {
                componentname = (ComponentName)ComponentName.CREATOR.createFromParcel(parcel);
            } else
            {
                componentname = null;
            }
            ai = a(componentname);
            parcel1.writeNoException();
            parcel1.writeIntArray(ai);
            return true;

        case 5: // '\005'
            parcel.enforceInterface("com.dianxinos.launcher2.dxwidget.IDXWidgetService");
            int k = a();
            parcel1.writeNoException();
            parcel1.writeInt(k);
            return true;

        case 6: // '\006'
            parcel.enforceInterface("com.dianxinos.launcher2.dxwidget.IDXWidgetService");
            String s = b();
            parcel1.writeNoException();
            parcel1.writeString(s);
            return true;
        }
    }
}
