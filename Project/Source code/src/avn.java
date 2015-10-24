// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.content.res.Resources;
import android.database.DataSetObserver;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import java.lang.ref.SoftReference;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

public class avn
{

    final avl a;
    private List b;
    private List c;
    private int d;
    private int e;
    private android.widget.LinearLayout.LayoutParams f;
    private int g[];

    public avn(avl avl1, Context context)
    {
        int i = 0;
        a = avl1;
        super();
        Resources resources = a.getResources();
        com.dianxinos.dxbs.R.dimen _tmp = ly.d;
        d = resources.getDimensionPixelSize(0x7f08026a);
        Resources resources1 = a.getResources();
        com.dianxinos.dxbs.R.dimen _tmp1 = ly.d;
        e = resources1.getDimensionPixelSize(0x7f08026b);
        f = new android.widget.LinearLayout.LayoutParams(d, e);
        int ai[] = new int[4];
        com.dianxinos.dxbs.R.drawable _tmp2 = ly.e;
        ai[0] = 0x7f0204a1;
        com.dianxinos.dxbs.R.drawable _tmp3 = ly.e;
        ai[1] = 0x7f02049d;
        com.dianxinos.dxbs.R.drawable _tmp4 = ly.e;
        ai[2] = 0x7f02049b;
        com.dianxinos.dxbs.R.drawable _tmp5 = ly.e;
        ai[3] = 0x7f02049c;
        g = ai;
        b = new ArrayList(g.length);
        int ai1[] = g;
        for (int j = ai1.length; i < j; i++)
        {
            int k = ai1[i];
            b.add(new SoftReference(a(k)));
        }

    }

    private Bitmap a(int i)
    {
        return Bitmap.createScaledBitmap(BitmapFactory.decodeResource(avl.a(a).getResources(), i), d, e, true);
    }

    public int a()
    {
        return g.length;
    }

    public View a(int i, View view, ViewGroup viewgroup)
    {
        ImageView imageview;
        Bitmap bitmap;
        if (view != null)
        {
            imageview = (ImageView)view;
        } else
        {
            imageview = new ImageView(avl.a(a));
        }
        imageview.setLayoutParams(f);
        bitmap = (Bitmap)((SoftReference)b.get(i)).get();
        if (bitmap == null)
        {
            bitmap = a(g[i]);
            b.set(i, new SoftReference(bitmap));
        }
        imageview.setImageBitmap(bitmap);
        return imageview;
    }

    public View a(View view, ViewGroup viewgroup)
    {
        return null;
    }

    public void a(DataSetObserver datasetobserver)
    {
        if (c == null)
        {
            c = new LinkedList();
        }
        c.add(datasetobserver);
    }

    public void b(DataSetObserver datasetobserver)
    {
        if (c != null)
        {
            c.remove(datasetobserver);
        }
    }
}
