// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.view.View;
import com.dianxinos.acomponent.ui.ADMainActivity;

public class hy
    implements android.view.View.OnClickListener
{

    final ADMainActivity a;

    public hy(ADMainActivity admainactivity)
    {
        a = admainactivity;
        super();
    }

    public void onClick(View view)
    {
        ADMainActivity.a(a, false);
        a.finish();
    }
}
