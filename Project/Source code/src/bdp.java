// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.graphics.RectF;
import android.view.MotionEvent;

public class bdp
    implements bdo
{

    private bef a;
    private float b;
    private float c;
    private float d;
    private float e;
    private RectF f;
    private bep g;
    private ber h;
    private bdm i;
    private Context j;
    private float k;
    private boolean l;

    public bdp(bdm bdm1, bdr bdr)
    {
        f = new RectF();
        j = bdm1.getContext();
        i = bdm1;
        f = i.getZoomRectangle();
        if (bdr instanceof bdz)
        {
            a = ((bdz)bdr).c();
        } else
        {
            a = ((bdw)bdr).a();
        }
        if (a.B())
        {
            g = new bep(bdr);
        }
        if (a.x())
        {
            h = new ber(bdr, true, 1.0F);
        }
    }

    private void a(float f1, int i1)
    {
        float f2 = Math.min(Math.max(f1, 0.9F), 1.1F);
        if ((double)f2 > 0.90000000000000002D && (double)f2 < 1.1000000000000001D)
        {
            h.a(f2);
            h.b(i1);
        }
    }

    public boolean a()
    {
        if (g != null)
        {
            return g.a();
        } else
        {
            return true;
        }
    }

    public boolean a(MotionEvent motionevent)
    {
        int i1;
        i1 = motionevent.getAction();
        beg beg1 = a.b();
        if (beg1 != null)
        {
            beg1.a(motionevent, a());
        }
        if (a == null || i1 != 2) goto _L2; else goto _L1
_L1:
        if (b < 0.0F && c < 0.0F) goto _L4; else goto _L3
_L3:
        float f1;
        float f2;
        f1 = motionevent.getX(0);
        f2 = motionevent.getY(0);
        if (motionevent.getPointerCount() <= 1 || d < 0.0F && e < 0.0F || !a.x()) goto _L6; else goto _L5
_L5:
        float f3 = motionevent.getX(1);
        float f4 = motionevent.getY(1);
        float f5 = Math.abs(f1 - f3);
        float f6 = Math.abs(f2 - f4);
        float f7 = Math.abs(b - d);
        float f8 = Math.abs(c - e);
        float f9 = Math.abs(f2 - c) / Math.abs(f1 - b);
        float f10 = Math.abs(f4 - e) / Math.abs(f3 - d);
        if ((double)f9 <= 0.25D && (double)f10 <= 0.25D)
        {
            a(f5 / f7, 1);
        } else
        if ((double)f9 >= 3.73D && (double)f10 >= 3.73D)
        {
            a(f6 / f8, 2);
        } else
        {
            float f11;
            if (Math.abs(f1 - b) >= Math.abs(f2 - c))
            {
                f11 = f5 / f7;
            } else
            {
                f11 = f6 / f8;
            }
            a(f11, 0);
        }
_L9:
        d = f3;
        e = f4;
_L7:
        b = f1;
        c = f2;
        i.d();
        return true;
_L6:
        if (a.B())
        {
            if (f1 - k > 8F)
            {
                l = true;
            }
            g.a(b, c, f1, f2);
            d = 0.0F;
            e = 0.0F;
        }
        if (true) goto _L7; else goto _L2
_L2:
        if (i1 == 0)
        {
            l = false;
            b = motionevent.getX(0);
            k = b;
            c = motionevent.getY(0);
            if (a != null && a.x() && f.contains(b, c))
            {
                if (b < f.left + f.width() / 3F)
                {
                    i.a();
                } else
                if (b < f.left + (2.0F * f.width()) / 3F)
                {
                    i.b();
                } else
                {
                    i.c();
                }
                return true;
            }
        } else
        if (i1 == 1 || i1 == 6)
        {
            if (l)
            {
                bal.a(j, "home", "slidebc", Integer.valueOf(1));
            }
            b = 0.0F;
            c = 0.0F;
            d = 0.0F;
            e = 0.0F;
            if (i1 == 6)
            {
                b = -1F;
                c = -1F;
            }
        }
_L4:
        if (!a.C())
        {
            return true;
        }
        return false;
        if (true) goto _L9; else goto _L8
_L8:
    }
}
