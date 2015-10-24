// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.app.Activity;
import android.view.View;
import android.widget.CheckBox;
import com.dianxinos.powermanager.update.UpdateDialogActivity;

public class axt
    implements android.view.View.OnClickListener
{

    private ka a;
    private Activity b;
    private int c;
    private axl d;

    public axt(Activity activity, int i)
    {
        a = ka.a(activity.getApplicationContext());
        b = activity;
        c = i;
        d = new axl(b.getApplicationContext());
    }

    public void onClick(View view)
    {
        CheckBox checkbox;
        ka ka1;
        int i;
        View view1 = view.getRootView();
        ly.f;
        checkbox = (CheckBox)view1.findViewById(0x7f070093);
        ka1 = ka.a(b.getApplicationContext());
        i = view.getId();
        ly.f;
        if (i != 0x7f070065) goto _L2; else goto _L1
_L1:
        java.util.List list = ka1.n();
        axi axi1 = new axi(b, list, null);
        if (axi1.a())
        {
            axi1.b();
        } else
        {
            axn.a(b);
        }
_L4:
        if (b instanceof UpdateDialogActivity)
        {
            b.finish();
        }
        return;
_L2:
        int j = view.getId();
        ly.f;
        if (j == 0x7f070066)
        {
            a.g();
            if (checkbox.isChecked())
            {
                d.c(true);
            }
        }
        if (true) goto _L4; else goto _L3
_L3:
    }
}
