// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.dianxinos.powermanager.skinshop;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.FloatMath;
import android.view.FocusFinder;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.SoundEffectConstants;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.animation.Interpolator;
import android.widget.Gallery;
import android.widget.Scroller;
import aqp;
import aqq;
import aqr;
import aqs;
import aqt;
import aqu;
import aqv;
import aqw;
import aqx;
import aqy;
import aqz;
import ara;
import arb;
import arc;
import are;
import cr;
import cy;
import de;
import dj;
import dz;
import fl;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;

public class SkinShopViewPager extends ViewGroup
{

    private static final are af = new are();
    private static final int c[] = {
        0x10100b3
    };
    private static final Comparator d = new aqq();
    private static final Interpolator e = new aqr();
    private boolean A;
    private boolean B;
    private int C;
    private int D;
    private int E;
    private float F;
    private float G;
    private float H;
    private int I;
    private VelocityTracker J;
    private int K;
    private int L;
    private int M;
    private int N;
    private int O;
    private int P;
    private boolean Q;
    private fl R;
    private fl S;
    private boolean T;
    private boolean U;
    private int V;
    private ara W;
    private ara Z;
    private float a;
    private aqz aa;
    private arb ab;
    private Method ac;
    private int ad;
    private ArrayList ae;
    private final Runnable ag;
    private boolean ah;
    private int ai;
    private boolean b;
    private final ArrayList f;
    private final aqw g;
    private final Rect h;
    private aqp i;
    private int j;
    private int k;
    private Parcelable l;
    private ClassLoader m;
    private Scroller n;
    private arc o;
    private int p;
    private Drawable q;
    private int r;
    private int s;
    private float t;
    private float u;
    private int v;
    private boolean w;
    private boolean x;
    private boolean y;
    private int z;

    public SkinShopViewPager(Context context)
    {
        super(context);
        a = 0.0F;
        b = false;
        f = new ArrayList();
        g = new aqw();
        h = new Rect();
        k = -1;
        l = null;
        m = null;
        t = -3.402823E+38F;
        u = 3.402823E+38F;
        z = 1;
        I = -1;
        T = true;
        ag = new aqs(this);
        ah = true;
        ai = 0;
        a();
    }

    public SkinShopViewPager(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        a = 0.0F;
        b = false;
        f = new ArrayList();
        g = new aqw();
        h = new Rect();
        k = -1;
        l = null;
        m = null;
        t = -3.402823E+38F;
        u = 3.402823E+38F;
        z = 1;
        I = -1;
        T = true;
        ag = new aqs(this);
        ah = true;
        ai = 0;
        a();
    }

    public static float a(SkinShopViewPager skinshopviewpager)
    {
        return skinshopviewpager.getPageSpace();
    }

    private int a(int i1, float f1, int j1, int k1)
    {
        if (Math.abs(k1) > M && Math.abs(j1) > K)
        {
            if (j1 <= 0)
            {
                i1++;
            }
        } else
        if (O >= 0 && O < i1 && f1 < 0.5F)
        {
            i1++;
        } else
        if (P >= 0 && P > i1 + 1 && f1 >= 0.5F)
        {
            i1--;
        } else
        {
            i1 = (int)(0.5F + (f1 + (float)i1));
        }
        if (f.size() > 0)
        {
            aqw aqw1 = (aqw)f.get(0);
            aqw aqw2 = (aqw)f.get(-1 + f.size());
            i1 = Math.max(aqw1.b, Math.min(i1, aqw2.b));
        }
        return i1;
    }

    private Rect a(Rect rect, View view)
    {
        Rect rect1;
        if (rect == null)
        {
            rect1 = new Rect();
        } else
        {
            rect1 = rect;
        }
        if (view == null)
        {
            rect1.set(0, 0, 0, 0);
            return rect1;
        }
        rect1.left = view.getLeft();
        rect1.right = view.getRight();
        rect1.top = view.getTop();
        rect1.bottom = view.getBottom();
        ViewGroup viewgroup;
        for (android.view.ViewParent viewparent = view.getParent(); (viewparent instanceof ViewGroup) && viewparent != this; viewparent = viewgroup.getParent())
        {
            viewgroup = (ViewGroup)viewparent;
            rect1.left = rect1.left + viewgroup.getLeft();
            rect1.right = rect1.right + viewgroup.getRight();
            rect1.top = rect1.top + viewgroup.getTop();
            rect1.bottom = rect1.bottom + viewgroup.getBottom();
        }

        return rect1;
    }

    private void a(int i1, int j1, int k1, int l1)
    {
        if (j1 > 0 && !f.isEmpty())
        {
            int j2 = i1 + k1;
            int k2 = j1 + l1;
            int l2 = (int)(((float)getScrollX() / (float)k2) * (float)j2);
            scrollTo(l2, getScrollY());
            if (!n.isFinished())
            {
                int i3 = n.getDuration() - n.timePassed();
                aqw aqw2 = b(j);
                n.startScroll(l2, 0, (int)(aqw2.e * (float)i1), 0, i3);
            }
        } else
        {
            aqw aqw1 = b(j);
            float f1;
            int i2;
            if (aqw1 != null)
            {
                f1 = Math.min(aqw1.e, u);
            } else
            {
                f1 = 0.0F;
            }
            i2 = (int)(f1 * (float)i1);
            if (i2 != getScrollX())
            {
                a(false);
                scrollTo(i2, getScrollY());
                return;
            }
        }
    }

    private void a(int i1, boolean flag, int j1, boolean flag1)
    {
        aqw aqw1 = b(i1);
        int k1;
        if (aqw1 != null)
        {
            int l1 = getWidth();
            if (u <= 0.0F)
            {
                u = -(2.0F * a);
            }
            k1 = (int)((float)l1 * Math.max(t, Math.min(aqw1.e - a, u)));
            if (i1 == 0)
            {
                k1 = (int)((float)l1 * Math.min(aqw1.e - a, u));
            }
            if (i1 == -1 + i.c())
            {
                k1 = (int)((float)l1 * (Math.min(aqw1.e, u) + a));
            }
        } else
        {
            k1 = 0;
        }
        if (flag)
        {
            a(k1, 0, j1);
            if (flag1 && W != null)
            {
                W.a(i1);
            }
            if (flag1 && Z != null)
            {
                Z.a(i1);
            }
            return;
        }
        if (flag1 && W != null)
        {
            W.a(i1);
        }
        if (flag1 && Z != null)
        {
            Z.a(i1);
        }
        a(false);
        if (b)
        {
            if (i1 == -1 + i.c() || i1 == 0)
            {
                post(new aqt(this, k1));
                return;
            } else
            {
                post(new aqu(this, k1));
                return;
            }
        } else
        {
            scrollTo(k1, 0);
            return;
        }
    }

    private void a(MotionEvent motionevent)
    {
        int i1 = cy.b(motionevent);
        if (cy.b(motionevent, i1) == I)
        {
            int j1;
            if (i1 == 0)
            {
                j1 = 1;
            } else
            {
                j1 = 0;
            }
            G = cy.c(motionevent, j1);
            I = cy.b(motionevent, j1);
            if (J != null)
            {
                J.clear();
            }
        }
    }

