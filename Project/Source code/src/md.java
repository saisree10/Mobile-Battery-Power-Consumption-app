// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.os.Parcel;

public final class md
    implements android.os.Parcelable.Creator
{

    public md()
    {
    }

    public com.dianxinos.common.coins.CoinManager.RequestResult a(Parcel parcel)
    {
        return new com.dianxinos.common.coins.CoinManager.RequestResult(parcel, null);
    }

    public com.dianxinos.common.coins.CoinManager.RequestResult[] a(int i)
    {
        return new com.dianxinos.common.coins.CoinManager.RequestResult[i];
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
