// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Typeface;
import java.util.Locale;

public class azp
{

    private static azp a;
    private Context b;
    private Typeface c;
    private Typeface d;
    private Typeface e;

    private azp(Context context)
    {
        b = context;
        c = Typeface.createFromAsset(context.getAssets(), "fonts/Harabara.ttf");
        d = Typeface.createFromAsset(context.getAssets(), "fonts/Novecentowide-Normal.ttf");
        e = Typeface.createFromAsset(context.getAssets(), "fonts/BEBAS___.ttf");
    }

    public static azp a(Context context)
    {
        if (a != null) goto _L2; else goto _L1
_L1:
        azp;
        JVM INSTR monitorenter ;
        if (a == null)
        {
            a = new azp(context);
        }
        azp;
        JVM INSTR monitorexit ;
_L2:
        return a;
        Exception exception;
        exception;
        azp;
        JVM INSTR monitorexit ;
        throw exception;
    }

    private boolean e()
    {
        boolean flag;
        try
        {
            flag = b.getResources().getConfiguration().locale.toString().startsWith("en");
        }
        catch (Exception exception)
        {
            return false;
        }
label0:
        {
            if (flag)
            {
                return true;
            }
            break label0;
        }
    }

    public Typeface a()
    {
        if (e())
        {
            return c;
        } else
        {
            return null;
        }
    }

    public Typeface b()
    {
        if (e())
        {
            return d;
        } else
        {
            return null;
        }
    }

    public Typeface c()
    {
        return d;
    }

    public Typeface d()
    {
        if (e())
        {
            return e;
        } else
        {
            return null;
        }
    }
}
