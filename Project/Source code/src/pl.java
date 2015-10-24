// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.TranslateAnimation;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import java.util.List;

public class pl extends ArrayAdapter
{

    mf a;
    ox b;
    private Context c;
    private LayoutInflater d;
    private int e;

    public pl(Context context, List list)
    {
        super(context, 0, list);
        e = -1;
        c = context;
        d = LayoutInflater.from(context);
        a = mf.a(context);
        b = a(context);
    }

    private View a(int i, View view, ViewGroup viewgroup, ou ou1)
    {
        pn pn1;
        TextView textview;
        Context context;
        int j;
        Object aobj[];
        if (view == null)
        {
            view = d.inflate(oj.toolbox_apps_recently_item, viewgroup, false);
            pn pn2 = new pn();
            pn2.b = (ImageView)view.findViewById(oi.toolbox_apps_listitem_icon);
            pn2.c = (TextView)view.findViewById(oi.toolbox_apps_listitem_name);
            pn2.d = (TextView)view.findViewById(oi.toolbox_apps_listitem_desc);
            pn2.a = view.findViewById(oi.toolbox_apps_listitem_icon_installed);
            pn2.e = (TextView)view.findViewById(oi.toolbox_apps_listitem_gold_value);
            pn2.f = (TextView)view.findViewById(oi.toolbox_apps_listitem_downloads);
            View view1 = view.findViewById(oi.toolbox_apps_listitem_close);
            pn2.h = new pm(c, this);
            view1.setOnClickListener(pn2.h);
            pn2.i = a();
            view.setTag(pn2);
            pn1 = pn2;
        } else
        {
            view.clearAnimation();
            pn1 = (pn)view.getTag();
        }
        pn1.h.a(ou1);
        pn1.c.setText(ou1.e);
        pn1.d.setText(ou1.h);
        if (ou1.t || ou1.p <= 0 || a.a(Long.toString(ou1.d), "22"))
        {
            pn1.e.setVisibility(8);
        } else
        {
            pn1.e.setText((new StringBuilder()).append("+").append(ou1.p).toString());
            pn1.e.setVisibility(0);
        }
        ov.a().a(ou1.l, pn1.b, b);
        if (ou1.t)
        {
            pn1.a.setVisibility(0);
        } else
        {
            pn1.a.setVisibility(8);
        }
        textview = pn1.f;
        context = c;
        j = ok.toolbox_downloads;
        aobj = new Object[1];
        aobj[0] = Long.valueOf(ou1.s);
        textview.setText(context.getString(j, aobj));
        if (i > 3 && e < i)
        {
            view.startAnimation(pn1.i);
        }
        e = i;
        return view;
    }

    static TranslateAnimation a()
    {
        TranslateAnimation translateanimation = new TranslateAnimation(0.0F, 0.0F, 150F, 0.0F);
        translateanimation.setInterpolator(new DecelerateInterpolator());
        translateanimation.setDuration(500L);
        translateanimation.setFillBefore(true);
        return translateanimation;
    }

    private View b(int i, View view, ViewGroup viewgroup, ou ou1)
    {
        pn pn1;
        TextView textview;
        Context context;
        int j;
        Object aobj[];
        if (view == null)
        {
            view = d.inflate(oj.toolbox_apps_listviewgold_item, viewgroup, false);
            pn pn2 = new pn();
            pn2.b = (ImageView)view.findViewById(oi.toolbox_apps_listitem_icon);
            pn2.c = (TextView)view.findViewById(oi.toolbox_apps_listitem_name);
            pn2.d = (TextView)view.findViewById(oi.toolbox_apps_listitem_desc);
            pn2.a = view.findViewById(oi.toolbox_apps_listitem_icon_installed);
            pn2.e = (TextView)view.findViewById(oi.toolbox_apps_listitem_gold_value);
            pn2.f = (TextView)view.findViewById(oi.toolbox_apps_listitem_downloads);
            pn2.g = view.findViewById(oi.toolbox_apps_listitem_icon_hot);
            pn2.i = a();
            view.setTag(pn2);
            pn1 = pn2;
        } else
        {
            view.clearAnimation();
            pn1 = (pn)view.getTag();
        }
        pn1.c.setText(ou1.e);
        pn1.d.setText(ou1.g);
        if (ou1.t || ou1.p <= 0 || a.a(Long.toString(ou1.d), "22"))
        {
            pn1.e.setVisibility(8);
        } else
        {
            pn1.e.setText((new StringBuilder()).append("+").append(ou1.p).toString());
            pn1.e.setVisibility(0);
        }
        ov.a().a(ou1.l, pn1.b, b);
        if (ou1.t)
        {
            pn1.a.setVisibility(0);
        } else
        {
            pn1.a.setVisibility(8);
        }
        if (ou1.r)
        {
            pn1.g.setVisibility(0);
        } else
        {
            pn1.g.setVisibility(8);
        }
        textview = pn1.f;
        context = c;
        j = ok.toolbox_downloads;
        aobj = new Object[1];
        aobj[0] = Long.valueOf(ou1.s);
        textview.setText(context.getString(j, aobj));
        if (i > 3 && e < i)
        {
            view.startAnimation(pn1.i);
        }
        e = i;
        return view;
    }

    protected ox a(Context context)
    {
        ox ox1 = new ox();
        ox1.a = oh.toolbox_default_app_icon;
        int i = context.getResources().getDimensionPixelSize(og.toolbox_apps_listview_item_icon_size);
        ox1.b = i;
        ox1.c = i;
        return ox1;
    }

    public int getItemViewType(int i)
    {
        return !((ou)getItem(i)).u ? 1 : 0;
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        ou ou1 = (ou)getItem(i);
        if (ou1.u)
        {
            return a(i, view, viewgroup, ou1);
        } else
        {
            return b(i, view, viewgroup, ou1);
        }
    }

    public int getViewTypeCount()
    {
        return 2;
    }
}