    private void a(aqw aqw1, int i1, aqw aqw2)
    {
        int j1 = i.c();
        int k1 = getWidth();
        float f1;
        if (k1 > 0)
        {
            f1 = (float)p / (float)k1;
        } else
        {
            f1 = 0.0F;
        }
        if (aqw2 != null)
        {
            int i4 = aqw2.b;
            if (i4 < aqw1.b)
            {
                int l4 = 0;
                float f9 = f1 + (aqw2.e + aqw2.d);
                for (int i5 = i4 + 1; i5 <= aqw1.b && l4 < f.size(); i5++)
                {
                    aqw aqw6;
                    for (aqw6 = (aqw)f.get(l4); i5 > aqw6.b && l4 < -1 + f.size(); aqw6 = (aqw)f.get(l4))
                    {
                        l4++;
                    }

                    for (; i5 < aqw6.b; i5++)
                    {
                        f9 += f1 + i.a(i5);
                    }

                    aqw6.e = f9;
                    f9 += f1 + aqw6.d;
                }

            } else
            if (i4 > aqw1.b)
            {
                int j4 = -1 + f.size();
                float f8 = aqw2.e;
                for (int k4 = i4 - 1; k4 >= aqw1.b && j4 >= 0; k4--)
                {
                    aqw aqw5;
                    for (aqw5 = (aqw)f.get(j4); k4 < aqw5.b && j4 > 0; aqw5 = (aqw)f.get(j4))
                    {
                        j4--;
                    }

                    for (; k4 > aqw5.b; k4--)
                    {
                        f8 -= f1 + i.a(k4);
                    }

                    f8 -= f1 + aqw5.d;
                    aqw5.e = f8;
                }

            }
        }
        int l1 = f.size();
        float f2 = aqw1.e;
        int i2 = -1 + aqw1.b;
        float f3;
        float f4;
        if (aqw1.b == 0)
        {
            f3 = aqw1.e;
        } else
        {
            f3 = -3.402823E+38F;
        }
        t = f3;
        if (aqw1.b == j1 - 1)
        {
            f4 = (aqw1.e + aqw1.d) - 1.0F;
        } else
        {
            f4 = 3.402823E+38F;
        }
        u = f4;
        int k3;
        for (int j2 = i1 - 1; j2 >= 0; j2 = k3)
        {
            aqw aqw4 = (aqw)f.get(j2);
            float f7 = f2;
            int l3;
            for (; i2 > aqw4.b; i2 = l3)
            {
                aqp aqp2 = i;
                l3 = i2 - 1;
                f7 -= f1 + aqp2.a(i2);
            }

            f2 = f7 - (f1 + aqw4.d);
            aqw4.e = f2;
            if (aqw4.b == 0)
            {
                t = f2;
            }
            k3 = j2 - 1;
            i2--;
        }

        float f5 = f1 + (aqw1.e + aqw1.d);
        int k2 = 1 + aqw1.b;
        int i3;
        for (int l2 = i1 + 1; l2 < l1; l2 = i3)
        {
            aqw aqw3 = (aqw)f.get(l2);
            float f6 = f5;
            int j3;
            for (; k2 < aqw3.b; k2 = j3)
            {
                aqp aqp1 = i;
                j3 = k2 + 1;
                f6 += f1 + aqp1.a(k2);
            }

            if (aqw3.b == j1 - 1)
            {
                u = (f6 + aqw3.d) - 1.0F;
            }
            aqw3.e = f6;
            f5 = f6 + (f1 + aqw3.d);
            i3 = l2 + 1;
            k2++;
        }

    }

    public static void a(SkinShopViewPager skinshopviewpager, int i1)
    {
        skinshopviewpager.setScrollState(i1);
    }

    private void a(boolean flag)
    {
label0:
        {
            boolean flag1;
            int i1;
            boolean flag2;
            if (ai == 2)
            {
                flag1 = true;
            } else
            {
                flag1 = false;
            }
            if (flag1)
            {
                setScrollingCacheEnabled(false);
                n.abortAnimation();
                int j1 = getScrollX();
                int k1 = getScrollY();
                int l1 = n.getCurrX();
                int i2 = n.getCurrY();
                if (j1 != l1 || k1 != i2)
                {
                    scrollTo(l1, i2);
                }
            }
            y = false;
            i1 = 0;
            flag2 = flag1;
            for (; i1 < f.size(); i1++)
            {
                aqw aqw1 = (aqw)f.get(i1);
                if (aqw1.c)
                {
                    aqw1.c = false;
                    flag2 = true;
                }
            }

            if (flag2)
            {
                if (!flag)
                {
                    break label0;
                }
                dj.a(this, ag);
            }
            return;
        }
        ag.run();
    }

    private boolean a(float f1, float f2)
    {
        return f1 < (float)D && f2 > 0.0F || f1 > (float)(getWidth() - D) && f2 < 0.0F;
    }

    public static aqp b(SkinShopViewPager skinshopviewpager)
    {
        return skinshopviewpager.i;
    }

    private void b(boolean flag)
    {
    }

    private boolean b(float f1)
    {
        boolean flag = true;
        float f2 = G - f1;
        G = f1;
        float f3 = f2 + (float)getScrollX();
        int i1 = getWidth();
        float f4 = (float)i1 * t;
        float f5 = (float)i1 * u;
        aqw aqw1 = (aqw)f.get(0);
        aqw aqw2 = (aqw)f.get(-1 + f.size());
        boolean flag1;
        float f6;
        float f7;
        float f8;
        float f9;
        boolean flag2;
        float f10;
        float f11;
        float f12;
        float f13;
        if (aqw1.b != 0)
        {
            f4 = aqw1.e * (float)i1;
            flag1 = false;
        } else
        {
            flag1 = flag;
        }
        if (aqw2.b != -1 + i.c())
        {
            f6 = aqw2.e * (float)i1;
            flag = false;
        } else
        {
            f6 = f5;
        }
        if (!b) goto _L2; else goto _L1
_L1:
        if (j == 0)
        {
            f4 -= getPageSpace();
        }
        if (j != -1 + i.c()) goto _L2; else goto _L3
_L3:
        f13 = f6 + getPageSpace();
        f8 = f4;
        f9 = f13;
_L5:
        if (f3 < f8)
        {
            flag2 = false;
            if (flag1)
            {
                f11 = f8 - f3;
                flag2 = R.a(Math.abs(f11) / (float)i1);
            }
            f10 = f8;
        } else
        if (f3 > f9)
        {
            flag2 = false;
            if (flag)
            {
                f12 = f3 - f9;
                flag2 = S.a(Math.abs(f12) / (float)i1);
            }
            f10 = f9;
        } else
        {
            f10 = f3;
            flag2 = false;
        }
        G = G + (f10 - (float)(int)f10);
        scrollTo((int)f10, getScrollY());
        d((int)f10);
        return flag2;
_L2:
        f7 = f6;
        f8 = f4;
        f9 = f7;
        if (true) goto _L5; else goto _L4
_L4:
    }

    public static int c(SkinShopViewPager skinshopviewpager)
    {
        return skinshopviewpager.j;
    }

    private boolean d(int i1)
    {
        boolean flag;
        if (f.size() == 0)
        {
            U = false;
            a(0, 0.0F, 0);
            boolean flag1 = U;
            flag = false;
            if (!flag1)
            {
                throw new IllegalStateException("onPageScrolled did not call superclass implementation");
            }
        } else
        {
            aqw aqw1 = i();
            int j1 = getWidth();
            int k1 = j1 + p;
            float f1 = (float)p / (float)j1;
            int l1 = aqw1.b;
            float f2 = ((float)i1 / (float)j1 - aqw1.e) / (f1 + aqw1.d);
            int i2 = (int)(f2 * (float)k1);
            U = false;
            a(l1, f2, i2);
            if (!U)
            {
                throw new IllegalStateException("onPageScrolled did not call superclass implementation");
            }
            flag = true;
        }
        return flag;
    }

    public static int[] g()
    {
        return c;
    }

    private float getPageSpace()
    {
        return (float)getWidth() * a;
    }

    private void h()
    {
        for (int i1 = 0; i1 < getChildCount(); i1++)
        {
            if (!((aqx)getChildAt(i1).getLayoutParams()).a)
            {
                removeViewAt(i1);
                i1--;
            }
        }

    }

