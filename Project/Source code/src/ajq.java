// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.ContentResolver;
import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.view.View;
import android.widget.LinearLayout;

public class ajq extends ajk
{

    private ContentResolver a;
    private ahl p;
    private String q;
    private int r;

    public ajq(Context context, Handler handler, LinearLayout linearlayout)
    {
        super(context, handler, linearlayout);
        j = 8;
    }

    public int a(int i)
    {
        if (i >= p.d(100))
        {
            q = "100%";
            return 0;
        }
        if (i >= p.d(90))
        {
            q = "90%";
            return 0;
        }
        if (i >= p.d(80))
        {
            q = "80%";
            return 1;
        }
        if (i >= p.d(70))
        {
            q = "70%";
            return 2;
        }
        if (i >= p.d(50))
        {
            q = "50%";
            return 3;
        }
        if (i >= p.d(40))
        {
            q = "40%";
            return 4;
        }
        if (i >= p.d(30))
        {
            q = "30%";
            return 5;
        }
        if (i >= p.d(20))
        {
            q = "20%";
            return 6;
        }
        if (i >= p.d(10))
        {
            q = "10%";
            return 7;
        } else
        {
            return 8;
        }
    }

    public void a()
    {
        o = azw.c;
        if (!o)
        {
            l = 1;
            n = false;
            j = 0;
            k = 0;
            return;
        }
        a = c.getContentResolver();
        r = android.provider.Settings.System.getInt(a, "screen_brightness", 255);
        int i = android.provider.Settings.System.getInt(a, "screen_brightness_mode", 1);
        p = new ahl(c);
        if (r <= p.d(10) || i == 1)
        {
            l = 1;
            Context context = c;
            com.dianxinos.dxbs.R.string _tmp = ly.i;
            m = context.getString(0x7f0a032b);
            k = j;
        } else
        {
            l = 3;
            k = a(r);
            Context context1 = c;
            com.dianxinos.dxbs.R.string _tmp1 = ly.i;
            Object aobj[] = new Object[1];
            aobj[0] = q;
            m = context1.getString(0x7f0a032a, aobj);
        }
        n = true;
    }

    public void b()
    {
        if (l != 3) goto _L2; else goto _L1
_L1:
        android.provider.Settings.System.putInt(a, "screen_brightness_mode", 1);
        l = 4;
        k = j;
        Context context1 = c;
        ly.i;
        m = context1.getString(0x7f0a032b);
_L4:
        h();
        return;
_L2:
        if (l == 4)
        {
            android.provider.Settings.System.putInt(a, "screen_brightness_mode", 0);
            l = 3;
            k = a(r);
            Context context = c;
            ly.i;
            Object aobj[] = new Object[1];
            aobj[0] = q;
            m = context.getString(0x7f0a032a, aobj);
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public String c()
    {
        Context context = c;
        com.dianxinos.dxbs.R.string _tmp = ly.i;
        return context.getString(0x7f0a0329);
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

    public void h()
    {
        Message message;
        message = new Message();
        message.what = 17;
        if (l != 3) goto _L2; else goto _L1
_L1:
        message.obj = Float.valueOf((float)r / 255F);
_L4:
        d.sendMessage(message);
        return;
_L2:
        if (l == 4)
        {
            message.obj = Float.valueOf(0.2F);
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public void onClick(View view)
    {
        e();
    }
}
