// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.support.v4.app.Fragment;
import android.view.ViewGroup;
import com.dianxinos.common.ui.fragment.TabInfo;
import java.util.ArrayList;

public class rf extends z
{

    ArrayList a;
    Context b;
    final rd c;

    public rf(rd rd, Context context, t t, ArrayList arraylist)
    {
        c = rd;
        super(t);
        a = null;
        b = null;
        a = arraylist;
        b = context;
    }

    public int a(Object obj)
    {
        return -2;
    }

    public Fragment a(int i)
    {
        rc rc1;
        if (a != null && i < a.size())
        {
            TabInfo tabinfo = (TabInfo)a.get(i);
            if (tabinfo == null)
            {
                return null;
            }
            rc1 = tabinfo.c();
        } else
        {
            rc1 = null;
        }
        return rc1;
    }

    public Object a(ViewGroup viewgroup, int i)
    {
        TabInfo tabinfo = (TabInfo)a.get(i);
        rc rc1 = (rc)super.a(viewgroup, i);
        tabinfo.b = rc1;
        return rc1;
    }

    public int b()
    {
        if (a != null && a.size() > 0)
        {
            return a.size();
        } else
        {
            return 0;
        }
    }
}