    private aqw i()
    {
        int i1 = getWidth();
        float f1;
        float f2;
        float f3;
        float f4;
        int j1;
        int k1;
        boolean flag;
        aqw aqw1;
        if (i1 > 0)
        {
            f1 = (float)getScrollX() / (float)i1;
        } else
        {
            f1 = 0.0F;
        }
        if (i1 > 0)
        {
            f2 = (float)p / (float)i1;
        } else
        {
            f2 = 0.0F;
        }
        f3 = 0.0F;
        f4 = 0.0F;
        j1 = -1;
        k1 = 0;
        flag = true;
        aqw1 = null;
        do
        {
label0:
            {
                if (k1 < f.size())
                {
                    aqw aqw2 = (aqw)f.get(k1);
                    int l1;
                    aqw aqw3;
                    float f5;
                    float f6;
                    int i2;
                    float f7;
                    int j2;
                    if (!flag && aqw2.b != j1 + 1)
                    {
                        aqw aqw4 = g;
                        aqw4.e = f2 + (f3 + f4);
                        aqw4.b = j1 + 1;
                        aqw4.d = i.a(aqw4.b);
                        l1 = k1 - 1;
                        aqw3 = aqw4;
                    } else
                    {
                        l1 = k1;
                        aqw3 = aqw2;
                    }
                    f5 = aqw3.e;
                    f6 = f2 + (f5 + aqw3.d);
                    if (flag || f1 >= f5)
                    {
                        if (f1 >= f6 && l1 != -1 + f.size())
                        {
                            break label0;
                        }
                        aqw1 = aqw3;
                    }
                }
                return aqw1;
            }
            i2 = aqw3.b;
            f7 = aqw3.d;
            j2 = l1 + 1;
            f4 = f5;
            j1 = i2;
            f3 = f7;
            aqw1 = aqw3;
            k1 = j2;
            flag = false;
        } while (true);
    }

    private void j()
    {
        A = false;
        B = false;
        if (J != null)
        {
            J.recycle();
            J = null;
        }
    }

    private void setCurrentItem(int i1)
    {
        y = false;
        boolean flag;
        if (!T)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        a(i1, flag, false);
    }

    private void setScrollState(int i1)
    {
        boolean flag = true;
        if (ai != i1)
        {
            ai = i1;
            if (i1 == flag)
            {
                P = -1;
                O = -1;
            }
            if (ab != null)
            {
                if (i1 == 0)
                {
                    flag = false;
                }
                b(flag);
            }
            if (W != null)
            {
                W.b(i1);
                return;
            }
        }
    }

    private void setScrollingCacheEnabled(boolean flag)
    {
        if (x != flag)
        {
            x = flag;
        }
    }

    float a(float f1)
    {
        return (float)Math.sin((float)(0.4712389167638204D * (double)(f1 - 0.5F)));
    }

    aqw a(int i1, int j1)
    {
        aqw aqw1 = new aqw();
        aqw1.b = i1;
        aqw1.a = i.a(this, i1);
        aqw1.d = i.a(i1);
        if (j1 < 0 || j1 >= f.size())
        {
            f.add(aqw1);
            return aqw1;
        } else
        {
            f.add(j1, aqw1);
            return aqw1;
        }
    }

    aqw a(View view)
    {
        for (int i1 = 0; i1 < f.size(); i1++)
        {
            aqw aqw1 = (aqw)f.get(i1);
            if (i.a(view, aqw1.a))
            {
                return aqw1;
            }
        }

        return null;
    }

    void a()
    {
        setWillNotDraw(false);
        setDescendantFocusability(0x40000);
        setFocusable(true);
        Context context = getContext();
        n = new Scroller(context, e);
        ViewConfiguration viewconfiguration = ViewConfiguration.get(context);
        E = dz.a(viewconfiguration);
        K = viewconfiguration.getScaledMinimumFlingVelocity();
        L = viewconfiguration.getScaledMaximumFlingVelocity();
        R = new fl(context);
        S = new fl(context);
        float f1 = context.getResources().getDisplayMetrics().density;
        M = (int)(25F * f1);
        N = (int)(2.0F * f1);
        C = (int)(f1 * 16F);
        dj.a(this, new aqy(this));
        if (dj.c(this) == 0)
        {
            dj.b(this, 1);
        }
    }

