// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.ComponentName;
import android.os.IBinder;
import android.os.Parcel;
import android.widget.RemoteViews;

class wc
    implements wa
{

    private IBinder a;

    wc(IBinder ibinder)
    {
        a = ibinder;
    }

    public int a()
    {
        Parcel parcel;
        Parcel parcel1;
        parcel = Parcel.obtain();
        parcel1 = Parcel.obtain();
        int i;
        parcel.writeInterfaceToken("com.dianxinos.launcher2.dxwidget.IDXWidgetService");
        a.transact(5, parcel, parcel1, 0);
        parcel1.readException();
        i = parcel1.readInt();
        parcel1.recycle();
        parcel.recycle();
        return i;
        Exception exception;
        exception;
        parcel1.recycle();
        parcel.recycle();
        throw exception;
    }

    public void a(int i, RemoteViews remoteviews)
    {
        Parcel parcel;
        Parcel parcel1;
        parcel = Parcel.obtain();
        parcel1 = Parcel.obtain();
        parcel.writeInterfaceToken("com.dianxinos.launcher2.dxwidget.IDXWidgetService");
        parcel.writeInt(i);
        if (remoteviews == null)
        {
            break MISSING_BLOCK_LABEL_65;
        }
        parcel.writeInt(1);
        remoteviews.writeToParcel(parcel, 0);
_L1:
        a.transact(1, parcel, parcel1, 0);
        parcel1.readException();
        parcel1.recycle();
        parcel.recycle();
        return;
        parcel.writeInt(0);
          goto _L1
        Exception exception;
        exception;
        parcel1.recycle();
        parcel.recycle();
        throw exception;
    }

    public void a(ComponentName componentname, int i, RemoteViews remoteviews)
    {
        Parcel parcel;
        Parcel parcel1;
        parcel = Parcel.obtain();
        parcel1 = Parcel.obtain();
        parcel.writeInterfaceToken("com.dianxinos.launcher2.dxwidget.IDXWidgetService");
        if (componentname == null) goto _L2; else goto _L1
_L1:
        parcel.writeInt(1);
        componentname.writeToParcel(parcel, 0);
_L3:
        parcel.writeInt(i);
        if (remoteviews == null)
        {
            break MISSING_BLOCK_LABEL_113;
        }
        parcel.writeInt(1);
        remoteviews.writeToParcel(parcel, 0);
_L4:
        a.transact(3, parcel, parcel1, 0);
        parcel1.readException();
        parcel1.recycle();
        parcel.recycle();
        return;
_L2:
        parcel.writeInt(0);
          goto _L3
        Exception exception;
        exception;
        parcel1.recycle();
        parcel.recycle();
        throw exception;
        parcel.writeInt(0);
          goto _L4
    }

    public void a(ComponentName componentname, RemoteViews remoteviews)
    {
        Parcel parcel;
        Parcel parcel1;
        parcel = Parcel.obtain();
        parcel1 = Parcel.obtain();
        parcel.writeInterfaceToken("com.dianxinos.launcher2.dxwidget.IDXWidgetService");
        if (componentname == null) goto _L2; else goto _L1
_L1:
        parcel.writeInt(1);
        componentname.writeToParcel(parcel, 0);
_L3:
        if (remoteviews == null)
        {
            break MISSING_BLOCK_LABEL_97;
        }
        parcel.writeInt(1);
        remoteviews.writeToParcel(parcel, 0);
_L4:
        a.transact(2, parcel, parcel1, 0);
        parcel1.readException();
        parcel1.recycle();
        parcel.recycle();
        return;
_L2:
        parcel.writeInt(0);
          goto _L3
        Exception exception;
        exception;
        parcel1.recycle();
        parcel.recycle();
        throw exception;
        parcel.writeInt(0);
          goto _L4
    }

    public int[] a(ComponentName componentname)
    {
        Parcel parcel;
        Parcel parcel1;
        parcel = Parcel.obtain();
        parcel1 = Parcel.obtain();
        parcel.writeInterfaceToken("com.dianxinos.launcher2.dxwidget.IDXWidgetService");
        if (componentname == null)
        {
            break MISSING_BLOCK_LABEL_64;
        }
        parcel.writeInt(1);
        componentname.writeToParcel(parcel, 0);
_L1:
        int ai[];
        a.transact(4, parcel, parcel1, 0);
        parcel1.readException();
        ai = parcel1.createIntArray();
        parcel1.recycle();
        parcel.recycle();
        return ai;
        parcel.writeInt(0);
          goto _L1
        Exception exception;
        exception;
        parcel1.recycle();
        parcel.recycle();
        throw exception;
    }

    public IBinder asBinder()
    {
        return a;
    }

    public String b()
    {
        Parcel parcel;
        Parcel parcel1;
        parcel = Parcel.obtain();
        parcel1 = Parcel.obtain();
        String s;
        parcel.writeInterfaceToken("com.dianxinos.launcher2.dxwidget.IDXWidgetService");
        a.transact(6, parcel, parcel1, 0);
        parcel1.readException();
        s = parcel1.readString();
        parcel1.recycle();
        parcel.recycle();
        return s;
        Exception exception;
        exception;
        parcel1.recycle();
        parcel.recycle();
        throw exception;
    }
}
