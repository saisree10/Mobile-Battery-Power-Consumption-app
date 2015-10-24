// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.view.View;
import android.widget.LinearLayout;

public class ajd extends ajk
{

    private avd a;

    public ajd(Context context, Handler handler, LinearLayout linearlayout)
    {
        super(context, handler, linearlayout);
    }

    public void a()
    {
        Context context = c;
        com.dianxinos.dxbs.R.string _tmp = ly.i;
        m = context.getString(0x7f0a02ba);
    }

    public void b()
    {
        if (azy.a(c, "com.dianxinos.optimizer.duplay"))
        {
            Intent intent = new Intent();
            intent.setPackage("com.dianxinos.optimizer.duplay");
            intent.setAction("android.intent.action.MAIN");
            c.startActivity(intent);
        } else
        {
            if (a == null)
            {
                a = new avd(c);
                a.a();
            }
            a.show();
        }
        bal.a(c, "rdoc", "rdo", Integer.valueOf(1));
    }

    public String c()
    {
        Context context = c;
        com.dianxinos.dxbs.R.string _tmp = ly.i;
        return context.getString(0x7f0a02b9);
    }

    public String d()
    {
        Context context = c;
        com.dianxinos.dxbs.R.string _tmp = ly.i;
        return context.getString(0x7f0a02a1);
    }

    public void onClick(View view)
    {
        b();
    }
}
