// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RectF;
import android.view.View;
import java.util.Calendar;

public class afv extends View
{

    private boolean a;
    private boolean b;
    private boolean c;
    private volatile boolean d;
    private volatile boolean e;
    private volatile boolean f;
    private volatile boolean g;
    private int h;
    private int i;
    private int j;
    private String k;
    private int l;
    private int m;
    private Paint n;
    private RectF o;
    private float p;
    private Context q;
    private Resources r;
    private afu s;
    private int t;
    private int u;
    private Bitmap v;
    private Bitmap w;

    public afv(Context context, int i1, int j1)
    {
        super(context);
        a = false;
        b = false;
        c = false;
        d = false;
        e = false;
        f = false;
        g = false;
        k = "";
        n = new Paint();
        o = new RectF();
        p = 0.0F;
        s = null;
        t = 0;
        u = 0;
        v = null;
        w = null;
        q = context;
        r = q.getResources();
        l = i1;
        m = j1;
        Resources resources = r;
        com.dianxinos.dxbs.R.dimen _tmp = ly.d;
        p = resources.getDimension(0x7f0800a1);
        setLayoutParams(new android.widget.LinearLayout.LayoutParams(l, m));
        a(false);
    }

    private void a(Canvas canvas)
    {
        Paint paint = n;
        Resources resources = r;
        com.dianxinos.dxbs.R.color _tmp = ly.c;
        paint.setColor(resources.getColor(0x7f090076));
        n.setStyle(android.graphics.Paint.Style.FILL_AND_STROKE);
        n.setAntiAlias(true);
        canvas.drawRect(o, n);
    }

    private void b(Canvas canvas)
    {
        if (d)
        {
            Resources resources5 = r;
            com.dianxinos.dxbs.R.color _tmp = ly.c;
            canvas.drawColor(resources5.getColor(0x7f090077));
            Resources resources6 = r;
            com.dianxinos.dxbs.R.drawable _tmp1 = ly.e;
            v = BitmapFactory.decodeResource(resources6, 0x7f020207);
            float f3 = v.getWidth();
            float f4 = v.getHeight();
            Matrix matrix1 = new Matrix();
            matrix1.postScale((float)l / f3, (float)m / f4);
            canvas.drawBitmap(v, matrix1, n);
            return;
        }
        if (e)
        {
            Resources resources3 = r;
            com.dianxinos.dxbs.R.color _tmp2 = ly.c;
            canvas.drawColor(resources3.getColor(0x7f090078));
            Resources resources4 = r;
            com.dianxinos.dxbs.R.drawable _tmp3 = ly.e;
            w = BitmapFactory.decodeResource(resources4, 0x7f0201d0);
            float f1 = w.getWidth();
            float f2 = w.getHeight();
            Matrix matrix = new Matrix();
            matrix.postScale((float)l / f1, (float)m / f2);
            canvas.drawBitmap(w, matrix, n);
            return;
        }
        if (v != null)
        {
            v.recycle();
            v = null;
        }
        if (w != null)
        {
            w.recycle();
            w = null;
        }
        n.setStyle(android.graphics.Paint.Style.FILL);
        n.setTypeface(null);
        n.setAntiAlias(true);
        n.setShader(null);
        n.setFakeBoldText(true);
        n.setTextSize(p);
        n.setUnderlineText(false);
        int i1 = (int)o.right - (int)n.measureText(k);
        int j1 = ((int)o.bottom + (int)(-n.ascent())) - getTextHeight();
        int k1 = i1 - (((int)o.width() >> 1) - ((int)n.measureText(k) >> 1));
        int l1 = j1 - (((int)o.height() >> 1) - (getTextHeight() >> 1));
        if (b)
        {
            Paint paint2 = n;
            Resources resources2 = r;
            com.dianxinos.dxbs.R.color _tmp4 = ly.c;
            paint2.setColor(resources2.getColor(0x7f090075));
        } else
        if (c)
        {
            Paint paint1 = n;
            Resources resources1 = r;
            com.dianxinos.dxbs.R.color _tmp5 = ly.c;
            paint1.setColor(resources1.getColor(0x7f090074));
        } else
        {
            Paint paint = n;
            Resources resources = r;
            com.dianxinos.dxbs.R.color _tmp6 = ly.c;
            paint.setColor(resources.getColor(0x7f090073));
        }
        canvas.drawText(k, k1, l1 + 1, n);
    }

    private int getTextHeight()
    {
        return (int)(-n.ascent() + n.descent());
    }

    public void a()
    {
        if (f)
        {
            return;
        } else
        {
            startAnimation(agd.a(this, 250, true));
            f = true;
            return;
        }
    }

    public void a(int i1, int j1, int k1, int l1, boolean flag, boolean flag1)
    {
        h = i1;
        i = j1;
        j = k1;
        k = Integer.toString(j);
        a = flag1;
        b = flag;
        boolean flag2;
        if (i == l1)
        {
            flag2 = true;
        } else
        {
            flag2 = false;
        }
        c = flag2;
        a(false);
        invalidate();
    }

    public void a(boolean flag)
    {
        if (flag)
        {
            com.dianxinos.dxbs.R.drawable _tmp = ly.e;
            setBackgroundResource(0x7f020149);
            return;
        } else
        {
            Resources resources = r;
            com.dianxinos.dxbs.R.color _tmp1 = ly.c;
            setBackgroundColor(resources.getColor(0x7f090083));
            return;
        }
    }

    public void b()
    {
        if (g)
        {
            return;
        } else
        {
            startAnimation(agd.a(this, 250, false));
            g = true;
            return;
        }
    }

    public afu getCharging()
    {
        return s;
    }

    public boolean getCurrentMonth()
    {
        return c;
    }

    public Calendar getDate()
    {
        Calendar calendar = Calendar.getInstance();
        calendar.clear();
        calendar.set(1, h);
        calendar.set(2, i);
        calendar.set(5, j);
        return calendar;
    }

    public String getDay()
    {
        return k;
    }

    public int getHealthCharging()
    {
        return u;
    }

    public int getNormalCharging()
    {
        return t;
    }

    public boolean getWeekend()
    {
        return a;
    }

    protected void onDraw(Canvas canvas)
    {
        super.onDraw(canvas);
        o.set(0.0F, 0.0F, getWidth(), getHeight());
        o.inset(1.0F, 1.0F);
        a(canvas);
        b(canvas);
    }

    public void setChargingData(afu afu1)
    {
        if (afu1 == null)
        {
            t = 0;
            u = 0;
            return;
        } else
        {
            s = afu1;
            t = afu1.d;
            u = afu1.e;
            return;
        }
    }

    protected void setHealthAnimShowing(boolean flag)
    {
        g = flag;
    }

    protected void setHealthTransForm(boolean flag)
    {
        e = flag;
    }

    protected void setNormalAnimShowing(boolean flag)
    {
        f = flag;
    }

    protected void setNormalTransForm(boolean flag)
    {
        d = flag;
    }
}
