// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.view.View;
import com.dianxinos.powermanager.skinshop.MySkinActivity;

public class apj
    implements android.view.View.OnClickListener
{

    final MySkinActivity a;

    public apj(MySkinActivity myskinactivity)
    {
        a = myskinactivity;
        super();
    }

    public void onClick(View view)
    {
        a.setResult(-1);
        a.finish();
    }
}
