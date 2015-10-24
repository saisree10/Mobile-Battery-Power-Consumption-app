// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.LinearLayout;
import com.dianxinos.powermanager.ui.RunAppBackView;
import java.util.ArrayList;

public class ajo extends ajk
{

    private boolean a;
    private boolean p;
    private View q;
    private RunAppBackView r;
    private ArrayList s;

    public ajo(Context context, Handler handler, LinearLayout linearlayout)
    {
        super(context, handler, linearlayout);
        j = 25;
    }

    static View a(ajo ajo1)
    {
        return ajo1.q;
    }

    static RunAppBackView b(ajo ajo1)
    {
        return ajo1.r;
    }

    public void a()
    {
        if (a || !n || p)
        {
            return;
        }
        p = true;
        k = 0;
        s = aze.a(c);
        int i = s.size();
        if (i > 0 && aaa.a(c).a())
        {
            l = 5;
            Context context1 = c;
            com.dianxinos.dxbs.R.string _tmp = ly.i;
            Object aobj[] = new Object[1];
            aobj[0] = Integer.valueOf(i);
            m = context1.getString(0x7f0a0315, aobj);
            return;
        } else
        {
            n = false;
            l = 1;
            Context context = c;
            com.dianxinos.dxbs.R.string _tmp1 = ly.i;
            m = context.getString(0x7f0a0316);
            return;
        }
    }

    public void a(LayoutInflater layoutinflater)
    {
        super.a(layoutinflater);
        if (n)
        {
            View view = f;
            com.dianxinos.dxbs.R.id _tmp = ly.f;
            q = view.findViewById(0x7f0700b4);
            View view1 = f;
            com.dianxinos.dxbs.R.id _tmp1 = ly.f;
            r = (RunAppBackView)view1.findViewById(0x7f0700b3);
            q.setVisibility(8);
            r.setVisibility(0);
            r.a(s, d);
        }
    }

    public void b()
    {
        if (n)
        {
            r.a(new ajp(this));
            k = j;
            a = true;
            if (n && l != 1)
            {
                aaa.a(c).a(300, true);
                int i = s.size();
                if (i > 0)
                {
                    Context context1 = c;
                    com.dianxinos.dxbs.R.string _tmp = ly.i;
                    Object aobj[] = new Object[1];
                    aobj[0] = Integer.valueOf(i);
                    m = context1.getString(0x7f0a033d, aobj);
                } else
                {
                    Context context = c;
                    com.dianxinos.dxbs.R.string _tmp1 = ly.i;
                    m = context.getString(0x7f0a033e);
                }
                l = 1;
                return;
            }
        }
    }

    public String c()
    {
        Context context = c;
        com.dianxinos.dxbs.R.string _tmp = ly.i;
        return context.getString(0x7f0a0314);
    }

    public String d()
    {
        Context context = c;
        com.dianxinos.dxbs.R.string _tmp = ly.i;
        return context.getString(0x7f0a0344);
    }
}
