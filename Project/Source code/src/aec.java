// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.widget.Toast;
import com.dianxinos.powermanager.billing.BillingService;
import java.util.Locale;

public class aec
    implements akp
{

    private static Context a;
    private BillingService b;

    public aec(Context context)
    {
        a = context;
        b = new BillingService();
        b.a(context.getApplicationContext());
    }

    public static String a(String s)
    {
        if (s.contains("%lang%") || s.contains("%region%"))
        {
            Locale locale = Locale.getDefault();
            s = s.replace("%lang%", locale.getLanguage().toLowerCase(Locale.US)).replace("%region%", locale.getCountry().toLowerCase(Locale.US));
        }
        return s;
    }

    public void a()
    {
        b.b();
    }

    public void a(Context context, aej aej1)
    {
        if (aej1.a())
        {
            com.dianxinos.dxbs.R.string _tmp = ly.i;
            Toast.makeText(context, context.getString(0x7f0a01b4), 0).show();
        } else
        {
            aej1.b();
            if (!b.a())
            {
                aej1.a(false, 4);
                return;
            }
        }
    }

    public void b()
    {
        a();
    }

    public boolean c()
    {
        aek.a(a).a("dxpowermanagerpro");
        return true;
    }

    public boolean d()
    {
        return c();
    }

    public void e()
    {
    }

    public void f()
    {
        if (b != null)
        {
            b.c();
        }
    }

    public BillingService g()
    {
        return b;
    }
}
