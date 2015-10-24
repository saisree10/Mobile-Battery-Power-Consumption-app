// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.os.Parcel;
import com.dianxinos.common.ui.fragment.TabInfo;

public final class rg
    implements android.os.Parcelable.Creator
{

    public rg()
    {
    }

    public TabInfo a(Parcel parcel)
    {
        return new TabInfo(parcel);
    }

    public TabInfo[] a(int i)
    {
        return new TabInfo[i];
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
