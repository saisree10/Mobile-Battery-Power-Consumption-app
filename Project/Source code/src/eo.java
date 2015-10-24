// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.database.DataSetObserver;
import android.support.v4.view.ViewPager;

public class eo extends DataSetObserver
{

    final ViewPager a;

    private eo(ViewPager viewpager)
    {
        a = viewpager;
        super();
    }

    public eo(ViewPager viewpager, ee ee)
    {
        this(viewpager);
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
