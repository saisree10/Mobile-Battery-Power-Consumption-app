// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.graphics.Color;
import java.text.NumberFormat;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;

public class bei extends bef
{

    private android.graphics.Paint.Align A;
    private android.graphics.Paint.Align B[];
    private float C;
    private float D;
    private float E;
    private android.graphics.Paint.Align F[];
    private int G;
    private int H[] = {
        0xffcccccc
    };
    private boolean I;
    private NumberFormat J;
    private float K;
    private double L;
    private double M;
    private String a;
    private String b[];
    private float c;
    private double d[];
    private double e[];
    private double f[];
    private double g[];
    private int h;
    private int i;
    private bej j;
    private Map k;
    private Map l;
    private boolean m;
    private boolean n;
    private boolean o;
    private boolean p;
    private double q;
    private int r;
    private double s[];
    private double t[];
    private float u;
    private float v;
    private Map w;
    private float x;
    private int y;
    private int z;

    public bei()
    {
        this(1);
    }

    public bei(int i1)
    {
        a = "";
        c = 12F;
        h = 5;
        i = 5;
        j = bej.a;
        k = new HashMap();
        l = new LinkedHashMap();
        m = true;
        n = true;
        o = true;
        p = true;
        q = 0.0D;
        r = 0;
        w = new LinkedHashMap();
        x = 3F;
        y = Color.argb(75, 200, 200, 200);
        A = android.graphics.Paint.Align.CENTER;
        C = 0.0F;
        D = 0.0F;
        E = 2.0F;
        G = 0xffcccccc;
        I = true;
        K = -1F;
        L = 0.0D;
        M = 0.0D;
        z = i1;
        d(i1);
    }

    public boolean B()
    {
        return Q() || R();
    }

    public bej H()
    {
        return j;
    }

    public String I()
    {
        return a;
    }

    public String J()
    {
        return f(0);
    }

    public float K()
    {
        return c;
    }

    public int L()
    {
        return h;
    }

    public Double[] M()
    {
        this;
        JVM INSTR monitorenter ;
        Double adouble[] = (Double[])k.keySet().toArray(new Double[0]);
        this;
        JVM INSTR monitorexit ;
        return adouble;
        Exception exception;
        exception;
        throw exception;
    }

