// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.view.View;
import android.widget.LinearLayout;
import com.dianxinos.powermanager.menu.AutoCleanupSettings;
import java.util.Iterator;
import java.util.List;

public class ait extends ajk
{

    private boolean a;
    private ou p;

    public ait(Context context, Handler handler, LinearLayout linearlayout)
    {
        super(context, handler, linearlayout);
        a = false;
    }

    public void a()
    {
        Context context = c;
        ly.i;
        m = context.getString(0x7f0a02a2);
        boolean flag;
        if (aje.a(c).a() || akx.a(c).b() || ahb.a(c, aoe.g))
        {
            flag = true;
        } else
        {
            flag = false;
        }
        a = flag;
        if (!a) goto _L2; else goto _L1
_L1:
        return;
_L2:
        Iterator iterator = pa.a(c).d("ADUNLOCK").iterator();
        ou ou1;
        do
        {
            if (!iterator.hasNext())
            {
                continue; /* Loop/switch isn't completed */
            }
            ou1 = (ou)iterator.next();
        } while (azy.a(c, ou1.f));
        p = ou1;
        if (p != null) goto _L1; else goto _L3
_L3:
        a = true;
        aje.a(c).c();
        return;
    }

    public void b()
    {
        if (!a && p != null)
        {
            bal.a(c, "dac", "dad", Integer.valueOf(1), true);
            (new ave(c, p)).show();
            return;
        } else
        {
            bal.a(c, "dac", "daac", Integer.valueOf(1), true);
            aje.a(c).c();
            Intent intent = new Intent(c, com/dianxinos/powermanager/menu/AutoCleanupSettings);
            c.startActivity(intent);
            return;
        }
    }

    public String c()
    {
        Context context = c;
        com.dianxinos.dxbs.R.string _tmp = ly.i;
        return context.getString(0x7f0a02a2);
    }

    public String d()
    {
        if (a)
        {
            Context context1 = c;
            com.dianxinos.dxbs.R.string _tmp = ly.i;
            return context1.getString(0x7f0a02a1);
        } else
        {
            Context context = c;
            com.dianxinos.dxbs.R.string _tmp1 = ly.i;
            return context.getString(0x7f0a02f6);
        }
    }

    public void onClick(View view)
    {
        b();
    }
}
