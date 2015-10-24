// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.Serializable;

public class bee
    implements Serializable
{

    public static final bee a;
    public static final bee b;
    public static final bee c;
    private android.graphics.Paint.Cap d;
    private android.graphics.Paint.Join e;
    private float f;
    private float g[];
    private float h;

    public bee(android.graphics.Paint.Cap cap, android.graphics.Paint.Join join, float f1, float af[], float f2)
    {
        d = cap;
        e = join;
        f = f1;
        g = af;
    }

    public android.graphics.Paint.Cap a()
    {
        return d;
    }

    public android.graphics.Paint.Join b()
    {
        return e;
    }

    public float c()
    {
        return f;
    }

    public float[] d()
    {
        return g;
    }

    public float e()
    {
        return h;
    }

    static 
    {
        a = new bee(android.graphics.Paint.Cap.BUTT, android.graphics.Paint.Join.MITER, 4F, null, 0.0F);
        b = new bee(android.graphics.Paint.Cap.ROUND, android.graphics.Paint.Join.BEVEL, 10F, new float[] {
            10F, 10F
        }, 1.0F);
        c = new bee(android.graphics.Paint.Cap.ROUND, android.graphics.Paint.Join.BEVEL, 5F, new float[] {
            2.0F, 10F
        }, 1.0F);
    }
}
