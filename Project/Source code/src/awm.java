// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import com.dianxinos.powermanager.ui.RunAppBackView;
import java.util.ArrayList;

public class awm extends BaseAdapter
{

    final RunAppBackView a;
    private Context b;
    private ArrayList c;

    public awm(RunAppBackView runappbackview, Context context, ArrayList arraylist)
    {
        a = runappbackview;
        super();
        b = context;
        c = arraylist;
    }

    public int getCount()
    {
        return c.size();
    }

    public Object getItem(int i)
    {
        return c.get(i);
    }

    public long getItemId(int i)
    {
        return (long)i;
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        ImageView imageview;
        if (view == null)
        {
            imageview = new ImageView(b);
            imageview.setLayoutParams(new android.widget.AbsListView.LayoutParams(RunAppBackView.a(a), RunAppBackView.a(a)));
            imageview.setPadding(RunAppBackView.b(a), RunAppBackView.b(a), RunAppBackView.b(a), RunAppBackView.b(a));
        } else
        {
            imageview = (ImageView)view;
        }
        imageview.setImageDrawable((Drawable)c.get(i));
        return imageview;
    }
}