    void a(int i1)
    {
        aqw aqw1;
        int j1;
        int k1;
        int l1;
        int i2;
        int j2;
        aqw aqw2;
        aqw aqw3;
        aqp aqp1;
        int k2;
        Object obj;
        boolean flag;
        int l2;
        int i3;
        View view;
        aqw aqw4;
        int j3;
        View view1;
        aqw aqw5;
        View view2;
        aqx aqx1;
        aqw aqw6;
        int k3;
        aqw aqw7;
        float f1;
        int l3;
        float f2;
        int i4;
        int j4;
        int k4;
        float f3;
        int l4;
        aqw aqw8;
        int i5;
        float f4;
        int j5;
        int k5;
        aqw aqw9;
        float f5;
        aqw aqw10;
        aqw aqw11;
        float f6;
        float f7;
        float f8;
        aqw aqw12;
        float f9;
        aqw aqw13;
        float f10;
        if (j != i1)
        {
            aqw aqw14 = b(j);
            j = i1;
            aqw1 = aqw14;
        } else
        {
            aqw1 = null;
        }
        break MISSING_BLOCK_LABEL_26;
_L21:
        do
        {
            return;
        } while (i == null || y || getWindowToken() == null);
        i.a(this);
        j1 = z;
        k1 = Math.max(0, j - j1);
        l1 = i.c();
        i2 = Math.min(l1 - 1, j1 + j);
        j2 = 0;
_L16:
        if (j2 >= f.size())
        {
            break MISSING_BLOCK_LABEL_1161;
        }
        aqw2 = (aqw)f.get(j2);
        if (aqw2.b < j) goto _L2; else goto _L1
_L1:
        if (aqw2.b != j)
        {
            break MISSING_BLOCK_LABEL_1161;
        }
_L26:
        if (aqw2 == null && l1 > 0)
        {
            aqw3 = a(j, j2);
        } else
        {
            aqw3 = aqw2;
        }
        if (aqw3 == null) goto _L4; else goto _L3
_L3:
        k3 = j2 - 1;
        if (k3 >= 0)
        {
            aqw7 = (aqw)f.get(k3);
        } else
        {
            aqw7 = null;
        }
        f1 = 2.0F - aqw3.d;
        l3 = -1 + j;
        f2 = 0.0F;
        i4 = l3;
        j4 = j2;
        k4 = k3;
_L17:
        if (i4 < 0) goto _L6; else goto _L5
_L5:
        if (f2 < f1 || i4 >= k1) goto _L8; else goto _L7
_L7:
        if (aqw7 != null) goto _L9; else goto _L6
_L6:
        f3 = aqw3.d;
        l4 = j4 + 1;
        if (f3 >= 2.0F) goto _L11; else goto _L10
_L10:
        if (l4 < f.size())
        {
            aqw8 = (aqw)f.get(l4);
        } else
        {
            aqw8 = null;
        }
        i5 = 1 + j;
        f4 = f3;
        j5 = l4;
        k5 = i5;
_L19:
        if (k5 >= l1) goto _L11; else goto _L12
_L12:
        if (f4 < 2.0F || k5 <= i2) goto _L14; else goto _L13
_L13:
        if (aqw8 != null) goto _L15; else goto _L11
_L11:
        a(aqw3, j4, aqw1);
          goto _L4
_L2:
        j2++;
          goto _L16
_L9:
        if (i4 == aqw7.b && !aqw7.c)
        {
            f.remove(k4);
            i.a(this, i4, aqw7.a);
            k4--;
            j4--;
            if (k4 >= 0)
            {
                aqw7 = (aqw)f.get(k4);
            } else
            {
                aqw7 = null;
            }
        }
_L18:
        i4--;
          goto _L17
_L8:
        if (aqw7 != null && i4 == aqw7.b)
        {
            f2 += aqw7.d;
            if (--k4 >= 0)
            {
                aqw7 = (aqw)f.get(k4);
            } else
            {
                aqw7 = null;
            }
        } else
        {
            f2 += a(i4, k4 + 1).d;
            j4++;
            if (k4 >= 0)
            {
                aqw7 = (aqw)f.get(k4);
            } else
            {
                aqw7 = null;
            }
        }
          goto _L18
_L15:
        if (k5 == aqw8.b && !aqw8.c)
        {
            f.remove(j5);
            i.a(this, k5, aqw8.a);
            if (j5 < f.size())
            {
                aqw13 = (aqw)f.get(j5);
            } else
            {
                aqw13 = null;
            }
            f10 = f4;
            aqw11 = aqw13;
            f6 = f10;
        } else
        {
            f9 = f4;
            aqw11 = aqw8;
            f6 = f9;
        }
        k5++;
        f7 = f6;
        aqw8 = aqw11;
        f4 = f7;
          goto _L19
_L14:
        if (aqw8 != null && k5 == aqw8.b)
        {
            f8 = f4 + aqw8.d;
            if (++j5 < f.size())
            {
                aqw12 = (aqw)f.get(j5);
            } else
            {
                aqw12 = null;
            }
            aqw11 = aqw12;
            f6 = f8;
        } else
        {
            aqw9 = a(k5, j5);
            j5++;
            f5 = f4 + aqw9.d;
            if (j5 < f.size())
            {
                aqw10 = (aqw)f.get(j5);
            } else
            {
                aqw10 = null;
            }
            aqw11 = aqw10;
            f6 = f5;
        }
        break MISSING_BLOCK_LABEL_832;
_L4:
        aqp1 = i;
        k2 = j;
        if (aqw3 != null)
        {
            obj = aqw3.a;
        } else
        {
            obj = null;
        }
        aqp1.b(this, k2, obj);
        i.b(this);
        if (ad != 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (flag)
        {
            if (ae == null)
            {
                ae = new ArrayList();
            } else
            {
                ae.clear();
            }
        }
        l2 = getChildCount();
        for (i3 = 0; i3 < l2; i3++)
        {
            view2 = getChildAt(i3);
            aqx1 = (aqx)view2.getLayoutParams();
            aqx1.f = i3;
            if (!aqx1.a && aqx1.c == 0.0F)
            {
                aqw6 = a(view2);
                if (aqw6 != null)
                {
                    aqx1.c = aqw6.d;
                    aqx1.e = aqw6.b;
                }
            }
            if (flag)
            {
                ae.add(view2);
            }
        }

        if (flag)
        {
            Collections.sort(ae, af);
        }
        if (!hasFocus()) goto _L21; else goto _L20
_L20:
        view = findFocus();
        if (view != null)
        {
            aqw4 = b(view);
        } else
        {
            aqw4 = null;
        }
        if (aqw4 != null && aqw4.b == j) goto _L21; else goto _L22
_L22:
        j3 = 0;
_L25:
        if (j3 >= getChildCount()) goto _L21; else goto _L23
_L23:
        view1 = getChildAt(j3);
        aqw5 = a(view1);
        if (aqw5 != null && aqw5.b == j && view1.requestFocus(2)) goto _L21; else goto _L24
_L24:
        j3++;
          goto _L25
        aqw2 = null;
          goto _L26
    }

    protected void a(int i1, float f1, int j1)
    {
        int j2;
        int k2;
        int l2;
        int i3;
        int j3;
        int k3;
        if (V <= 0)
        {
            break MISSING_BLOCK_LABEL_283;
        }
        j2 = getScrollX();
        k2 = getPaddingLeft();
        l2 = getPaddingRight();
        i3 = getWidth();
        j3 = getChildCount();
        k3 = 0;
_L2:
        View view1;
        aqx aqx1;
        int j4;
        int k4;
        if (k3 >= j3)
        {
            break MISSING_BLOCK_LABEL_283;
        }
        view1 = getChildAt(k3);
        aqx1 = (aqx)view1.getLayoutParams();
        if (aqx1.a)
        {
            break; /* Loop/switch isn't completed */
        }
        int j6 = l2;
        j4 = k2;
        k4 = j6;
_L7:
        k3++;
        int i5 = k4;
        k2 = j4;
        l2 = i5;
        if (true) goto _L2; else goto _L1
_L1:
        7 & aqx1.b;
        JVM INSTR tableswitch 1 5: default 144
    //                   1 217
    //                   2 144
    //                   3 188
    //                   4 144
    //                   5 249;
           goto _L3 _L4 _L3 _L5 _L3 _L6
_L6:
        break MISSING_BLOCK_LABEL_249;
_L3:
        int l3;
        l3 = k2;
        int i6 = l2;
        j4 = k2;
        k4 = i6;
_L8:
        int l4 = (l3 + j2) - view1.getLeft();
        if (l4 != 0)
        {
            view1.offsetLeftAndRight(l4);
        }
          goto _L7
_L5:
        int k5 = k2 + view1.getWidth();
        int l5 = k2;
        k4 = l2;
        j4 = k5;
        l3 = l5;
          goto _L8
_L4:
        l3 = Math.max((i3 - view1.getMeasuredWidth()) / 2, k2);
        int j5 = l2;
        j4 = k2;
        k4 = j5;
          goto _L8
        l3 = i3 - l2 - view1.getMeasuredWidth();
        int i4 = l2 + view1.getMeasuredWidth();
        j4 = k2;
        k4 = i4;
          goto _L8
        if (O < 0 || i1 < O)
        {
            O = i1;
        }
        if (P < 0 || FloatMath.ceil(f1 + (float)i1) > (float)P)
        {
            P = i1 + 1;
        }
        if (W != null)
        {
            W.a(i1, f1, j1);
        }
        if (Z != null)
        {
            Z.a(i1, f1, j1);
        }
        if (ab != null)
        {
            int k1 = getScrollX();
            int l1 = getChildCount();
            int i2 = 0;
            while (i2 < l1) 
            {
                View view = getChildAt(i2);
                if (!((aqx)view.getLayoutParams()).a)
                {
                    float f2 = (float)(view.getLeft() - k1) / (float)getWidth();
                    ab.a(view, f2);
                }
                i2++;
            }
        }
        U = true;
        return;
          goto _L7
    }

    void a(int i1, int j1, int k1)
    {
        if (getChildCount() == 0)
        {
            setScrollingCacheEnabled(false);
            return;
        }
        int l1 = getScrollX();
        int i2 = getScrollY();
        int j2 = i1 - l1;
        int k2 = j1 - i2;
        if (j2 == 0 && k2 == 0)
        {
            a(false);
            c();
            setScrollState(0);
            return;
        }
        setScrollingCacheEnabled(true);
        setScrollState(2);
        int l2 = getWidth();
        int i3 = l2 / 2;
        float f1 = Math.min(1.0F, (1.0F * (float)Math.abs(j2)) / (float)l2);
        float f2 = (float)i3 + (float)i3 * a(f1);
        int j3 = Math.abs(k1);
        int k3;
        int l3;
        if (j3 > 0)
        {
            k3 = 4 * Math.round(1000F * Math.abs(f2 / (float)j3));
        } else
        {
            float f3 = (float)l2 * i.a(j);
            k3 = (int)(100F * (1.0F + (float)Math.abs(j2) / (f3 + (float)p)));
        }
        l3 = Math.min(k3, 600);
        n.startScroll(l1, i2, j2, k2, l3);
        dj.b(this);
    }

    public void a(int i1, boolean flag)
    {
        y = false;
        a(i1, flag, false);
    }

    void a(int i1, boolean flag, boolean flag1)
    {
        a(i1, flag, flag1, 0);
    }

    void a(int i1, boolean flag, boolean flag1, int j1)
    {
        if (i == null || i.c() <= 0)
        {
            setScrollingCacheEnabled(false);
            return;
        }
        if (!flag1 && j == i1 && f.size() != 0)
        {
            setScrollingCacheEnabled(false);
            return;
        }
        if (i1 >= 0) goto _L2; else goto _L1
_L1:
        i1 = 0;
_L4:
        int k1 = z;
        if (i1 > k1 + j || i1 < j - k1)
        {
            for (int l1 = 0; l1 < f.size(); l1++)
            {
                ((aqw)f.get(l1)).c = true;
            }

        }
        break; /* Loop/switch isn't completed */
_L2:
        if (i1 >= i.c())
        {
            i1 = -1 + i.c();
        }
        if (true) goto _L4; else goto _L3
_L3:
        int i2 = j;
        boolean flag2 = false;
        if (i2 != i1)
        {
            flag2 = true;
        }
        a(i1);
        a(i1, flag, j1, flag2);
        return;
    }

    public boolean a(KeyEvent keyevent)
    {
        if (keyevent.getAction() != 0) goto _L2; else goto _L1
_L1:
        keyevent.getKeyCode();
        JVM INSTR lookupswitch 3: default 44
    //                   21: 46
    //                   22: 53
    //                   61: 60;
           goto _L2 _L3 _L4 _L5
_L2:
        return false;
_L3:
        return c(17);
_L4:
        return c(66);
_L5:
        if (android.os.Build.VERSION.SDK_INT >= 11)
        {
            if (cr.a(keyevent))
            {
                return c(2);
            }
            if (cr.a(keyevent, 1))
            {
                return c(1);
            }
        }
        if (true) goto _L2; else goto _L6
_L6:
    }

    protected boolean a(View view, boolean flag, int i1, int j1, int k1)
    {
        if (!(view instanceof Gallery)) goto _L2; else goto _L1
_L1:
        return true;
_L2:
        ViewGroup viewgroup;
        int l1;
        int i2;
        int j2;
        if (!(view instanceof ViewGroup))
        {
            continue; /* Loop/switch isn't completed */
        }
        viewgroup = (ViewGroup)view;
        l1 = view.getScrollX();
        i2 = view.getScrollY();
        j2 = -1 + viewgroup.getChildCount();
_L4:
        View view1;
        if (j2 < 0)
        {
            continue; /* Loop/switch isn't completed */
        }
        view1 = viewgroup.getChildAt(j2);
        if (j1 + l1 >= view1.getLeft() && j1 + l1 < view1.getRight() && k1 + i2 >= view1.getTop() && k1 + i2 < view1.getBottom() && a(view1, true, i1, (j1 + l1) - view1.getLeft(), (k1 + i2) - view1.getTop())) goto _L1; else goto _L3
_L3:
        j2--;
          goto _L4
        if (flag && dj.a(view, -i1)) goto _L1; else goto _L5
_L5:
        return false;
    }

    public void addFocusables(ArrayList arraylist, int i1, int j1)
    {
        int k1 = arraylist.size();
        int l1 = getDescendantFocusability();
        if (l1 != 0x60000)
        {
            for (int i2 = 0; i2 < getChildCount(); i2++)
            {
                View view = getChildAt(i2);
                if (view.getVisibility() == 0)
                {
                    aqw aqw1 = a(view);
                    if (aqw1 != null && aqw1.b == j)
                    {
                        view.addFocusables(arraylist, i1, j1);
                    }
                }
            }

        }
        while (l1 == 0x40000 && k1 != arraylist.size() || !isFocusable() || (j1 & 1) == 1 && isInTouchMode() && !isFocusableInTouchMode() || arraylist == null) 
        {
            return;
        }
        arraylist.add(this);
    }

    public void addTouchables(ArrayList arraylist)
    {
        for (int i1 = 0; i1 < getChildCount(); i1++)
        {
            View view = getChildAt(i1);
            if (view.getVisibility() != 0)
            {
                continue;
            }
            aqw aqw1 = a(view);
            if (aqw1 != null && aqw1.b == j)
            {
                view.addTouchables(arraylist);
            }
        }

    }

    public void addView(View view, int i1, android.view.ViewGroup.LayoutParams layoutparams)
    {
        android.view.ViewGroup.LayoutParams layoutparams1;
        aqx aqx1;
        if (!checkLayoutParams(layoutparams))
        {
            layoutparams1 = generateLayoutParams(layoutparams);
        } else
        {
            layoutparams1 = layoutparams;
        }
        aqx1 = (aqx)layoutparams1;
        aqx1.a = aqx1.a | (view instanceof aqv);
        if (w)
        {
            if (aqx1 != null && aqx1.a)
            {
                throw new IllegalStateException("Cannot add pager decor view during layout");
            } else
            {
                aqx1.d = true;
                addViewInLayout(view, i1, layoutparams1);
                return;
            }
        } else
        {
            super.addView(view, i1, layoutparams1);
            return;
        }
    }

    aqw b(int i1)
    {
        for (int j1 = 0; j1 < f.size(); j1++)
        {
            aqw aqw1 = (aqw)f.get(j1);
            if (aqw1.b == i1)
            {
                return aqw1;
            }
        }

        return null;
    }

    aqw b(View view)
    {
        do
        {
            android.view.ViewParent viewparent = view.getParent();
            if (viewparent != this)
            {
                if (viewparent == null || !(viewparent instanceof View))
                {
                    return null;
                }
                view = (View)viewparent;
            } else
            {
                return a(view);
            }
        } while (true);
    }

    public void b()
    {
        boolean flag;
        int i1;
        boolean flag1;
        int j1;
        boolean flag2;
        int k1;
        if (f.size() < 1 + 2 * z && f.size() < i.c())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        i1 = j;
        flag1 = false;
        j1 = i1;
        flag2 = flag;
        k1 = 0;
        while (k1 < f.size()) 
        {
            aqw aqw1 = (aqw)f.get(k1);
            int j2 = i.a(aqw1.a);
            int k2;
            boolean flag3;
            int l2;
            boolean flag4;
            int i3;
            if (j2 == -1)
            {
                k2 = k1;
                flag3 = flag1;
                l2 = j1;
                flag4 = flag2;
            } else
            if (j2 == -2)
            {
                f.remove(k1);
                int j3 = k1 - 1;
                if (!flag1)
                {
                    i.a(this);
                    flag1 = true;
                }
                i.a(this, aqw1.b, aqw1.a);
                int l1;
                int i2;
                aqx aqx1;
                if (j == aqw1.b)
                {
                    int k3 = Math.max(0, Math.min(j, -1 + i.c()));
                    k2 = j3;
                    flag3 = flag1;
                    l2 = k3;
                    flag4 = true;
                } else
                {
                    k2 = j3;
                    flag3 = flag1;
                    l2 = j1;
                    flag4 = true;
                }
            } else
            if (aqw1.b != j2)
            {
                if (aqw1.b == j)
                {
                    j1 = j2;
                }
                aqw1.b = j2;
                k2 = k1;
                flag3 = flag1;
                l2 = j1;
                flag4 = true;
            } else
            {
                k2 = k1;
                flag3 = flag1;
                l2 = j1;
                flag4 = flag2;
            }
            i3 = k2 + 1;
            flag2 = flag4;
            j1 = l2;
            flag1 = flag3;
            k1 = i3;
        }
        if (flag1)
        {
            i.b(this);
        }
        Collections.sort(f, d);
        if (flag2)
        {
            l1 = getChildCount();
            for (i2 = 0; i2 < l1; i2++)
            {
                aqx1 = (aqx)getChildAt(i2).getLayoutParams();
                if (!aqx1.a)
                {
                    aqx1.c = 0.0F;
                }
            }

            a(j1, false, true);
            requestLayout();
        }
    }

    public void c()
    {
        a(j);
    }

    public boolean c(int i1)
    {
        View view;
        View view1;
        view = findFocus();
        if (view == this)
        {
            view = null;
        }
        view1 = FocusFinder.getInstance().findNextFocus(this, view, i1);
        if (view1 == null || view1 == view) goto _L2; else goto _L1
_L1:
        if (i1 != 17) goto _L4; else goto _L3
_L3:
        boolean flag;
        int l1 = a(h, view1).left;
        int i2 = a(h, view).left;
        if (view != null && l1 >= i2)
        {
            flag = d();
        } else
        {
            flag = view1.requestFocus();
        }
_L7:
        if (flag)
        {
            playSoundEffect(SoundEffectConstants.getContantForFocusDirection(i1));
        }
        return flag;
_L4:
        if (i1 == 66)
        {
            int j1 = a(h, view1).left;
            int k1 = a(h, view).left;
            if (view != null && j1 <= k1)
            {
                flag = e();
            } else
            {
                flag = view1.requestFocus();
            }
            continue; /* Loop/switch isn't completed */
        }
          goto _L5
_L2:
        if (i1 == 17 || i1 == 1)
        {
            flag = d();
            continue; /* Loop/switch isn't completed */
        }
        if (i1 == 66 || i1 == 2)
        {
            flag = e();
            continue; /* Loop/switch isn't completed */
        }
_L5:
        flag = false;
        if (true) goto _L7; else goto _L6
_L6:
    }

    protected boolean checkLayoutParams(android.view.ViewGroup.LayoutParams layoutparams)
    {
        return (layoutparams instanceof aqx) && super.checkLayoutParams(layoutparams);
    }

    public void computeScroll()
    {
        if (!n.isFinished() && n.computeScrollOffset())
        {
            int i1 = getScrollX();
            int j1 = getScrollY();
            int k1 = n.getCurrX();
            int l1 = n.getCurrY();
            if (i1 != k1 || j1 != l1)
            {
                scrollTo(k1, l1);
                if (!d(k1))
                {
                    n.abortAnimation();
                    scrollTo(0, l1);
                }
            }
            dj.b(this);
            return;
        } else
        {
            a(true);
            return;
        }
    }

    boolean d()
    {
        if (j > 0)
        {
            a(-1 + j, true);
            return true;
        } else
        {
            return false;
        }
    }

    public boolean dispatchKeyEvent(KeyEvent keyevent)
    {
        return super.dispatchKeyEvent(keyevent) || a(keyevent);
    }

    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityevent)
    {
        int i1 = getChildCount();
        int j1 = 0;
        do
        {
label0:
            {
                boolean flag = false;
                if (j1 < i1)
                {
                    View view = getChildAt(j1);
                    if (view.getVisibility() != 0)
                    {
                        break label0;
                    }
                    aqw aqw1 = a(view);
                    if (aqw1 == null || aqw1.b != j || !view.dispatchPopulateAccessibilityEvent(accessibilityevent))
                    {
                        break label0;
                    }
                    flag = true;
                }
                return flag;
            }
            j1++;
        } while (true);
    }

