// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.os.Parcel;
import com.dianxinos.powermanager.recommend.model.DXHotAPK;

public final class anl
    implements android.os.Parcelable.Creator
{

    public anl()
    {
    }

    public DXHotAPK a(Parcel parcel)
    {
        return new DXHotAPK(parcel);
    }

    public DXHotAPK[] a(int i)
    {
        return new DXHotAPK[i];
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
