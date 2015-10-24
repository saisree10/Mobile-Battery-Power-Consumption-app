// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Point;
import android.os.Handler;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.View;
import android.view.WindowManager;
import android.widget.LinearLayout;
import android.widget.TextView;

public class auq extends LinearLayout
{

    private WindowManager a;
    private Context b;
    private boolean c;
    private Handler d;

    public auq(Context context)
    {
        super(context);
        c = false;
        d = new aur(this);
        b = context;
    }

    public auq(Context context, String s)
    {
        this(context);
        android.view.WindowManager.LayoutParams layoutparams = new android.view.WindowManager.LayoutParams();
        layoutparams.type = 2002;
        layoutparams.format = 1;
        layoutparams.flags = 8 | layoutparams.flags;
        layoutparams.width = -2;
        layoutparams.height = -2;
        layoutparams.gravity = 51;
        a = (WindowManager)context.getApplicationContext().getSystemService("window");
        Display display;
        if (a != null)
        {
            if ((display = a.getDefaultDisplay()) != null)
            {
                Resources resources = context.getResources();
                com.dianxinos.dxbs.R.dimen _tmp = ly.d;
                int i = (int)resources.getDimension(0x7f080217);
                Resources resources1 = context.getResources();
                com.dianxinos.dxbs.R.dimen _tmp1 = ly.d;
                int j = (int)resources1.getDimension(0x7f080215);
                LayoutInflater layoutinflater;
                View view;
                if (android.os.Build.VERSION.SDK_INT > 12)
                {
                    Point point = new Point();
                    display.getSize(point);
                    layoutparams.x = (point.x - j) / 2;
                    layoutparams.y = (95 * point.y) / 100 - i;
                } else
                {
                    layoutparams.x = (display.getWidth() - j) / 2;
                    layoutparams.y = (95 * display.getHeight()) / 100 - i;
                }
                if (layoutparams.y < 0)
                {
                    layoutparams.y = 0;
                }
                layoutinflater = (LayoutInflater)context.getSystemService("layout_inflater");
                com.dianxinos.dxbs.R.layout _tmp2 = ly.g;
                view = layoutinflater.inflate(0x7f030015, this);
                com.dianxinos.dxbs.R.id _tmp3 = ly.f;
                ((TextView)view.findViewById(0x7f070069)).setText(s);
                d.sendEmptyMessageDelayed(273, 4000L);
                com.dianxinos.dxbs.R.id _tmp4 = ly.f;
                view.findViewById(0x7f070067).setOnClickListener(new aus(this, context));
                a.addView(this, layoutparams);
                c = true;
                bal.a(b, "birc", "cfvd", Integer.valueOf(1));
                return;
            }
        }
    }

    static boolean a(auq auq1)
    {
        return auq1.c;
    }

    static boolean a(auq auq1, boolean flag)
    {
        auq1.c = flag;
        return flag;
    }

    static WindowManager b(auq auq1)
    {
        return auq1.a;
    }

    static Context c(auq auq1)
    {
        return auq1.b;
    }

    static Handler d(auq auq1)
    {
        return auq1.d;
    }
}