    public void draw(Canvas canvas)
    {
        super.draw(canvas);
        int i1 = dj.a(this);
        boolean flag1;
        if (i1 == 0 || i1 == 1 && i != null && i.c() > 1)
        {
            boolean flag = R.a();
            flag1 = false;
            if (!flag)
            {
                int i2 = canvas.save();
                int j2 = getHeight() - getPaddingTop() - getPaddingBottom();
                int k2 = getWidth();
                canvas.rotate(270F);
                canvas.translate(-j2 + getPaddingTop(), t * (float)k2);
                R.a(j2, k2);
                flag1 = false | R.a(canvas);
                canvas.restoreToCount(i2);
            }
            if (!S.a())
            {
                int j1 = canvas.save();
                int k1 = getWidth();
                int l1 = getHeight() - getPaddingTop() - getPaddingBottom();
                canvas.rotate(90F);
                canvas.translate(-getPaddingTop(), -(1.0F + u) * (float)k1);
                S.a(l1, k1);
                flag1 |= S.a(canvas);
                canvas.restoreToCount(j1);
            }
        } else
        {
            R.b();
            S.b();
            flag1 = false;
        }
        if (flag1)
        {
            dj.b(this);
        }
    }

    protected void drawableStateChanged()
    {
        super.drawableStateChanged();
        Drawable drawable = q;
        if (drawable != null && drawable.isStateful())
        {
            drawable.setState(getDrawableState());
        }
    }

