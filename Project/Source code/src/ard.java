// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.os.Parcel;

public final class ard
    implements bi
{

    public ard()
    {
    }

    public Object a(Parcel parcel, ClassLoader classloader)
    {
        return b(parcel, classloader);
    }

    public Object[] a(int i)
    {
        return b(i);
    }

    public com.dianxinos.powermanager.skinshop.SkinShopViewPager.SavedState b(Parcel parcel, ClassLoader classloader)
    {
        return new com.dianxinos.powermanager.skinshop.SkinShopViewPager.SavedState(parcel, classloader);
    }

    public com.dianxinos.powermanager.skinshop.SkinShopViewPager.SavedState[] b(int i)
    {
        return new com.dianxinos.powermanager.skinshop.SkinShopViewPager.SavedState[i];
    }
}
