// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.graphics.Rect;

public class er
{

    private static final et a;
    private final Object b;

    public er(Object obj)
    {
        b = obj;
    }

    private static String b(int i1)
    {
        switch (i1)
        {
        default:
            return "ACTION_UNKNOWN";

        case 1: // '\001'
            return "ACTION_FOCUS";

        case 2: // '\002'
            return "ACTION_CLEAR_FOCUS";

        case 4: // '\004'
            return "ACTION_SELECT";

        case 8: // '\b'
            return "ACTION_CLEAR_SELECTION";

        case 16: // '\020'
            return "ACTION_CLICK";

        case 32: // ' '
            return "ACTION_LONG_CLICK";

        case 64: // '@'
            return "ACTION_ACCESSIBILITY_FOCUS";

        case 128: 
            return "ACTION_CLEAR_ACCESSIBILITY_FOCUS";

        case 256: 
            return "ACTION_NEXT_AT_MOVEMENT_GRANULARITY";

        case 512: 
            return "ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY";

        case 1024: 
            return "ACTION_NEXT_HTML_ELEMENT";

        case 2048: 
            return "ACTION_PREVIOUS_HTML_ELEMENT";

        case 4096: 
            return "ACTION_SCROLL_FORWARD";

        case 8192: 
            return "ACTION_SCROLL_BACKWARD";

        case 65536: 
            return "ACTION_CUT";

        case 16384: 
            return "ACTION_COPY";

        case 32768: 
            return "ACTION_PASTE";

        case 131072: 
            return "ACTION_SET_SELECTION";
        }
    }

    public Object a()
    {
        return b;
    }

    public void a(int i1)
    {
        a.a(b, i1);
    }

    public void a(Rect rect)
    {
        a.a(b, rect);
    }

    public void a(CharSequence charsequence)
    {
        a.a(b, charsequence);
    }

    public void a(boolean flag)
    {
        a.a(b, flag);
    }

    public int b()
    {
        return a.a(b);
    }

    public void b(Rect rect)
    {
        a.b(b, rect);
    }

    public boolean c()
    {
        return a.f(b);
    }

    public boolean d()
    {
        return a.g(b);
    }

    public boolean e()
    {
        return a.j(b);
    }

    public boolean equals(Object obj)
    {
        if (this != obj) goto _L2; else goto _L1
_L1:
        return true;
_L2:
        er er1;
        if (obj == null)
        {
            return false;
        }
        if (getClass() != obj.getClass())
        {
            return false;
        }
        er1 = (er)obj;
        if (b != null)
        {
            continue; /* Loop/switch isn't completed */
        }
        if (er1.b == null) goto _L1; else goto _L3
_L3:
        return false;
        if (b.equals(er1.b)) goto _L1; else goto _L4
_L4:
        return false;
    }

    public boolean f()
    {
        return a.k(b);
    }

    public boolean g()
    {
        return a.o(b);
    }

    public boolean h()
    {
        return a.h(b);
    }

    public int hashCode()
    {
        if (b == null)
        {
            return 0;
        } else
        {
            return b.hashCode();
        }
    }

    public boolean i()
    {
        return a.l(b);
    }

    public boolean j()
    {
        return a.i(b);
    }

    public boolean k()
    {
        return a.m(b);
    }

    public boolean l()
    {
        return a.n(b);
    }

    public CharSequence m()
    {
        return a.d(b);
    }

    public CharSequence n()
    {
        return a.b(b);
    }

    public CharSequence o()
    {
        return a.e(b);
    }

    public CharSequence p()
    {
        return a.c(b);
    }

    public String q()
    {
        return a.p(b);
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append(super.toString());
        Rect rect = new Rect();
        a(rect);
        stringbuilder.append((new StringBuilder()).append("; boundsInParent: ").append(rect).toString());
        b(rect);
        stringbuilder.append((new StringBuilder()).append("; boundsInScreen: ").append(rect).toString());
        stringbuilder.append("; packageName: ").append(m());
        stringbuilder.append("; className: ").append(n());
        stringbuilder.append("; text: ").append(o());
        stringbuilder.append("; contentDescription: ").append(p());
        stringbuilder.append("; viewId: ").append(q());
        stringbuilder.append("; checkable: ").append(c());
        stringbuilder.append("; checked: ").append(d());
        stringbuilder.append("; focusable: ").append(e());
        stringbuilder.append("; focused: ").append(f());
        stringbuilder.append("; selected: ").append(g());
        stringbuilder.append("; clickable: ").append(h());
        stringbuilder.append("; longClickable: ").append(i());
        stringbuilder.append("; enabled: ").append(j());
        stringbuilder.append("; password: ").append(k());
        stringbuilder.append((new StringBuilder()).append("; scrollable: ").append(l()).toString());
        stringbuilder.append("; [");
        int i1 = b();
        do
        {
            if (i1 == 0)
            {
                break;
            }
            int j1 = 1 << Integer.numberOfTrailingZeros(i1);
            i1 &= ~j1;
            stringbuilder.append(b(j1));
            if (i1 != 0)
            {
                stringbuilder.append(", ");
            }
        } while (true);
        stringbuilder.append("]");
        return stringbuilder.toString();
    }

    static 
    {
        if (android.os.Build.VERSION.SDK_INT >= 19)
        {
            a = new ew();
        } else
        if (android.os.Build.VERSION.SDK_INT >= 18)
        {
            a = new ev();
        } else
        if (android.os.Build.VERSION.SDK_INT >= 16)
        {
            a = new eu();
        } else
        if (android.os.Build.VERSION.SDK_INT >= 14)
        {
            a = new es();
        } else
        {
            a = new ex();
        }
    }
}
