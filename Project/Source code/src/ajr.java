// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.ContentResolver;
import android.content.Context;
import android.os.Handler;
import android.view.View;
import android.widget.LinearLayout;

public class ajr extends ajk
{

    private aid a;
    private int p;
    private int q;
    private ContentResolver r;

    public ajr(Context context, Handler handler, LinearLayout linearlayout)
    {
        super(context, handler, linearlayout);
        q = -1;
        j = 4;
        r = context.getContentResolver();
    }

    private int h()
    {
        switch (p)
        {
        case 4: // '\004'
        default:
            return 0;

        case 0: // '\0'
            return 4;

        case 1: // '\001'
            return 3;

        case 2: // '\002'
            return 2;

        case 3: // '\003'
            return 1;
        }
    }

    public void a()
    {
        o = azw.j;
        if (!o)
        {
            l = 1;
            n = false;
            this.j = 0;
            k = 0;
            return;
        }
        a = new aid(c);
        p = a.f();
        if (p == 0)
        {
            l = 1;
            Context context1 = c;
            com.dianxinos.dxbs.R.string _tmp = ly.i;
            m = context1.getString(0x7f0a032e);
            k = this.j;
        } else
        {
            l = 3;
            Context context = c;
            com.dianxinos.dxbs.R.string _tmp1 = ly.i;
            Object aobj[] = new Object[1];
            aobj[0] = a.b();
            m = context.getString(0x7f0a032d, aobj);
            q = a.g();
            int i = q;
            int j = 0;
            if (i != 0)
            {
                j = h();
            }
            k = j;
        }
        n = true;
    }

    public void b()
    {
        if (l == 3)
        {
            a.a(0);
            l = 4;
            k = j;
            Context context1 = c;
            com.dianxinos.dxbs.R.string _tmp = ly.i;
            m = context1.getString(0x7f0a032e);
        } else
        if (l == 4)
        {
            Context context;
            Object aobj[];
            if (q == 0)
            {
                android.provider.Settings.System.putInt(r, "screen_off_timeout", -1);
            } else
            {
                a.a(p);
            }
            l = 3;
            k = h();
            context = c;
            com.dianxinos.dxbs.R.string _tmp1 = ly.i;
            aobj = new Object[1];
            aobj[0] = a.b();
            m = context.getString(0x7f0a032d, aobj);
            return;
        }
    }

    public String c()
    {
        Context context = c;
        com.dianxinos.dxbs.R.string _tmp = ly.i;
        return context.getString(0x7f0a032c);
    }

    public String d()
    {
        if (l == 4)
        {
            Context context1 = c;
            com.dianxinos.dxbs.R.string _tmp = ly.i;
            return context1.getString(0x7f0a0349);
        } else
        {
            Context context = c;
            com.dianxinos.dxbs.R.string _tmp1 = ly.i;
            return context.getString(0x7f0a0346);
        }
    }

    public void onClick(View view)
    {
        e();
    }
}
