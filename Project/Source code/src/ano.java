// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.os.Parcel;
import com.dianxinos.powermanager.recommend.model.DXHotTabList;

public final class ano
    implements android.os.Parcelable.Creator
{

    public ano()
    {
    }

    public DXHotTabList a(Parcel parcel)
    {
        return new DXHotTabList(parcel);
    }

    public DXHotTabList[] a(int i)
    {
        return new DXHotTabList[i];
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
