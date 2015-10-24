// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.dianxinos.powermanager.ui;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.FocusFinder;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.animation.AnimationUtils;
import android.widget.FrameLayout;
import awa;
import awb;
import azf;
import azv;
import java.util.List;
import ly;

public class PageHorizontalScrollView extends FrameLayout
{

    private static int p;
    private boolean A;
    private boolean B;
    private int C;
    private boolean D;
    private long a;
    private final Rect b;
    private awb c;
    private boolean d;
    private float e;
    private boolean f;
    private View g;
    private boolean h;
    private VelocityTracker i;
    private boolean j;
    private boolean k;
    private int l;
    private int m;
    private int n;
    private int o;
    private boolean q;
    private float r;
    private int s;
    private int t;
    private final float u;
    private final float v;
    private final float w;
    private int x;
    private awa y;
    private int z;

    public PageHorizontalScrollView(Context context)
    {
        this(context, null);
    }

    public PageHorizontalScrollView(Context context, AttributeSet attributeset)
    {
        this(context, attributeset, 0);
    }

    public PageHorizontalScrollView(Context context, AttributeSet attributeset, int i1)
    {
        super(context, attributeset, i1);
        b = new Rect();
        f = true;
        g = null;
        h = false;
        k = true;
        o = -1;
        q = true;
        r = 0.0F;
        s = 0;
        t = 0;
        u = 1.05F;
        v = 1.12F;
        w = 1.5F;
        x = 0;
        z = 0;
        A = false;
        B = true;
        C = 0;
        D = true;
        a();
        com.dianxinos.dxbs.R.styleable _tmp = ly.k;
        TypedArray typedarray = context.obtainStyledAttributes(attributeset, com.dianxinos.dxbs.R.styleable.PageHorizontalScrollView, i1, 0);
        com.dianxinos.dxbs.R.styleable _tmp1 = ly.k;
        setFillViewport(typedarray.getBoolean(0, false));
        typedarray.recycle();
    }

    private View a(boolean flag, int i1, int j1)
    {
        java.util.ArrayList arraylist;
        View view;
        boolean flag1;
        int k1;
        int l1;
        arraylist = getFocusables(2);
        view = null;
        flag1 = false;
        k1 = arraylist.size();
        l1 = 0;
_L2:
        boolean flag2;
        View view2;
        if (l1 >= k1)
        {
            break; /* Loop/switch isn't completed */
        }
        View view1 = (View)arraylist.get(l1);
        int i2 = view1.getLeft();
        int j2 = view1.getRight();
        if (i1 >= j2 || i2 >= j1)
        {
            break MISSING_BLOCK_LABEL_221;
        }
        boolean flag3;
        if (i1 < i2 && j2 < j1)
        {
            flag3 = true;
        } else
        {
            flag3 = false;
        }
        if (view == null)
        {
            boolean flag5 = flag3;
            view2 = view1;
            flag2 = flag5;
        } else
        {
            boolean flag4;
            if (flag && i2 < view.getLeft() || !flag && j2 > view.getRight())
            {
                flag4 = true;
            } else
            {
                flag4 = false;
            }
            if (flag1)
            {
                if (!flag3 || !flag4)
                {
                    break MISSING_BLOCK_LABEL_221;
                }
                view2 = view1;
                flag2 = flag1;
            } else
            if (flag3)
            {
                view2 = view1;
                flag2 = true;
            } else
            {
                if (!flag4)
                {
                    break MISSING_BLOCK_LABEL_221;
                }
                view2 = view1;
                flag2 = flag1;
            }
        }
_L3:
        l1++;
        view = view2;
        flag1 = flag2;
        if (true) goto _L2; else goto _L1
_L1:
        return view;
        flag2 = flag1;
        view2 = view;
          goto _L3
    }

    private View a(boolean flag, int i1, View view)
    {
        int j1 = getHorizontalFadingEdgeLength() / 2;
        int k1 = i1 + j1;
        int l1 = (i1 + getWidth()) - j1;
        if (view != null && view.getLeft() < l1 && view.getRight() > k1)
        {
            return view;
        } else
        {
            return a(flag, k1, l1);
        }
    }