    boolean e()
    {
        if (i != null && j < -1 + i.c())
        {
            a(1 + j, true);
            return true;
        } else
        {
            return false;
        }
    }

    public void f()
    {
        b = true;
        a = (1.0F - i.a(0)) / 2.0F;
    }

    protected android.view.ViewGroup.LayoutParams generateDefaultLayoutParams()
    {
        return new aqx();
    }

    public android.view.ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeset)
    {
        return new aqx(getContext(), attributeset);
    }

    protected android.view.ViewGroup.LayoutParams generateLayoutParams(android.view.ViewGroup.LayoutParams layoutparams)
    {
        return generateDefaultLayoutParams();
    }

    public aqp getAdapter()
    {
        return i;
    }

    protected int getChildDrawingOrder(int i1, int j1)
    {
        if (ad == 2)
        {
            j1 = i1 - 1 - j1;
        }
        return ((aqx)((View)ae.get(j1)).getLayoutParams()).f;
    }

    public int getCurrentItem()
    {
        return j;
    }

    public int getOffscreenPageLimit()
    {
        return z;
    }

    public int getPageMargin()
    {
        return p;
    }

    protected void onAttachedToWindow()
    {
        super.onAttachedToWindow();
        T = true;
    }

    protected void onDetachedFromWindow()
    {
        removeCallbacks(ag);
        super.onDetachedFromWindow();
    }

    protected void onDraw(Canvas canvas)
    {
        super.onDraw(canvas);
        if (p <= 0 || q == null || f.size() <= 0 || i == null) goto _L2; else goto _L1
_L1:
        int i1;
        int j1;
        float f1;
        aqw aqw1;
        float f2;
        int k1;
        int i2;
        int j2;
        int k2;
        i1 = getScrollX();
        j1 = getWidth();
        f1 = (float)p / (float)j1;
        aqw1 = (aqw)f.get(0);
        f2 = aqw1.e;
        k1 = f.size();
        int l1 = aqw1.b;
        i2 = ((aqw)f.get(k1 - 1)).b;
        j2 = 0;
        k2 = l1;
_L6:
        if (k2 >= i2) goto _L2; else goto _L3
_L3:
        ArrayList arraylist;
        for (; k2 > aqw1.b && j2 < k1; aqw1 = (aqw)arraylist.get(j2))
        {
            arraylist = f;
            j2++;
        }

        float f4;
        if (k2 == aqw1.b)
        {
            f4 = (aqw1.e + aqw1.d) * (float)j1;
            f2 = f1 + (aqw1.e + aqw1.d);
        } else
        {
            float f3 = i.a(k2);
            f4 = (f2 + f3) * (float)j1;
            f2 += f3 + f1;
        }
        if (f4 + (float)p > (float)i1)
        {
            q.setBounds((int)f4, r, (int)(0.5F + (f4 + (float)p)), s);
            q.draw(canvas);
        }
        if (f4 <= (float)(i1 + j1)) goto _L4; else goto _L2
_L2:
        return;
_L4:
        k2++;
        if (true) goto _L6; else goto _L5
_L5:
    }

    public boolean onInterceptTouchEvent(MotionEvent motionevent)
    {
        int i1 = 0xff & motionevent.getAction();
        if (i1 != 3 && i1 != 1) goto _L2; else goto _L1
_L1:
        A = false;
        B = false;
        I = -1;
        if (J != null)
        {
            J.recycle();
            J = null;
        }
_L4:
        return false;
_L2:
        if (i1 == 0)
        {
            break; /* Loop/switch isn't completed */
        }
        if (A)
        {
            return true;
        }
        if (B) goto _L4; else goto _L3
_L3:
        i1;
        JVM INSTR lookupswitch 3: default 112
    //                   0: 382
    //                   2: 139
    //                   6: 502;
           goto _L5 _L6 _L7 _L8
_L5:
        if (J == null)
        {
            J = VelocityTracker.obtain();
        }
        J.addMovement(motionevent);
        return A;
_L7:
        float f2;
        float f3;
        float f4;
        float f6;
        int j1 = I;
        if (j1 == -1)
        {
            continue; /* Loop/switch isn't completed */
        }
        int k1 = cy.a(motionevent, j1);
        f2 = cy.c(motionevent, k1);
        f3 = f2 - G;
        f4 = Math.abs(f3);
        float f5 = cy.d(motionevent, k1);
        f6 = Math.abs(f5 - H);
        if (f3 != 0.0F && !a(G, f3) && a(this, false, (int)f3, (int)f2, (int)f5))
        {
            G = f2;
            F = f2;
            H = f5;
            B = true;
            return false;
        }
        if (f4 <= (float)E || f4 <= f6) goto _L10; else goto _L9
_L9:
        A = true;
        setScrollState(1);
        float f7;
        if (f3 > 0.0F)
        {
            f7 = F + (float)E;
        } else
        {
            f7 = F - (float)E;
        }
        G = f7;
        setScrollingCacheEnabled(true);
_L11:
        if (A && b(f2))
        {
            dj.b(this);
        }
        continue; /* Loop/switch isn't completed */
_L10:
        if (f6 > (float)E)
        {
            B = true;
        }
        if (true) goto _L11; else goto _L6
_L6:
        float f1 = motionevent.getX();
        F = f1;
        G = f1;
        H = motionevent.getY();
        I = cy.b(motionevent, 0);
        B = false;
        n.computeScrollOffset();
        if (ai == 2 && Math.abs(n.getFinalX() - n.getCurrX()) > N)
        {
            n.abortAnimation();
            y = false;
            c();
            A = true;
            setScrollState(1);
        } else
        {
            a(false);
            A = false;
        }
        continue; /* Loop/switch isn't completed */
_L8:
        a(motionevent);
        if (true) goto _L5; else goto _L12
_L12:
    }

    protected void onLayout(boolean flag, int i1, int j1, int k1, int l1)
    {
        int i2;
        int j2;
        int k2;
        int l2;
        int i3;
        int j3;
        int k3;
        int l3;
        int i4;
        int j4;
        w = true;
        c();
        w = false;
        i2 = getChildCount();
        j2 = k1 - i1;
        k2 = l1 - j1;
        l2 = getPaddingLeft();
        i3 = getPaddingTop();
        j3 = getPaddingRight();
        k3 = getPaddingBottom();
        l3 = getScrollX();
        i4 = 0;
        j4 = 0;
_L14:
        if (j4 >= i2) goto _L2; else goto _L1
_L1:
        View view1 = getChildAt(j4);
        if (view1.getVisibility() == 8) goto _L4; else goto _L3
_L3:
        aqx aqx2 = (aqx)view1.getLayoutParams();
        if (!aqx2.a) goto _L4; else goto _L5
_L5:
        int i6;
        int j6;
        i6 = 7 & aqx2.b;
        j6 = 0x70 & aqx2.b;
        i6;
        JVM INSTR tableswitch 1 5: default 168
    //                   1 321
    //                   2 168
    //                   3 300
    //                   4 168
    //                   5 341;
           goto _L6 _L7 _L6 _L8 _L6 _L9
_L6:
        int l6 = l2;
_L15:
        j6;
        JVM INSTR lookupswitch 3: default 208
    //                   16: 400
    //                   48: 371
    //                   80: 432;
           goto _L10 _L11 _L12 _L13
_L10:
        int i7;
        int k7;
        int l7;
        i7 = i3;
        int i9 = k3;
        k7 = i3;
        l7 = i9;
_L16:
        int i5;
        int j5;
        int k5;
        int l5;
        int i8 = l6 + l3;
        view1.layout(i8, i7, i8 + view1.getMeasuredWidth(), i7 + view1.getMeasuredHeight());
        i5 = i4 + 1;
        j5 = k7;
        k3 = l7;
        k5 = j3;
        l5 = l2;
_L17:
        j4++;
        l2 = l5;
        j3 = k5;
        i3 = j5;
        i4 = i5;
          goto _L14
_L8:
        int j9 = l2 + view1.getMeasuredWidth();
        l6 = l2;
        l2 = j9;
          goto _L15
_L7:
        l6 = Math.max((j2 - view1.getMeasuredWidth()) / 2, l2);
          goto _L15
_L9:
        int k6 = j2 - j3 - view1.getMeasuredWidth();
        j3 += view1.getMeasuredWidth();
        l6 = k6;
          goto _L15
_L12:
        int k8 = i3 + view1.getMeasuredHeight();
        int l8 = i3;
        l7 = k3;
        k7 = k8;
        i7 = l8;
          goto _L16
_L11:
        i7 = Math.max((k2 - view1.getMeasuredHeight()) / 2, i3);
        int j8 = k3;
        k7 = i3;
        l7 = j8;
          goto _L16
_L13:
        i7 = k2 - k3 - view1.getMeasuredHeight();
        int j7 = k3 + view1.getMeasuredHeight();
        k7 = i3;
        l7 = j7;
          goto _L16
_L2:
        for (int k4 = 0; k4 < i2; k4++)
        {
            View view = getChildAt(k4);
            if (view.getVisibility() == 8)
            {
                continue;
            }
            aqx aqx1 = (aqx)view.getLayoutParams();
            if (aqx1.a)
            {
                continue;
            }
            aqw aqw1 = a(view);
            if (aqw1 == null)
            {
                continue;
            }
            int l4 = l2 + (int)((float)j2 * aqw1.e);
            if (aqx1.d)
            {
                aqx1.d = false;
                view.measure(android.view.View.MeasureSpec.makeMeasureSpec((int)((float)(j2 - l2 - j3) * aqx1.c), 0x40000000), android.view.View.MeasureSpec.makeMeasureSpec(k2 - i3 - k3, 0x40000000));
            }
            view.layout(l4, i3, l4 + view.getMeasuredWidth(), i3 + view.getMeasuredHeight());
        }

        r = i3;
        s = k2 - k3;
        V = i4;
        T = false;
        return;
_L4:
        i5 = i4;
        j5 = i3;
        k5 = j3;
        l5 = l2;
          goto _L17
    }

    protected void onMeasure(int i1, int j1)
    {
        int l1;
        int i2;
        int j2;
        int k2;
        setMeasuredDimension(getDefaultSize(0, i1), getDefaultSize(0, j1));
        int k1 = getMeasuredWidth();
        D = Math.min(k1 / 10, C);
        l1 = k1 - getPaddingLeft() - getPaddingRight();
        i2 = getMeasuredHeight() - getPaddingTop() - getPaddingBottom();
        j2 = getChildCount();
        k2 = 0;
_L3:
        if (k2 >= j2) goto _L2; else goto _L1
_L1:
        View view1 = getChildAt(k2);
        if (view1.getVisibility() == 8)
        {
            continue; /* Loop/switch isn't completed */
        }
        aqx aqx2 = (aqx)view1.getLayoutParams();
        if (aqx2 == null || !aqx2.a)
        {
            continue; /* Loop/switch isn't completed */
        }
        int j3 = 7 & aqx2.b;
        int k3 = 0x70 & aqx2.b;
        int l3 = 0x80000000;
        int i4 = 0x80000000;
        boolean flag;
        boolean flag1;
        int j4;
        int k4;
        if (k3 == 48 || k3 == 80)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (j3 == 3 || j3 == 5)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        if (flag)
        {
            l3 = 0x40000000;
        } else
        if (flag1)
        {
            i4 = 0x40000000;
        }
        if (aqx2.width != -2)
        {
            j4 = 0x40000000;
            int l2;
            int i3;
            View view;
            aqx aqx1;
            int l4;
            if (aqx2.width != -1)
            {
                k4 = aqx2.width;
            } else
            {
                k4 = l1;
            }
        } else
        {
            j4 = l3;
            k4 = l1;
        }
        if (aqx2.height == -2)
        {
            break MISSING_BLOCK_LABEL_459;
        }
        i4 = 0x40000000;
        if (aqx2.height == -1)
        {
            break MISSING_BLOCK_LABEL_459;
        }
        l4 = aqx2.height;
        view1.measure(android.view.View.MeasureSpec.makeMeasureSpec(k4, j4), android.view.View.MeasureSpec.makeMeasureSpec(l4, i4));
        if (flag)
        {
            i2 -= view1.getMeasuredHeight();
        } else
        if (flag1)
        {
            l1 -= view1.getMeasuredWidth();
        }
        k2++;
          goto _L3
_L2:
        if (ah)
        {
            v = android.view.View.MeasureSpec.makeMeasureSpec(i2, 0x40000000);
        }
        w = true;
        c();
        w = false;
        l2 = getChildCount();
        for (i3 = 0; i3 < l2; i3++)
        {
            view = getChildAt(i3);
            if (view.getVisibility() == 8)
            {
                continue;
            }
            aqx1 = (aqx)view.getLayoutParams();
            if (aqx1 == null || !aqx1.a)
            {
                view.measure(android.view.View.MeasureSpec.makeMeasureSpec((int)((float)l1 * aqx1.c), 0x40000000), v);
            }
        }

        return;
        l4 = i2;
        break MISSING_BLOCK_LABEL_254;
    }

    protected boolean onRequestFocusInDescendants(int i1, Rect rect)
    {
        byte byte0 = -1;
        int j1 = getChildCount();
        int k1;
        if ((i1 & 2) != 0)
        {
            byte0 = 1;
            k1 = 0;
        } else
        {
            k1 = j1 - 1;
            j1 = byte0;
        }
        for (; k1 != j1; k1 += byte0)
        {
            View view = getChildAt(k1);
            if (view.getVisibility() != 0)
            {
                continue;
            }
            aqw aqw1 = a(view);
            if (aqw1 != null && aqw1.b == j && view.requestFocus(i1, rect))
            {
                return true;
            }
        }

        return false;
    }

    public void onRestoreInstanceState(Parcelable parcelable)
    {
        if (!(parcelable instanceof SavedState))
        {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedstate = (SavedState)parcelable;
        super.onRestoreInstanceState(savedstate.getSuperState());
        if (i != null)
        {
            i.a(savedstate.b, savedstate.c);
            a(savedstate.a, false, true);
            return;
        } else
        {
            k = savedstate.a;
            l = savedstate.b;
            m = savedstate.c;
            return;
        }
    }

    public Parcelable onSaveInstanceState()
    {
        SavedState savedstate = new SavedState(super.onSaveInstanceState());
        savedstate.a = j;
        if (i != null)
        {
            savedstate.b = i.d();
        }
        return savedstate;
    }

    protected void onSizeChanged(int i1, int j1, int k1, int l1)
    {
        super.onSizeChanged(i1, j1, k1, l1);
        if (i1 != k1)
        {
            a(i1, k1, p, p);
        }
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        int i1;
        boolean flag;
        if (Q)
        {
            return true;
        }
        if (motionevent.getAction() == 0 && motionevent.getEdgeFlags() != 0)
        {
            return false;
        }
        if (i == null || i.c() == 0)
        {
            return false;
        }
        if (J == null)
        {
            J = VelocityTracker.obtain();
        }
        J.addMovement(motionevent);
        i1 = 0xff & motionevent.getAction();
        flag = false;
        i1;
        JVM INSTR tableswitch 0 6: default 120
    //                   0 130
    //                   1 355
    //                   2 188
    //                   3 506
    //                   4 120
    //                   5 558
    //                   6 589;
           goto _L1 _L2 _L3 _L4 _L5 _L1 _L6 _L7
_L1:
        if (flag)
        {
            dj.b(this);
        }
        return true;
_L2:
        n.abortAnimation();
        y = false;
        c();
        A = true;
        setScrollState(1);
        float f5 = motionevent.getX();
        F = f5;
        G = f5;
        I = cy.b(motionevent, 0);
        flag = false;
        continue; /* Loop/switch isn't completed */
_L4:
        if (!A)
        {
            int j2 = cy.a(motionevent, I);
            float f1 = cy.c(motionevent, j2);
            float f2 = Math.abs(f1 - G);
            float f3 = Math.abs(cy.d(motionevent, j2) - H);
            if (f2 > (float)E && f2 > f3)
            {
                A = true;
                boolean flag3;
                float f4;
                if (f1 - F > 0.0F)
                {
                    f4 = F + (float)E;
                } else
                {
                    f4 = F - (float)E;
                }
                G = f4;
                setScrollState(1);
                setScrollingCacheEnabled(true);
            }
        }
        flag3 = A;
        flag = false;
        if (flag3)
        {
            flag = false | b(cy.c(motionevent, cy.a(motionevent, I)));
        }
        continue; /* Loop/switch isn't completed */
_L3:
        boolean flag2 = A;
        flag = false;
        if (flag2)
        {
            VelocityTracker velocitytracker = J;
            velocitytracker.computeCurrentVelocity(1000, L);
            int k1 = (int)de.a(velocitytracker, I);
            y = true;
            int l1 = getWidth();
            int i2 = getScrollX();
            aqw aqw1 = i();
            a(a(aqw1.b, ((float)i2 / (float)l1 - aqw1.e) / aqw1.d, k1, (int)(cy.c(motionevent, cy.a(motionevent, I)) - F)), true, true, k1);
            I = -1;
            j();
            flag = R.c() | S.c();
        }
        continue; /* Loop/switch isn't completed */
_L5:
        boolean flag1 = A;
        flag = false;
        if (flag1)
        {
            a(j, true, 0, false);
            I = -1;
            j();
            flag = R.c() | S.c();
        }
        continue; /* Loop/switch isn't completed */
_L6:
        int j1 = cy.b(motionevent);
        G = cy.c(motionevent, j1);
        I = cy.b(motionevent, j1);
        flag = false;
        continue; /* Loop/switch isn't completed */
_L7:
        a(motionevent);
        G = cy.c(motionevent, cy.a(motionevent, I));
        flag = false;
        if (true) goto _L1; else goto _L8
_L8:
    }

    public void setAdapter(aqp aqp1)
    {
        if (i != null)
        {
            i.b(o);
            i.a(this);
            for (int i1 = 0; i1 < f.size(); i1++)
            {
                aqw aqw1 = (aqw)f.get(i1);
                i.a(this, aqw1.b, aqw1.a);
            }

            i.b(this);
            f.clear();
            h();
            j = 0;
            scrollTo(0, 0);
        }
        aqp aqp2 = i;
        i = aqp1;
        if (i != null)
        {
            if (o == null)
            {
                o = new arc(this, null);
            }
            i.a(o);
            y = false;
            T = true;
            if (k >= 0)
            {
                i.a(l, m);
                a(k, false, true);
                k = -1;
                l = null;
                m = null;
            } else
            {
                c();
            }
        }
        if (aa != null && aqp2 != aqp1)
        {
            aa.a(aqp2, aqp1);
        }
    }

    void setChildrenDrawingOrderEnabledCompat(boolean flag)
    {
        if (ac == null)
        {
            try
            {
                Class aclass[] = new Class[1];
                aclass[0] = Boolean.TYPE;
                ac = android/view/ViewGroup.getDeclaredMethod("setChildrenDrawingOrderEnabled", aclass);
            }
            catch (NoSuchMethodException nosuchmethodexception) { }
        }
        try
        {
            Method method = ac;
            Object aobj[] = new Object[1];
            aobj[0] = Boolean.valueOf(flag);
            method.invoke(this, aobj);
            return;
        }
        catch (Exception exception)
        {
            return;
        }
    }

    public void setCurrentItemInCenter(int i1)
    {
        setCurrentItem(i1);
        boolean flag;
        if (!T)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        a(i1, flag, 0, false);
    }

    public void setOffscreenPageLimit(int i1)
    {
        if (i1 < 1)
        {
            i1 = 1;
        }
        if (i1 != z)
        {
            z = i1;
            c();
        }
    }

    void setOnAdapterChangeListener(aqz aqz1)
    {
        aa = aqz1;
    }

    public void setOnPageChangeListener(ara ara1)
    {
        W = ara1;
    }

    public void setPageMargin(int i1)
    {
        int j1 = p;
        p = i1;
        int k1 = getWidth();
        a(k1, k1, i1, j1);
        requestLayout();
    }

    public void setPageMarginDrawable(int i1)
    {
        setPageMarginDrawable(getContext().getResources().getDrawable(i1));
    }

    public void setPageMarginDrawable(Drawable drawable)
    {
        q = drawable;
        if (drawable != null)
        {
            refreshDrawableState();
        }
        boolean flag;
        if (drawable == null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        setWillNotDraw(flag);
        invalidate();
    }

    public void setmMatchChildHeightToViewPager(boolean flag)
    {
        ah = flag;
    }

    protected boolean verifyDrawable(Drawable drawable)
    {
        return super.verifyDrawable(drawable) || drawable == q;
    }


    private class SavedState extends android.view.View.BaseSavedState
    {

        public static final android.os.Parcelable.Creator CREATOR = bg.a(new ard());
        int a;
        Parcelable b;
        ClassLoader c;

        public String toString()
        {
            return (new StringBuilder()).append("FragmentPager.SavedState{").append(Integer.toHexString(System.identityHashCode(this))).append(" position=").append(a).append("}").toString();
        }

        public void writeToParcel(Parcel parcel, int i1)
        {
            super.writeToParcel(parcel, i1);
            parcel.writeInt(a);
            parcel.writeParcelable(b, i1);
        }


        public SavedState(Parcel parcel, ClassLoader classloader)
        {
            super(parcel);
            if (classloader == null)
            {
                classloader = getClass().getClassLoader();
            }
            a = parcel.readInt();
            b = parcel.readParcelable(classloader);
            c = classloader;
        }

        public SavedState(Parcelable parcelable)
        {
            super(parcelable);
        }
    }

}
