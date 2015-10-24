// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.view.View;
import android.widget.LinearLayout;
import com.dianxinos.powermanager.ui.Integratelottery.WheelView;
import java.util.LinkedList;
import java.util.List;

public class avw
{

    final WheelView a;
    private List b;
    private List c;
    private WheelView d;

    public avw(WheelView wheelview, WheelView wheelview1)
    {
        a = wheelview;
        super();
        d = wheelview1;
    }

    private View a(List list)
    {
        if (list != null && list.size() > 0)
        {
            View view = (View)list.get(0);
            list.remove(0);
            return view;
        } else
        {
            return null;
        }
    }

    private List a(View view, List list)
    {
        if (list == null)
        {
            list = new LinkedList();
        }
        list.add(view);
        return list;
    }

    private void a(View view, int i)
    {
        int j = d.getViewAdapter().a();
        if ((i < 0 || i >= j) && !d.c())
        {
            c = a(view, c);
            return;
        }
        for (; i < 0; i += j) { }
        int _tmp = i % j;
        b = a(view, b);
    }

    public int a(LinearLayout linearlayout, int i, avt avt1)
    {
        int j = 0;
        int k = i;
        while (j < linearlayout.getChildCount()) 
        {
            if (!avt1.a(i))
            {
                a(linearlayout.getChildAt(j), i);
                linearlayout.removeViewAt(j);
                if (j == 0)
                {
                    k++;
                }
            } else
            {
                j++;
            }
            i++;
        }
        return k;
    }

    public View a()
    {
        return a(b);
    }

    public View b()
    {
        return a(c);
    }

    public void c()
    {
        if (b != null)
        {
            b.clear();
        }
        if (c != null)
        {
            c.clear();
        }
    }
}