    public void N()
    {
        this;
        JVM INSTR monitorenter ;
        k.clear();
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public void O()
    {
        q(0);
    }

    public int P()
    {
        return i;
    }

    public boolean Q()
    {
        return m;
    }

    public boolean R()
    {
        return n;
    }

    public boolean S()
    {
        return o;
    }

    public boolean T()
    {
        return p;
    }

    public int U()
    {
        return r;
    }

    public int V()
    {
        return y;
    }

    public double[] W()
    {
        return s;
    }

    public double[] X()
    {
        return t;
    }

    public float Y()
    {
        return u;
    }

    public float Z()
    {
        return v;
    }

    public String a(Double double1)
    {
        this;
        JVM INSTR monitorenter ;
        String s1 = (String)k.get(double1);
        this;
        JVM INSTR monitorexit ;
        return s1;
        Exception exception;
        exception;
        throw exception;
    }

    public String a(Double double1, int i1)
    {
        this;
        JVM INSTR monitorenter ;
        String s1 = (String)((Map)l.get(Integer.valueOf(i1))).get(double1);
        this;
        JVM INSTR monitorexit ;
        return s1;
        Exception exception;
        exception;
        throw exception;
    }

    public void a(double d1)
    {
        c(d1, 0);
    }

    public void a(double d1, int i1)
    {
        if (!h(i1))
        {
            ((double[])w.get(Integer.valueOf(i1)))[0] = d1;
        }
        d[i1] = d1;
    }

    public void a(double d1, String s1)
    {
        this;
        JVM INSTR monitorenter ;
        k.put(Double.valueOf(d1), s1);
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public void a(double d1, String s1, int i1)
    {
        this;
        JVM INSTR monitorenter ;
        ((Map)l.get(Integer.valueOf(i1))).put(Double.valueOf(d1), s1);
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public void a(int i1, int j1)
    {
        H[i1] = j1;
    }

    public void a(android.graphics.Paint.Align align)
    {
        a(align, 0);
    }

    public void a(android.graphics.Paint.Align align, int i1)
    {
        B[i1] = align;
    }

    public void a(boolean flag, boolean flag1)
    {
        m = flag;
        n = flag1;
    }

    public void a(double ad1[])
    {
        s = ad1;
    }

    public void a(double ad1[], int i1)
    {
        a(ad1[0], i1);
        b(ad1[1], i1);
        c(ad1[2], i1);
        d(ad1[3], i1);
    }

    public float aa()
    {
        return x;
    }

    public boolean ab()
    {
        return t(0);
    }

    public int ac()
    {
        return G;
    }

    public android.graphics.Paint.Align ad()
    {
        return A;
    }

    public float ae()
    {
        return C;
    }

    public float af()
    {
        return D;
    }

    public float ag()
    {
        return E;
    }

    public NumberFormat ah()
    {
        return J;
    }

    public double ai()
    {
        return L;
    }

    public double aj()
    {
        return M;
    }

    public int ak()
    {
        return z;
    }

    public void b(double d1)
    {
        d(d1, 0);
    }

    public void b(double d1, int i1)
    {
        if (!j(i1))
        {
            ((double[])w.get(Integer.valueOf(i1)))[1] = d1;
        }
        e[i1] = d1;
    }

    public void b(double d1, String s1)
    {
        a(d1, s1, 0);
    }

    public void b(boolean flag, boolean flag1)
    {
        o = flag;
        p = flag1;
    }

    public void c(double d1, int i1)
    {
        if (!l(i1))
        {
            ((double[])w.get(Integer.valueOf(i1)))[2] = d1;
        }
        f[i1] = d1;
    }

    public void c(float f1)
    {
        x = f1;
    }

    public void d(double d1, int i1)
    {
        if (!n(i1))
        {
            ((double[])w.get(Integer.valueOf(i1)))[3] = d1;
        }
        g[i1] = d1;
    }

    public void d(float f1)
    {
        E = f1;
    }

    public void d(int i1)
    {
        b = new String[i1];
        B = new android.graphics.Paint.Align[i1];
        F = new android.graphics.Paint.Align[i1];
        H = new int[i1];
        d = new double[i1];
        e = new double[i1];
        f = new double[i1];
        g = new double[i1];
        for (int j1 = 0; j1 < i1; j1++)
        {
            H[j1] = 0xffcccccc;
            e(j1);
        }

    }

    public void e(int i1)
    {
        d[i1] = 1.7976931348623157E+308D;
        e[i1] = -1.7976931348623157E+308D;
        f[i1] = 1.7976931348623157E+308D;
        g[i1] = -1.7976931348623157E+308D;
        double ad1[] = new double[4];
        ad1[0] = d[i1];
        ad1[1] = e[i1];
        ad1[2] = f[i1];
        ad1[3] = g[i1];
        w.put(Integer.valueOf(i1), ad1);
        b[i1] = "";
        l.put(Integer.valueOf(i1), new HashMap());
        B[i1] = android.graphics.Paint.Align.CENTER;
        F[i1] = android.graphics.Paint.Align.LEFT;
    }

    public String f(int i1)
    {
        return b[i1];
    }

    public double g(int i1)
    {
        return d[i1];
    }

    public boolean h(int i1)
    {
        return d[i1] != 1.7976931348623157E+308D;
    }

    public double i(int i1)
    {
        return e[i1];
    }

    public boolean j(int i1)
    {
        return e[i1] != -1.7976931348623157E+308D;
    }

    public double k(int i1)
    {
        return f[i1];
    }

    public boolean l(int i1)
    {
        return f[i1] != 1.7976931348623157E+308D;
    }

    public double m(int i1)
    {
        return g[i1];
    }

    public boolean n(int i1)
    {
        return g[i1] != -1.7976931348623157E+308D;
    }

    public void o(int i1)
    {
        h = i1;
    }

    public Double[] p(int i1)
    {
        this;
        JVM INSTR monitorenter ;
        Double adouble[] = (Double[])((Map)l.get(Integer.valueOf(i1))).keySet().toArray(new Double[0]);
        this;
        JVM INSTR monitorexit ;
        return adouble;
        Exception exception;
        exception;
        throw exception;
    }

    public void q(int i1)
    {
        this;
        JVM INSTR monitorenter ;
        ((Map)l.get(Integer.valueOf(i1))).clear();
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public void r(int i1)
    {
        i = i1;
    }

    public void s(int i1)
    {
        r = i1;
    }

    public boolean t(int i1)
    {
        return w.get(Integer.valueOf(i1)) != null;
    }

    public double[] u(int i1)
    {
        return (double[])w.get(Integer.valueOf(i1));
    }

    public int v(int i1)
    {
        return H[i1];
    }

    public void w(int i1)
    {
        G = i1;
    }

    public android.graphics.Paint.Align x(int i1)
    {
        return B[i1];
    }

    public boolean x()
    {
        return S() || T();
    }

    public android.graphics.Paint.Align y(int i1)
    {
        return F[i1];
    }
}
