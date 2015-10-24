// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Handler;
import android.view.MotionEvent;
import android.view.View;

public class bdm extends View
{

    private static final int j = Color.argb(175, 150, 150, 150);
    private bdr a;
    private bef b;
    private Rect c;
    private Handler d;
    private RectF e;
    private Bitmap f;
    private Bitmap g;
    private Bitmap h;
    private int i;
    private ber k;
    private ber l;
    private beo m;
    private Paint n;
    private bdo o;
    private float p;
    private float q;
    private boolean r;

    public bdm(Context context, bdr bdr1)
    {
        int i1;
        super(context);
        c = new Rect();
        e = new RectF();
        i = 50;
        n = new Paint();
        a = bdr1;
        d = new Handler();
        int j1;
        if (a instanceof bdz)
        {
            b = ((bdz)a).c();
        } else
        {
            b = ((bdw)a).a();
        }
        if (b.y())
        {
            f = BitmapFactory.decodeStream(bdm.getResourceAsStream("image/zoom_in.png"));
            g = BitmapFactory.decodeStream(bdm.getResourceAsStream("image/zoom_out.png"));
            h = BitmapFactory.decodeStream(bdm.getResourceAsStream("image/zoom-1.png"));
        }
        if ((b instanceof bei) && ((bei)b).U() == 0)
        {
            ((bei)b).s(n.getColor());
        }
        if (b.x() && b.y() || b.z())
        {
            k = new ber(a, true, b.A());
            l = new ber(a, false, b.A());
            m = new beo(a);
        }
        j1 = Integer.valueOf(android.os.Build.VERSION.SDK).intValue();
        i1 = j1;
_L1:
        Exception exception;
        if (i1 < 7)
        {
            o = new bdq(this, a);
            return;
        } else
        {
            o = new bdp(this, a);
            return;
        }
        exception;
        i1 = 7;
          goto _L1
    }

    public void a()
    {
        if (k != null)
        {
            k.b(0);
            d();
        }
    }

    public void b()
    {
        if (l != null)
        {
            l.b(0);
            d();
        }
    }

    public void c()
    {
        if (m != null)
        {
            m.a();
            k.a();
            d();
        }
    }

    public void d()
    {
        d.post(new bdn(this));
    }

    public beb getCurrentSeriesAndPoint()
    {
        return a.a(new bea(p, q));
    }

    protected RectF getZoomRectangle()
    {
        return e;
    }

    protected void onDraw(Canvas canvas)
    {
        super.onDraw(canvas);
        int i1 = getWidth();
        int j1 = getHeight();
        if (b.G())
        {
            i1 = getMeasuredWidth();
            j1 = getMeasuredHeight();
        }
        a.a(canvas, 0, 0, i1, j1, n);
        if (b != null && b.x() && b.y())
        {
            n.setColor(j);
            i = Math.max(i, Math.min(i1, j1) / 7);
            e.set((i1 + 0) - 3 * i, (float)(j1 + 0) - 0.775F * (float)i, i1 + 0, j1 + 0);
            canvas.drawRoundRect(e, i / 3, i / 3, n);
            float f1 = (float)(j1 + 0) - 0.625F * (float)i;
            canvas.drawBitmap(f, (float)(i1 + 0) - 2.75F * (float)i, f1, null);
            canvas.drawBitmap(g, (float)(i1 + 0) - 1.75F * (float)i, f1, null);
            canvas.drawBitmap(h, (float)(i1 + 0) - 0.75F * (float)i, f1, null);
        }
        r = true;
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        if (motionevent.getAction() == 0)
        {
            p = motionevent.getX();
            q = motionevent.getY();
        }
        if (b != null && r && (b.B() || b.x()) && o.a(motionevent))
        {
            return true;
        } else
        {
            return super.onTouchEvent(motionevent);
        }
    }

    public void setZoomRate(float f1)
    {
        if (k != null && l != null)
        {
            k.a(f1);
            l.a(f1);
        }
    }

}
