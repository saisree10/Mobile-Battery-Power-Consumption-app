// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.view.View;
import android.widget.LinearLayout;
import com.dianxinos.powermanager.menu.AutoCleanupSettings;

public class aiv extends ajk
{

    private amb a;

    public aiv(Context context, Handler handler, LinearLayout linearlayout)
    {
        super(context, handler, linearlayout);
        a = amb.a(context);
        j = 2;
    }

    public void a()
    {
        if (a.h())
        {
            l = 1;
            Context context1 = c;
            com.dianxinos.dxbs.R.string _tmp = ly.i;
            m = context1.getString(0x7f0a033c);
            k = j;
            return;
        } else
        {
            l = 3;
            Context context = c;
            com.dianxinos.dxbs.R.string _tmp1 = ly.i;
            m = context.getString(0x7f0a033b);
            return;
        }
    }

    public void b()
    {
        Intent intent = new Intent(c, com/dianxinos/powermanager/menu/AutoCleanupSettings);
        intent.addFlags(0x10000000);
        c.startActivity(intent);
        k = j;
    }

    public String c()
    {
        Context context = c;
        com.dianxinos.dxbs.R.string _tmp = ly.i;
        return context.getString(0x7f0a0333);
    }

    public String d()
    {
        Context context = c;
        com.dianxinos.dxbs.R.string _tmp = ly.i;
        return context.getString(0x7f0a0343);
    }

    public void onClick(View view)
    {
        e();
    }
}
