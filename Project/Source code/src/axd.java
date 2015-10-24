// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.view.View;
import com.dianxinos.powermanager.ui.WidgetAirplaneDialogActivity;

public class axd
    implements android.view.View.OnClickListener
{

    final WidgetAirplaneDialogActivity a;

    public axd(WidgetAirplaneDialogActivity widgetairplanedialogactivity)
    {
        a = widgetairplanedialogactivity;
        super();
    }

    public void onClick(View view)
    {
        apb.a(a);
        WidgetAirplaneDialogActivity.a(a).dismiss();
    }
}