    private void a()
    {
        c = new awb(getContext());
        setFocusable(true);
        setDescendantFocusability(0x40000);
        setWillNotDraw(false);
        ViewConfiguration viewconfiguration = ViewConfiguration.get(getContext());
        l = viewconfiguration.getScaledTouchSlop();
        m = (int)(1.2F * (float)viewconfiguration.getScaledMinimumFlingVelocity());
        n = viewconfiguration.getScaledMaximumFlingVelocity();
    }

    private void a(MotionEvent motionevent)
    {
        int i1 = (0xff00 & motionevent.getAction()) >> 8;
        if (motionevent.getPointerId(i1) == o)
        {
            int j1;
            if (i1 == 0)
            {
                j1 = 1;
            } else
            {
                j1 = 0;
            }
            e = motionevent.getX(j1);
            o = motionevent.getPointerId(j1);
            if (i != null)
            {
                i.clear();
            }
        }
    }

    private boolean a(int i1, int j1, int k1)
    {
        int l1 = getWidth();
        int i2 = getScrollX();
        int j2 = i2 + l1;
        boolean flag;
        Object obj;
        boolean flag1;
        if (i1 == 17)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        obj = a(flag, j1, k1);
        if (obj == null)
        {
            obj = this;
        }
        if (j1 >= i2 && k1 <= j2)
        {
            flag1 = false;
        } else
        {
            int k2;
            if (flag)
            {
                k2 = j1 - i2;
            } else
            {
                k2 = k1 - j2;
            }
            e(k2);
            g((j1 + k1) / 2);
            flag1 = true;
        }
        if (obj != findFocus() && ((View) (obj)).requestFocus(i1))
        {
            d = true;
            d = false;
        }
        return flag1;
    }

    private boolean a(Rect rect, boolean flag)
    {
        int i1;
        boolean flag1;
label0:
        {
            i1 = a(rect);
            if (i1 != 0)
            {
                flag1 = true;
            } else
            {
                flag1 = false;
            }
            if (flag1)
            {
                if (!flag)
                {
                    break label0;
                }
                scrollBy(i1, 0);
            }
            return flag1;
        }
        b(i1, 0);
        return flag1;
    }

    private boolean a(View view)
    {
        boolean flag = a(view, 0);
        boolean flag1 = false;
        if (!flag)
        {
            flag1 = true;
        }
        return flag1;
    }

    private boolean a(View view, int i1)
    {
        view.getDrawingRect(b);
        offsetDescendantRectToMyCoords(view, b);
        return i1 + b.right >= getScrollX() && b.left - i1 <= getScrollX() + getWidth();
    }

    private boolean a(View view, View view1)
    {
        if (view == view1)
        {
            return true;
        }
        ViewParent viewparent = view.getParent();
        boolean flag;
        if ((viewparent instanceof ViewGroup) && a((View)viewparent, view1))
        {
            flag = true;
        } else
        {
            flag = false;
        }
        return flag;
    }

    private int b(int i1, int j1, int k1)
    {
        if (j1 >= k1 || i1 < 0)
        {
            i1 = 0;
        } else
        if (j1 + i1 > k1)
        {
            return k1 - j1;
        }
        return i1;
    }

    private void b(View view)
    {
        view.getDrawingRect(b);
        offsetDescendantRectToMyCoords(view, b);
        int i1 = a(b);
        if (i1 != 0)
        {
            scrollBy(i1, 0);
        }
    }

    private boolean b()
    {
        View view = getChildAt(0);
        boolean flag = false;
        if (view != null)
        {
            int i1 = view.getWidth();
            int j1 = getWidth();
            int k1 = i1 + getPaddingLeft() + getPaddingRight();
            flag = false;
            if (j1 < k1)
            {
                flag = true;
            }
        }
        return flag;
    }

    private void c()
    {
        int i1 = f(getScrollX());
        a(i1, 1.05F);
        g(i1);
    }

    private boolean d(int i1, int j1)
    {
        int k1 = getChildCount();
        boolean flag = false;
        if (k1 > 0)
        {
            int l1 = getScrollX();
            View view = getChildAt(0);
            int i2 = view.getTop();
            flag = false;
            if (j1 >= i2)
            {
                int j2 = view.getBottom();
                flag = false;
                if (j1 < j2)
                {
                    int k2 = view.getLeft() - l1;
                    flag = false;
                    if (i1 >= k2)
                    {
                        int l2 = view.getRight() - l1;
                        flag = false;
                        if (i1 < l2)
                        {
                            flag = true;
                        }
                    }
                }
            }
        }
        return flag;
    }

