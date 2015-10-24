// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.graphics.Canvas;
import android.graphics.Paint;

public abstract class bdw extends bdr
{

    protected bef a;
    protected int b;
    protected int c;

    public int a(int i)
    {
        return 10;
    }

    public bef a()
    {
        return a;
    }

    public void a(Canvas canvas, beh beh, float f, float f1, int i, Paint paint)
    {
        canvas.drawRect(f, f1 - 5F, f + 10F, f1 + 5F, paint);
    }

    public int b()
    {
        return b;
    }

    public void b(int i)
    {
        b = i;
    }

    public int c()
    {
        return c;
    }

    public void c(int i)
    {
        c = i;
    }
}
