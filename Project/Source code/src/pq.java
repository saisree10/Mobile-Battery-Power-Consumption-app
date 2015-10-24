// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.app.Dialog;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.AnimationDrawable;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;

public class pq extends Dialog
{

    AnimationDrawable a;
    private TextView b;
    private String c;
    private ImageView d;
    private Context e;
    private View f;
    private View g;
    private View h;
    private View i;
    private View j;
    private ImageView k;
    private TextView l;
    private TextView m;
    private View n;
    private View o;
    private ox p;
    private Runnable q;

    public pq(Context context, int i1)
    {
        super(context, i1);
        q = new pr(this);
        e = context;
        setContentView(oj.toolbox_loadingdialog_tctb);
        p = a(context);
        b = (TextView)findViewById(oi.toolbox_loading_des);
        d = (ImageView)findViewById(oi.toolbox_loading_dots);
        a = (AnimationDrawable)d.getDrawable();
        f = findViewById(oi.toolbox_app_tctb_title);
        g = findViewById(oi.toolbox_app_tctb_subtitle);
        h = findViewById(oi.toolbox_app_tctb_line);
        i = findViewById(oi.toolbox_app_tctb_recommend);
        j = findViewById(oi.toolbox_apps_tctb);
        k = (ImageView)findViewById(oi.toolbox_apps_tctb_ad_icon);
        l = (TextView)findViewById(oi.toolbox_apps_tctb_ad_title);
        m = (TextView)findViewById(oi.toolbox_apps_tctb_ad_downlaod);
        n = findViewById(oi.toolbox_tctb_space);
        o = findViewById(oi.toolbox_loading_close);
        o.setOnClickListener(new ps(this));
    }

    private ox a(Context context)
    {
        ox ox1 = new ox();
        ox1.a = oh.toolbox_default_app_icon;
        int i1 = context.getResources().getDimensionPixelSize(og.toolbox_apps_listview_item_icon_size);
        ox1.b = i1;
        ox1.c = i1;
        return ox1;
    }

    private void a()
    {
        d.removeCallbacks(q);
        d.post(q);
    }

    private void b()
    {
        b.setVisibility(0);
        f.setVisibility(8);
        g.setVisibility(8);
        h.setVisibility(8);
        i.setVisibility(8);
        j.setVisibility(8);
        n.setVisibility(8);
        o.setVisibility(8);
    }

    private void c()
    {
        b.setVisibility(8);
        f.setVisibility(0);
        g.setVisibility(0);
        h.setVisibility(0);
        i.setVisibility(0);
        j.setVisibility(0);
        n.setVisibility(0);
        o.setVisibility(0);
    }

    public void a(int i1)
    {
        b(e.getString(i1));
    }

    public void a(String s)
    {
        c = s;
        if (isShowing())
        {
            b.setText(c);
        }
    }

    public void a(ou ou1)
    {
        c();
        ov.a().a(ou1.l, k, p);
        l.setText(ou1.e);
        TextView textview = m;
        Context context = e;
        int i1 = ok.toolbox_downloads;
        Object aobj[] = new Object[1];
        aobj[0] = Long.valueOf(ou1.s);
        textview.setText(context.getString(i1, aobj));
        show();
    }

    public void b(String s)
    {
        a(s);
        b();
        show();
    }

    protected void onStart()
    {
        super.onStart();
        b.setText(c);
        a();
    }
}
