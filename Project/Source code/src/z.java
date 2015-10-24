// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.os.Parcelable;
import android.support.v4.app.Fragment;
import android.view.View;
import android.view.ViewGroup;

public abstract class z extends dd
{

    private final t a;
    private ae b;
    private Fragment c;

    public z(t t1)
    {
        b = null;
        c = null;
        a = t1;
    }

    private static String a(int i, long l)
    {
        return (new StringBuilder()).append("android:switcher:").append(i).append(":").append(l).toString();
    }

    public Parcelable a()
    {
        return null;
    }

    public abstract Fragment a(int i);

    public Object a(ViewGroup viewgroup, int i)
    {
        if (b == null)
        {
            b = a.a();
        }
        long l = b(i);
        String s = a(viewgroup.getId(), l);
        Fragment fragment = a.a(s);
        if (fragment != null)
        {
            b.b(fragment);
        } else
        {
            fragment = a(i);
            b.a(viewgroup.getId(), fragment, a(viewgroup.getId(), l));
        }
        if (fragment != c)
        {
            fragment.setMenuVisibility(false);
            fragment.setUserVisibleHint(false);
        }
        return fragment;
    }

    public void a(Parcelable parcelable, ClassLoader classloader)
    {
    }

    public void a(ViewGroup viewgroup)
    {
    }

    public void a(ViewGroup viewgroup, int i, Object obj)
    {
        if (b == null)
        {
            b = a.a();
        }
        b.a((Fragment)obj);
    }

    public boolean a(View view, Object obj)
    {
        return ((Fragment)obj).getView() == view;
    }

    public long b(int i)
    {
        return (long)i;
    }

    public void b(ViewGroup viewgroup)
    {
        if (b != null)
        {
            b.b();
            b = null;
            a.b();
        }
    }

    public void b(ViewGroup viewgroup, int i, Object obj)
    {
        Fragment fragment = (Fragment)obj;
        if (fragment != c)
        {
            if (c != null)
            {
                c.setMenuVisibility(false);
                c.setUserVisibleHint(false);
            }
            if (fragment != null)
            {
                fragment.setMenuVisibility(true);
                fragment.setUserVisibleHint(true);
            }
            c = fragment;
        }
    }
}
