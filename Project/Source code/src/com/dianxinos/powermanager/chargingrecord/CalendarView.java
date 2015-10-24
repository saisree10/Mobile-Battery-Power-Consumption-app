// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.dianxinos.powermanager.chargingrecord;

import afs;
import afu;
import afv;
import afw;
import afx;
import afy;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.os.Handler;
import android.text.Html;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.TranslateAnimation;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import ly;

public class CalendarView extends LinearLayout
    implements android.view.View.OnClickListener, android.view.View.OnTouchListener
{

    private int A;
    private int B;
    private Resources C;
    private PopupWindow D;
    private LayoutInflater E;
    private View F;
    private afv G;
    private boolean H;
    private volatile boolean I;
    private afs J;
    private Handler K;
    private List L;
    private ArrayList a;
    private LinearLayout b;
    private ImageView c;
    private int d;
    private TranslateAnimation e;
    private TranslateAnimation f;
    private Bitmap g;
    private Calendar h;
    private Calendar i;
    private Calendar j;
    private Calendar k;
    private int l;
    private int m;
    private int n;
    private TextView o;
    private TextView p;
    private TextView q;
    private int r;
    private int s;
    private Context t;
    private int u;
    private int v;
    private final int w = 6;
    private final int x = 7;
    private int y;
    private int z;

    public CalendarView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        a = new ArrayList();
        b = null;
        c = null;
        d = 0;
        g = null;
        h = Calendar.getInstance();
        i = Calendar.getInstance();
        j = Calendar.getInstance();
        k = Calendar.getInstance();
        l = 2;
        m = 0;
        n = 0;
        r = 0;
        s = 0;
        y = 0;
        z = 0;
        A = 0;
        B = 0;
        C = null;
        G = null;
        H = true;
        I = true;
        J = null;
        K = new afw(this);
        L = new LinkedList();
        t = context;
        C = t.getResources();
        J = afs.a(t);
        l = 2;
        E = LayoutInflater.from(t);
        LayoutInflater layoutinflater = E;
        com.dianxinos.dxbs.R.layout _tmp = ly.g;
        F = layoutinflater.inflate(0x7f030016, null);
        D = new PopupWindow(F);
        D.setInputMethodMode(2);
        D.setTouchable(false);
        Context context1 = getContext();
        com.dianxinos.dxbs.R.layout _tmp1 = ly.g;
        inflate(context1, 0x7f030012, this);
    }

    private int a(float f1, float f2)
    {
        return (int)f1 / A + 7 * ((int)f2 / B);
    }

    public static Bitmap a(CalendarView calendarview, Bitmap bitmap)
    {
        calendarview.g = bitmap;
        return bitmap;
    }

    public static ImageView a(CalendarView calendarview)
    {
        return calendarview.c;
    }

    private LinearLayout a(int i1)
    {
        LinearLayout linearlayout = new LinearLayout(t);
        linearlayout.setLayoutParams(new android.widget.LinearLayout.LayoutParams(-1, -2));
        linearlayout.setOrientation(i1);
        return linearlayout;
    }

    private void a(int i1, int j1, int k1)
    {
        View view = F;
        com.dianxinos.dxbs.R.id _tmp = ly.f;
        TextView textview = (TextView)view.findViewById(0x7f07006a);
        int l1;
        int i2;
        int j2;
        int k2;
        if (j1 == 0 && k1 == 0)
        {
            Resources resources1 = C;
            com.dianxinos.dxbs.R.string _tmp1 = ly.i;
            textview.setText(resources1.getString(0x7f0a020e));
        } else
        {
            Resources resources = C;
            com.dianxinos.dxbs.R.string _tmp2 = ly.i;
            Object aobj[] = new Object[2];
            aobj[0] = Integer.valueOf(k1);
            aobj[1] = Integer.valueOf(j1);
            textview.setText(Html.fromHtml(resources.getString(0x7f0a020d, aobj)));
        }
        l1 = i1 % 7;
        i2 = i1 / 7;
        j2 = (l1 * A - d / 7) + A / 2 + y;
        k2 = (i2 + 2) * B;
        if (D.isShowing())
        {
            D.update(j2, k2, -2, -2);
            return;
        } else
        {
            D.showAtLocation(b, 51, j2, k2);
            D.update(j2, k2, -2, -2);
            return;
        }
    }

    private void a(boolean flag)
    {
        List list = L;
        list;
        JVM INSTR monitorenter ;
        for (Iterator iterator = L.iterator(); iterator.hasNext(); ((afy)iterator.next()).a(flag)) { }
        break MISSING_BLOCK_LABEL_52;
        Exception exception;
        exception;
        list;
        JVM INSTR monitorexit ;
        throw exception;
        list;
        JVM INSTR monitorexit ;
    }

    public static Bitmap b(CalendarView calendarview)
    {
        return calendarview.g;
    }

    public static LinearLayout c(CalendarView calendarview)
    {
        return calendarview.b;
    }

    private void d()
    {
        b.setOnTouchListener(this);
        a.clear();
        for (int i1 = 0; i1 < 6; i1++)
        {
            b.addView(e());
        }

    }

    private View e()
    {
        LinearLayout linearlayout = a(0);
        A = d / 7;
        Resources resources = t.getResources();
        com.dianxinos.dxbs.R.dimen _tmp = ly.d;
        B = resources.getDimensionPixelSize(0x7f080180);
        int i1 = 0;
        while (i1 < 7) 
        {
            afv afv1;
            if (i1 == 0 || i1 == 6)
            {
                afv1 = new afv(t, (d - 7 * A) / 2 + A, B);
            } else
            {
                afv1 = new afv(t, A, B);
            }
            a.add(afv1);
            linearlayout.addView(afv1);
            i1++;
        }
        return linearlayout;
    }

    private void f()
    {
        int i1;
        int j1;
        int k1;
        i1 = 6;
        m = h.get(2);
        n = h.get(1);
        h();
        h.set(5, 1);
        j1 = l;
        k1 = 0;
        if (j1 == 2)
        {
            k1 = -2 + h.get(7);
            if (k1 < 0)
            {
                k1 = i1;
            }
        }
        if (j1 != 1) goto _L2; else goto _L1
_L1:
        k1 = -1 + h.get(7);
        if (k1 >= 0) goto _L2; else goto _L3
_L3:
        h.add(7, -i1);
        return;
_L2:
        i1 = k1;
        if (true) goto _L3; else goto _L4
_L4:
    }

    private void g()
    {
        j.setTimeInMillis(h.getTimeInMillis());
        r = 0;
        s = 0;
        int i1 = 0;
        while (i1 < a.size()) 
        {
            int j1 = j.get(1);
            int k1 = j.get(2);
            int l1 = j.get(5);
            int i2 = j.get(7);
            afv afv1 = (afv)a.get(i1);
            boolean flag;
            boolean flag1;
            if (i.get(1) == j1 && i.get(2) == k1 && i.get(5) == l1)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            if (i2 == 7 || i2 == 1)
            {
                flag1 = true;
            } else
            {
                flag1 = false;
            }
            afv1.a(j1, k1, l1, m, flag, flag1);
            if (afv1.getCurrentMonth())
            {
                afu afu1 = J.a(j1, k1, l1);
                afv1.setChargingData(afu1);
                if (afu1 != null)
                {
                    r = r + afu1.d;
                    s = s + afu1.e;
                }
            }
            j.add(5, 1);
            i1++;
        }
        a(I);
        invalidate();
    }

    private Bitmap getScreenView()
    {
        if (!b.isDrawingCacheEnabled())
        {
            b.setDrawingCacheEnabled(true);
        }
        b.measure(android.view.View.MeasureSpec.makeMeasureSpec(u, 0x80000000), android.view.View.MeasureSpec.makeMeasureSpec(v, 0x80000000));
        b.layout(0, 0, b.getMeasuredWidth(), b.getMeasuredHeight());
        b.buildDrawingCache();
        return b.getDrawingCache();
    }

    private void getStartCalendar()
    {
        i.setTimeInMillis(System.currentTimeMillis());
        i.setFirstDayOfWeek(l);
        if (k.getTimeInMillis() == 0L)
        {
            h.setTimeInMillis(System.currentTimeMillis());
            h.setFirstDayOfWeek(l);
        } else
        {
            h.setTimeInMillis(k.getTimeInMillis());
            h.setFirstDayOfWeek(l);
        }
        f();
    }

    private void h()
    {
        int i1 = 1 + m;
        if (i1 < 10)
        {
            o.setText((new StringBuilder()).append(n).append(" - 0").append(i1).toString());
            return;
        } else
        {
            o.setText((new StringBuilder()).append(n).append(" - ").append(i1).toString());
            return;
        }
    }

    private void i()
    {
        if (D.isShowing())
        {
            D.dismiss();
        }
    }

    private void j()
    {
        m = 1 + m;
        if (m == 12)
        {
            m = 0;
            n = 1 + n;
        }
        e = new TranslateAnimation(u, 0.0F, 0.0F, 0.0F);
        e.setDuration(200L);
        e.setInterpolator(new DecelerateInterpolator());
        f = new TranslateAnimation(0.0F, -u, 0.0F, 0.0F);
        f.setDuration(200L);
        f.setInterpolator(new DecelerateInterpolator());
        a(n, m);
    }

    private void k()
    {
        m = -1 + m;
        if (m == -1)
        {
            m = 11;
            n = -1 + n;
        }
        e = new TranslateAnimation(-u, 0.0F, 0.0F, 0.0F);
        e.setDuration(200L);
        e.setInterpolator(new DecelerateInterpolator());
        f = new TranslateAnimation(0.0F, u, 0.0F, 0.0F);
        f.setDuration(200L);
        f.setInterpolator(new DecelerateInterpolator());
        a(n, m);
    }

    public void a()
    {
        i.setTimeInMillis(System.currentTimeMillis());
        i.setFirstDayOfWeek(l);
        if (n == i.get(1) && m == i.get(2))
        {
            return;
        }
        n = i.get(1);
        m = i.get(2);
        if (h.after(i))
        {
            e = new TranslateAnimation(-u, 0.0F, 0.0F, 0.0F);
            e.setDuration(200L);
            e.setInterpolator(new DecelerateInterpolator());
            f = new TranslateAnimation(0.0F, u, 0.0F, 0.0F);
            f.setDuration(200L);
            f.setInterpolator(new DecelerateInterpolator());
        } else
        {
            e = new TranslateAnimation(u, 0.0F, 0.0F, 0.0F);
            e.setDuration(200L);
            e.setInterpolator(new DecelerateInterpolator());
            f = new TranslateAnimation(0.0F, -u, 0.0F, 0.0F);
            f.setDuration(200L);
            f.setInterpolator(new DecelerateInterpolator());
        }
        a(n, m);
    }

    public void a(int i1, int j1)
    {
        g = getScreenView();
        f.setAnimationListener(new afx(this));
        m = j1;
        n = i1;
        h.clear();
        h.setFirstDayOfWeek(l);
        h.set(2, m);
        h.set(1, n);
        f();
        g();
        if (g != null)
        {
            c.setImageBitmap(g);
            c.setVisibility(0);
            c.startAnimation(f);
            b.startAnimation(e);
        }
        i.setTimeInMillis(System.currentTimeMillis());
        if (n == i.get(1) && m == i.get(2))
        {
            I = true;
            a(I);
            return;
        } else
        {
            I = false;
            a(I);
            return;
        }
    }

    public void a(afy afy1)
    {
        synchronized (L)
        {
            if (!L.contains(afy1))
            {
                L.add(afy1);
            }
        }
        afy1.a(I);
        return;
        exception;
        list;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void b()
    {
        Iterator iterator = a.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            afv afv1 = (afv)iterator.next();
            if (afv1.getNormalCharging() > 0 && afv1.getCurrentMonth())
            {
                afv1.a();
            }
        } while (true);
    }

    public void b(afy afy1)
    {
        synchronized (L)
        {
            L.remove(afy1);
        }
        return;
        exception;
        list;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void c()
    {
        Iterator iterator = a.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            afv afv1 = (afv)iterator.next();
            if (afv1.getHealthCharging() > 0 && afv1.getCurrentMonth())
            {
                afv1.b();
            }
        } while (true);
    }

    public int getTotalHealthCharger()
    {
        return s;
    }

    public int getTotalNormalCharger()
    {
        return r;
    }

    public void onClick(View view)
    {
        if (view == p)
        {
            k();
        } else
        {
            if (view == q)
            {
                j();
                return;
            }
            if (view == o)
            {
                a();
                return;
            }
        }
    }

    protected void onFinishInflate()
    {
        super.onFinishInflate();
        com.dianxinos.dxbs.R.id _tmp = ly.f;
        o = (TextView)findViewById(0x7f070057);
        o.setOnClickListener(this);
        com.dianxinos.dxbs.R.id _tmp1 = ly.f;
        p = (TextView)findViewById(0x7f070056);
        p.setOnClickListener(this);
        com.dianxinos.dxbs.R.id _tmp2 = ly.f;
        q = (TextView)findViewById(0x7f070058);
        q.setOnClickListener(this);
        com.dianxinos.dxbs.R.id _tmp3 = ly.f;
        b = (LinearLayout)findViewById(0x7f070059);
        com.dianxinos.dxbs.R.id _tmp4 = ly.f;
        c = (ImageView)findViewById(0x7f07005a);
        getStartCalendar();
    }

    protected void onLayout(boolean flag, int i1, int j1, int k1, int l1)
    {
        super.onLayout(flag, i1, j1, k1, l1);
        d = getWidth();
        y = b.getLeft();
        d = d - 2 * y;
        if (H)
        {
            d();
            g();
            H = false;
            K.sendEmptyMessage(1);
        }
        u = b.getWidth();
        v = b.getHeight();
    }

    public boolean onTouch(View view, MotionEvent motionevent)
    {
        int i1 = motionevent.getAction();
        float f1 = motionevent.getX();
        float f2 = motionevent.getY();
        if (G != null)
        {
            G.a(false);
        }
        G = null;
        if (f1 > (float)u || f1 < 0.0F)
        {
            i();
        } else
        {
            if (i1 == 0)
            {
                int k1 = a(f1, f2);
                if (k1 > 41 || k1 < 0)
                {
                    i();
                    return true;
                }
                G = (afv)a.get(k1);
                if (G != null && G.getCurrentMonth())
                {
                    G.a(true);
                    a(k1, G.getNormalCharging(), G.getHealthCharging());
                    return true;
                } else
                {
                    i();
                    return true;
                }
            }
            if (i1 == 2)
            {
                int j1 = a(motionevent.getX(), motionevent.getY());
                if (j1 > 41 || j1 < 0)
                {
                    i();
                    return true;
                }
                G = (afv)a.get(j1);
                if (G != null && G.getCurrentMonth())
                {
                    G.a(true);
                    a(j1, G.getNormalCharging(), G.getHealthCharging());
                    return true;
                } else
                {
                    i();
                    return true;
                }
            }
            if (i1 == 1 || i1 == 3)
            {
                G = null;
                i();
                return true;
            }
        }
        return true;
    }
}
