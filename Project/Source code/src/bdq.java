// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.graphics.RectF;
import android.view.MotionEvent;

public class bdq
    implements bdo
{

    private bef a;
    private float b;
    private float c;
    private RectF d;
    private bep e;
    private bdm f;

    public bdq(bdm bdm1, bdr bdr)
    {
        d = new RectF();
        f = bdm1;
        d = f.getZoomRectangle();
        if (bdr instanceof bdz)
        {
            a = ((bdz)bdr).c();
        } else
        {
            a = ((bdw)bdr).a();
        }
        if (a.B())
        {
            e = new bep(bdr);
        }
    }

    public boolean a(MotionEvent motionevent)
    {
        int i = motionevent.getAction();
        if (a == null || i != 2) goto _L2; else goto _L1
_L1:
        if (b < 0.0F && c < 0.0F) goto _L4; else goto _L3
_L3:
        float f1 = motionevent.getX();
        float f2 = motionevent.getY();
        if (a.B())
        {
            e.a(b, c, f1, f2);
        }
        b = f1;
        c = f2;
        f.d();
_L6:
        return true;
_L2:
        if (i == 0)
        {
            b = motionevent.getX();
            c = motionevent.getY();
            if (a != null && a.x() && d.contains(b, c))
            {
                if (b < d.left + d.width() / 3F)
                {
                    f.a();
                    return true;
                }
                if (b < d.left + (2.0F * d.width()) / 3F)
                {
                    f.b();
                    return true;
                } else
                {
                    f.c();
                    return true;
                }
            }
        } else
        if (i == 1)
        {
            b = 0.0F;
            c = 0.0F;
        }
_L4:
        if (a.C())
        {
            return false;
        }
        if (true) goto _L6; else goto _L5
_L5:
    }
}