    private void e(int i1)
    {
label0:
        {
            if (i1 != 0)
            {
                if (!k)
                {
                    break label0;
                }
                b(i1, 0);
            }
            return;
        }
        scrollBy(i1, 0);
    }

    private int f(int i1)
    {
        int j1 = getWidth();
        if (q)
        {
            return ((i1 + p / 2) / p) * p;
        } else
        {
            return ((j1 + i1 + p / 2) / p) * p - j1;
        }
    }

    private void g(int i1)
    {
        int j1 = i1 / p;
        if (x != j1 && j1 < z)
        {
            x = j1;
            d(x);
        }
    }

    private int getScrollRange()
    {
        int i1 = getChildCount();
        int j1 = 0;
        if (i1 > 0)
        {
            j1 = Math.max(0, getChildAt(0).getWidth() - getWidth() - getPaddingLeft() - getPaddingRight());
        }
        return j1;
    }

    protected int a(Rect rect)
    {
        if (getChildCount() == 0)
        {
            return 0;
        }
        int i1 = getWidth();
        int j1 = getScrollX();
        int k1 = j1 + i1;
        int l1 = getHorizontalFadingEdgeLength();
        if (rect.left > 0)
        {
            j1 += l1;
        }
        if (rect.right < getChildAt(0).getWidth())
        {
            k1 -= l1;
        }
        int i2;
        if (rect.right > k1 && rect.left > j1)
        {
            int k2;
            if (rect.width() > i1)
            {
                k2 = 0 + (rect.left - j1);
            } else
            {
                k2 = 0 + (rect.right - k1);
            }
            i2 = Math.min(k2, getChildAt(0).getRight() - k1);
        } else
        if (rect.left < j1 && rect.right < k1)
        {
            int j2;
            if (rect.width() > i1)
            {
                j2 = 0 - (k1 - rect.right);
            } else
            {
                j2 = 0 - (j1 - rect.left);
            }
            i2 = Math.max(j2, -getScrollX());
        } else
        {
            i2 = 0;
        }
        return i2;
    }

    public void a(int i1)
    {
        if (D)
        {
            C = i1;
        }
        if (i1 < z)
        {
            int j1 = i1 - x;
            if (j1 == 0)
            {
                return;
            }
            if (j1 < 0)
            {
                a(17, Math.abs(j1));
                return;
            } else
            {
                a(66, Math.abs(j1));
                return;
            }
        } else
        {
            throw new IllegalArgumentException("Item number beyond the total size.");
        }
    }

    public void a(int i1, float f1)
    {
        if (getChildCount() > 0)
        {
            int j1 = c.a(i1 - getScrollX(), f1);
            int k1 = getWidth() - getPaddingRight() - getPaddingLeft();
            int l1 = getChildAt(0).getWidth();
            c.a(getScrollX(), getScrollY(), j1, 0, 0, Math.max(0, l1 - k1), 0, 0);
            c.a(i1);
            boolean flag;
            boolean flag1;
            Object obj;
            if (j1 <= 0)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            q = flag;
            if (Math.abs(c.d() - getScrollX()) < p)
            {
                c(i1, getScrollY());
            } else
            {
                c.a(i1);
            }
            if (j1 > 0)
            {
                flag1 = true;
            } else
            {
                flag1 = false;
            }
            obj = a(flag1, c.d(), findFocus());
            if (obj == null)
            {
                obj = this;
            }
            if (obj != findFocus())
            {
                byte byte0;
                if (flag1)
                {
                    byte0 = 66;
                } else
                {
                    byte0 = 17;
                }
                if (((View) (obj)).requestFocus(byte0))
                {
                    d = true;
                    d = false;
                }
            }
            invalidate();
        }
    }

