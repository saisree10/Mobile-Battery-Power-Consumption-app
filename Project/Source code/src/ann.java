// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.os.Parcel;
import com.dianxinos.powermanager.recommend.model.DXHotTab;

public final class ann
    implements android.os.Parcelable.Creator
{

    public ann()
    {
    }

    public DXHotTab a(Parcel parcel)
    {
        return new DXHotTab(parcel);
    }

    public DXHotTab[] a(int i)
    {
        return new DXHotTab[i];
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
