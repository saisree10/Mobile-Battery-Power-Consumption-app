// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.graphics.drawable.BitmapDrawable;
import android.util.Log;
import android.widget.ImageView;
import com.dianxinos.powermanager.PowerMangerApplication;
import java.lang.ref.WeakReference;

public class bas extends BitmapDrawable
{

    public String a;
    private PowerMangerApplication b;
    private bbk c;
    private WeakReference d;

    public bas(String s)
    {
        super(PowerMangerApplication.a().getResources());
        b = PowerMangerApplication.a();
        a = s;
        c = bbk.a();
    }

    public void a()
    {
        if (d != null && d.get() != null && ((bbn)d.get()).b() != bbc.c)
        {
            ((bbn)d.get()).a(true);
        }
    }

    public void a(ImageView imageview, int i, int j)
    {
        bbn bbn1 = new bbn(b, imageview, a, c);
        d = new WeakReference(bbn1);
        Log.d("AsyncBitmapDrawable", "async exec");
        Integer ainteger[] = new Integer[2];
        ainteger[0] = Integer.valueOf(i);
        ainteger[1] = Integer.valueOf(j);
        bbn1.c(ainteger);
    }
}