    public boolean a(int i1, int j1)
    {
        int k1;
        boolean flag;
        Rect rect1;
        View view;
        if (i1 == 66)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        k1 = getWidth();
        b.left = x * p;
        if (!flag) goto _L2; else goto _L1
_L1:
        rect1 = b;
        rect1.left = rect1.left + k1 * j1;
        if (getChildCount() > 0)
        {
            view = getChildAt(0);
            if (k1 + b.left > view.getRight())
            {
                b.left = view.getRight() - k1;
            }
        }
_L4:
        b.right = k1 + b.left;
        return a(i1, b.left, b.right);
_L2:
        Rect rect = b;
        rect.left = rect.left - k1 * j1;
        if (b.left < 0)
        {
            b.left = 0;
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public boolean a(KeyEvent keyevent)
    {
        byte byte0 = 17;
        b.setEmpty();
        boolean flag;
        if (!b())
        {
            boolean flag1 = isFocused();
            flag = false;
            if (flag1)
            {
                View view = findFocus();
                if (view == this)
                {
                    view = null;
                }
                View view1 = FocusFinder.getInstance().findNextFocus(this, view, 66);
                boolean flag2;
                if (view1 != null && view1 != this && view1.requestFocus(66))
                {
                    flag2 = true;
                } else
                {
                    flag2 = false;
                }
                flag = flag2;
            }
        } else
        {
            int i1 = keyevent.getAction();
            flag = false;
            if (i1 == 0)
            {
                switch (keyevent.getKeyCode())
                {
                default:
                    return false;

                case 21: // '\025'
                    if (!keyevent.isAltPressed())
                    {
                        return b(byte0);
                    } else
                    {
                        return c(byte0);
                    }

                case 22: // '\026'
                    if (!keyevent.isAltPressed())
                    {
                        return b(66);
                    } else
                    {
                        return c(66);
                    }

                case 62: // '>'
                    break;
                }
                if (!keyevent.isShiftPressed())
                {
                    byte0 = 66;
                }
                b(byte0);
                return false;
            }
        }
        return flag;
    }

    public void addView(View view)
    {
        if (getChildCount() > 0)
        {
            throw new IllegalStateException("HorizontalScrollView can host only one direct child");
        } else
        {
            super.addView(view);
            return;
        }
    }

    public void addView(View view, int i1)
    {
        if (getChildCount() > 0)
        {
            throw new IllegalStateException("HorizontalScrollView can host only one direct child");
        } else
        {
            super.addView(view, i1);
            return;
        }
    }

    public void addView(View view, int i1, android.view.ViewGroup.LayoutParams layoutparams)
    {
        if (getChildCount() > 0)
        {
            throw new IllegalStateException("HorizontalScrollView can host only one direct child");
        } else
        {
            super.addView(view, i1, layoutparams);
            return;
        }
    }

    public void addView(View view, android.view.ViewGroup.LayoutParams layoutparams)
    {
        if (getChildCount() > 0)
        {
            throw new IllegalStateException("HorizontalScrollView can host only one direct child");
        } else
        {
            super.addView(view, layoutparams);
            return;
        }
    }

    public final void b(int i1, int j1)
    {
        if (getChildCount() == 0)
        {
            return;
        }
        if (AnimationUtils.currentAnimationTimeMillis() - a > 250L)
        {
            int k1 = getWidth() - getPaddingRight() - getPaddingLeft();
            int l1 = Math.max(0, getChildAt(0).getWidth() - k1);
            int i2 = getScrollX();
            int j2 = Math.max(0, Math.min(i2 + i1, l1)) - i2;
            c.a(i2, getScrollY(), j2, 0);
            invalidate();
        } else
        {
            if (!c.a())
            {
                c.f();
            }
            scrollBy(i1, j1);
        }
        a = AnimationUtils.currentAnimationTimeMillis();
    }

    public boolean b(int i1)
    {
        return a(i1, 1);
    }

    public final void c(int i1, int j1)
    {
        b(i1 - getScrollX(), j1 - getScrollY());
    }

    public boolean c(int i1)
    {
        boolean flag;
        int j1;
        if (i1 == 66)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        j1 = getWidth();
        b.left = 0;
        b.right = j1;
        if (flag && getChildCount() > 0)
        {
            View view = getChildAt(0);
            b.right = view.getRight();
            b.left = b.right - j1;
        }
        return a(i1, b.left, b.right);
    }

    protected int computeHorizontalScrollOffset()
    {
        return Math.max(0, super.computeHorizontalScrollOffset());
    }

    protected int computeHorizontalScrollRange()
    {
        int i1 = getChildCount();
        int j1 = getWidth() - getPaddingLeft() - getPaddingRight();
        if (i1 == 0)
        {
            return j1;
        } else
        {
            return getChildAt(0).getRight();
        }
    }

    public void computeScroll()
    {
        while (A || !c.e()) 
        {
            return;
        }
        int i1 = getScrollX();
        int j1 = getScrollY();
        int k1 = c.b();
        int l1 = c.c();
        if (getChildCount() > 0)
        {
            View view = getChildAt(0);
            int i2 = b(k1, getWidth() - getPaddingRight() - getPaddingLeft(), view.getWidth());
            int j2 = b(l1, getHeight() - getPaddingBottom() - getPaddingTop(), view.getHeight());
            if (i2 != i1 || j2 != j1)
            {
                azv.a(this, i2);
                azv.b(this, j2);
                onScrollChanged(i2, j2, i1, j1);
            }
        }
        awakenScrollBars();
        postInvalidate();
    }

    public void d(int i1)
    {
        if (y != null)
        {
            y.a(i1);
        }
    }

    public boolean dispatchKeyEvent(KeyEvent keyevent)
    {
        return super.dispatchKeyEvent(keyevent) || a(keyevent);
    }

    protected float getLeftFadingEdgeStrength()
    {
        if (getChildCount() == 0)
        {
            return 0.0F;
        }
        int i1 = getHorizontalFadingEdgeLength();
        if (getScrollX() < i1)
        {
            return (float)getScrollX() / (float)i1;
        } else
        {
            return 1.0F;
        }
    }

    public int getMaxScrollAmount()
    {
        return (int)(0.5F * (float)(getRight() - getLeft()));
    }

    protected float getRightFadingEdgeStrength()
    {
        if (getChildCount() == 0)
        {
            return 0.0F;
        }
        int i1 = getHorizontalFadingEdgeLength();
        int j1 = getWidth() - getPaddingRight();
        int k1 = getChildAt(0).getRight() - getScrollX() - j1;
        if (k1 < i1)
        {
            return (float)k1 / (float)i1;
        } else
        {
            return 1.0F;
        }
    }

    public boolean getScrollingEnabled()
    {
        return B;
    }

    protected void measureChild(View view, int i1, int j1)
    {
        android.view.ViewGroup.LayoutParams layoutparams = view.getLayoutParams();
        int k1 = getChildMeasureSpec(j1, getPaddingTop() + getPaddingBottom(), layoutparams.height);
        view.measure(android.view.View.MeasureSpec.makeMeasureSpec(0, 0), k1);
    }

    protected void measureChildWithMargins(View view, int i1, int j1, int k1, int l1)
    {
        android.view.ViewGroup.MarginLayoutParams marginlayoutparams = (android.view.ViewGroup.MarginLayoutParams)view.getLayoutParams();
        int i2 = getChildMeasureSpec(k1, l1 + (getPaddingTop() + getPaddingBottom() + marginlayoutparams.topMargin + marginlayoutparams.bottomMargin), marginlayoutparams.height);
        view.measure(android.view.View.MeasureSpec.makeMeasureSpec(marginlayoutparams.leftMargin + marginlayoutparams.rightMargin, 0), i2);
    }

    public boolean onInterceptTouchEvent(MotionEvent motionevent)
    {
        boolean flag;
        int i1;
        flag = true;
        i1 = motionevent.getAction();
        if (i1 == 2 && h)
        {
            return flag;
        }
        i1 & 0xff;
        JVM INSTR tableswitch 0 6: default 68
    //                   0 154
    //                   1 229
    //                   2 73
    //                   3 229
    //                   4 68
    //                   5 68
    //                   6 242;
           goto _L1 _L2 _L3 _L4 _L3 _L1 _L1 _L5
_L1:
        return h;
_L4:
        int j1 = o;
        if (j1 != -1)
        {
            float f2 = motionevent.getX(motionevent.findPointerIndex(j1));
            if ((int)Math.abs(f2 - e) > l)
            {
                h = flag;
                e = f2;
                t = getScrollX();
                if (getParent() != null)
                {
                    getParent().requestDisallowInterceptTouchEvent(flag);
                }
            }
        }
        continue; /* Loop/switch isn't completed */
_L2:
        float f1 = motionevent.getX();
        if (!d((int)f1, (int)motionevent.getY()))
        {
            h = false;
        } else
        {
            e = f1;
            o = motionevent.getPointerId(0);
            t = getScrollX();
            if (c.a())
            {
                flag = false;
            }
            h = flag;
        }
        continue; /* Loop/switch isn't completed */
_L3:
        h = false;
        o = -1;
        continue; /* Loop/switch isn't completed */
_L5:
        a(motionevent);
        if (true) goto _L1; else goto _L6
_L6:
    }

    protected void onLayout(boolean flag, int i1, int j1, int k1, int l1)
    {
        super.onLayout(flag, i1, j1, k1, l1);
        p = getWidth();
        if (D)
        {
            a(C);
            D = false;
        }
        f = false;
        if (g != null && a(g, this))
        {
            b(g);
        }
        g = null;
        s = getChildAt(0).getWidth() - (getWidth() - getPaddingLeft() - getPaddingRight());
    }

    protected void onMeasure(int i1, int j1)
    {
        super.onMeasure(i1, j1);
        break MISSING_BLOCK_LABEL_6;
        while (true) 
        {
            do
            {
                return;
            } while (!j || android.view.View.MeasureSpec.getMode(i1) == 0 || getChildCount() <= 0);
            View view = getChildAt(0);
            int k1 = getMeasuredWidth();
            int l1;
            if (view.getMeasuredWidth() < k1)
            {
                android.widget.FrameLayout.LayoutParams layoutparams1 = (android.widget.FrameLayout.LayoutParams)view.getLayoutParams();
                int l2 = getChildMeasureSpec(j1, getPaddingTop() + getPaddingBottom(), layoutparams1.height);
                l1 = k1 - getPaddingLeft() - getPaddingRight();
                view.measure(android.view.View.MeasureSpec.makeMeasureSpec(l1, 0x40000000), l2);
            } else
            {
                l1 = k1;
            }
            if (view instanceof ViewGroup)
            {
                int i2 = 0;
                int j2 = l1;
                while (i2 < ((ViewGroup)view).getChildCount()) 
                {
                    View view1 = ((ViewGroup)view).getChildAt(i2);
                    android.view.ViewGroup.LayoutParams layoutparams = view.getLayoutParams();
                    int k2 = getChildMeasureSpec(j1, getPaddingTop() + getPaddingBottom(), layoutparams.height);
                    j2 = j2 - getPaddingLeft() - getPaddingRight();
                    view1.measure(android.view.View.MeasureSpec.makeMeasureSpec(j2, 0x40000000), k2);
                    i2++;
                }
            }
        }
    }

    protected boolean onRequestFocusInDescendants(int i1, Rect rect)
    {
        View view;
        if (i1 == 2)
        {
            i1 = 66;
        } else
        if (i1 == 1)
        {
            i1 = 17;
        }
        if (rect == null)
        {
            view = FocusFinder.getInstance().findNextFocus(this, null, i1);
        } else
        {
            view = FocusFinder.getInstance().findNextFocusFromRect(this, rect, i1);
        }
        if (view == null || a(view))
        {
            return false;
        } else
        {
            return view.requestFocus(i1, rect);
        }
    }

    protected void onSizeChanged(int i1, int j1, int k1, int l1)
    {
        super.onSizeChanged(i1, j1, k1, l1);
        View view;
        for (view = findFocus(); view == null || this == view || !a(view, getRight() - getLeft());)
        {
            return;
        }

        view.getDrawingRect(b);
        offsetDescendantRectToMyCoords(view, b);
        e(a(b));
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        if (!B)
        {
            return false;
        }
        if (motionevent.getAction() == 0 && motionevent.getEdgeFlags() != 0)
        {
            return false;
        }
        if (i == null)
        {
            i = VelocityTracker.obtain();
        }
        i.addMovement(motionevent);
        0xff & motionevent.getAction();
        JVM INSTR tableswitch 0 6: default 96
    //                   0 98
    //                   1 312
    //                   2 180
    //                   3 575
    //                   4 96
    //                   5 96
    //                   6 621;
           goto _L1 _L2 _L3 _L4 _L5 _L1 _L1 _L6
_L1:
        return true;
_L2:
        float f2 = motionevent.getX();
        boolean flag = d((int)f2, (int)motionevent.getY());
        h = flag;
        if (!flag)
        {
            return false;
        }
        if (!c.a())
        {
            c.f();
        }
        r = f2;
        e = f2;
        t = getScrollX();
        o = motionevent.getPointerId(0);
        continue; /* Loop/switch isn't completed */
_L4:
        float f1;
        int j2;
        if (!h)
        {
            continue; /* Loop/switch isn't completed */
        }
        f1 = motionevent.getX(motionevent.findPointerIndex(o));
        j2 = (int)(e - f1);
        if (x == -1 + z && f1 <= e)
        {
            e = f1;
            continue; /* Loop/switch isn't completed */
        }
        e = f1;
        if (f1 <= 8F + r) goto _L8; else goto _L7
_L7:
        r = f1;
        q = true;
_L9:
        scrollBy(j2, 0);
        continue; /* Loop/switch isn't completed */
_L8:
        if (f1 < r - 8F)
        {
            r = f1;
            q = false;
        }
        if (true) goto _L9; else goto _L3
_L3:
        int j1;
        int k1;
        if (!h)
        {
            continue; /* Loop/switch isn't completed */
        }
        VelocityTracker velocitytracker = i;
        velocitytracker.computeCurrentVelocity(1000, n);
        int i1;
        if (azf.g())
        {
            i1 = (int)velocitytracker.getXVelocity(o);
        } else
        {
            i1 = (int)velocitytracker.getXVelocity();
        }
        if (getChildCount() <= 0 || Math.abs(i1) <= m) goto _L11; else goto _L10
_L10:
        j1 = t - getScrollX();
        k1 = getWidth() - getPaddingLeft() - getPaddingRight();
        if (j1 <= 0) goto _L13; else goto _L12
_L12:
        int i2 = t - k1;
        g(f(i2));
        if (Math.abs(i2) < 100)
        {
            a(f(i2), 1.12F);
        } else
        {
            a(f(i2), 1.5F);
        }
_L14:
        o = -1;
        h = false;
        if (i != null)
        {
            i.recycle();
            i = null;
        }
        continue; /* Loop/switch isn't completed */
_L13:
        if (j1 < 0)
        {
            int l1 = k1 + t;
            g(f(l1));
            if (Math.abs(l1) < 100)
            {
                a(f(l1), 1.12F);
            } else
            {
                a(f(l1), 1.5F);
            }
        }
        continue; /* Loop/switch isn't completed */
_L11:
        motionevent.getX();
        c();
        if (true) goto _L14; else goto _L5
_L5:
        if (h && getChildCount() > 0)
        {
            o = -1;
            h = false;
            if (i != null)
            {
                i.recycle();
                i = null;
            }
        }
        continue; /* Loop/switch isn't completed */
_L6:
        a(motionevent);
        if (true) goto _L1; else goto _L15
_L15:
    }

    public void requestChildFocus(View view, View view1)
    {
        if (!d)
        {
            if (!f)
            {
                b(view1);
            } else
            {
                g = view1;
            }
        }
        super.requestChildFocus(view, view1);
    }

    public boolean requestChildRectangleOnScreen(View view, Rect rect, boolean flag)
    {
        rect.offset(view.getLeft() - view.getScrollX(), view.getTop() - view.getScrollY());
        return a(rect, flag);
    }

    public void requestLayout()
    {
        f = true;
        super.requestLayout();
    }

    public void scrollTo(int i1, int j1)
    {
        if (getChildCount() > 0)
        {
            View view = getChildAt(0);
            int k1 = b(i1, getWidth() - getPaddingRight() - getPaddingLeft(), view.getWidth());
            int l1 = b(j1, getHeight() - getPaddingBottom() - getPaddingTop(), view.getHeight());
            if (k1 != getScrollX() || l1 != getScrollY())
            {
                super.scrollTo(k1, l1);
            }
        }
    }

    public void setChangeItemListener(awa awa1)
    {
        y = awa1;
    }

    public void setFillViewport(boolean flag)
    {
        if (flag != j)
        {
            j = flag;
            requestLayout();
        }
    }

    public void setItemSize(int i1)
    {
        z = i1;
    }

    public void setScrollingEnabled(boolean flag)
    {
        B = flag;
    }

    public void setSmoothScrollingEnabled(boolean flag)
    {
        k = flag;
    }
}
