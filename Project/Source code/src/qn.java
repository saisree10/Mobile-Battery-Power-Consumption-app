// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import java.util.List;

class qn extends ArrayAdapter
{

    final ql a;
    private Context b;
    private LayoutInflater c;

    public qn(ql ql1, Context context, List list)
    {
        a = ql1;
        super(context, 0, list);
        b = context;
        c = LayoutInflater.from(b);
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        ou ou1 = (ou)getItem(i);
        qo qo1;
        if (view == null)
        {
            view = c.inflate(oj.toolbox_apps_listview_item, viewgroup, false);
            qo qo2 = new qo(null);
            qo2.b = (ImageView)view.findViewById(oi.toolbox_apps_listitem_icon);
            qo2.c = (TextView)view.findViewById(oi.toolbox_apps_listitem_name);
            qo2.d = (TextView)view.findViewById(oi.toolbox_apps_listitem_desc);
            qo2.a = (ImageView)view.findViewById(oi.toolbox_apps_listitem_icon_installed);
            view.setTag(qo2);
            qo1 = qo2;
        } else
        {
            qo1 = (qo)view.getTag();
        }
        qo1.c.setText(ou1.e);
        qo1.d.setText(ou1.h);
        ov.a().a(ou1.l, qo1.b, a.e);
        if (ou1.t)
        {
            qo1.a.setVisibility(0);
            return view;
        } else
        {
            qo1.a.setVisibility(8);
            return view;
        }
    }
}
