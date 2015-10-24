// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.os.Parcel;
import com.dianxinos.powermanager.recommend.model.DXHotBase;

public final class anm
    implements android.os.Parcelable.Creator
{

    public anm()
    {
    }

    public DXHotBase a(Parcel parcel)
    {
        return new DXHotBase(parcel);
    }

    public DXHotBase[] a(int i)
    {
        return new DXHotBase[i];
    }

    public Object createFromParcel(Parcel parcel)
    {
        return a(parcel);
    }

    public Object[] newArray(int i)
    {
        return a(i);
    }
}
