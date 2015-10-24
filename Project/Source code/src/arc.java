// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.database.DataSetObserver;
import com.dianxinos.powermanager.skinshop.SkinShopViewPager;

public class arc extends DataSetObserver
{

    final SkinShopViewPager a;

    private arc(SkinShopViewPager skinshopviewpager)
    {
        a = skinshopviewpager;
        super();
    }

    public arc(SkinShopViewPager skinshopviewpager, aqq aqq)
    {
        this(skinshopviewpager);
    }

    public void onChanged()
    {
        a.b();
    }

    public void onInvalidated()
    {
        a.b();
    }
}
