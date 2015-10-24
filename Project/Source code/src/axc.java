// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.view.View;
import com.dianxinos.powermanager.ui.WidgetAirplaneDialogActivity;

public class axc
    implements android.view.View.OnClickListener
{

    final int a;
    final boolean b;
    final WidgetAirplaneDialogActivity c;

    public axc(WidgetAirplaneDialogActivity widgetairplanedialogactivity, int i, boolean flag)
    {
        c = widgetairplanedialogactivity;
        a = i;
        b = flag;
        super();
    }

    public void onClick(View view)
    {
        apb.a(c, a, b);
        WidgetAirplaneDialogActivity.a(c).dismiss();
    }
}
