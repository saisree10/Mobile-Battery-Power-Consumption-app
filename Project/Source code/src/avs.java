// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.database.DataSetObserver;
import com.dianxinos.powermanager.ui.Integratelottery.WheelView;

public class avs extends DataSetObserver
{

    final WheelView a;

    public avs(WheelView wheelview)
    {
        a = wheelview;
        super();
    }

    public void onChanged()
    {
        a.a(false);
    }

    public void onInvalidated()
    {
        a.a(true);
    }
}
