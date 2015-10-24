// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.app.Activity;
import android.app.Dialog;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.Window;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;

public class avi extends Dialog
    implements android.view.View.OnClickListener
{

    private Activity a;
    private Resources b;
    private String c[];
    private boolean d;
    private TextView e;
    private TextView f;
    private avj g;

    public avi(Activity activity, avj avj1)
    {
        com.dianxinos.dxbs.R.style _tmp = ly.j;
        super(activity, 0x7f0b0006);
        d = false;
        Window window = getWindow();
        com.dianxinos.dxbs.R.style _tmp1 = ly.j;
        window.setWindowAnimations(0x7f0b001b);
        a = activity;
        com.dianxinos.dxbs.R.layout _tmp2 = ly.g;
        setContentView(0x7f0300a1);
        d = azr.a(a).h();
        b = a.getResources();
        Resources resources = b;
        int i;
        if (d)
        {
            com.dianxinos.dxbs.R.array _tmp3 = ly.m;
            i = 0x7f0d000c;
        } else
        {
            com.dianxinos.dxbs.R.array _tmp4 = ly.m;
            i = 0x7f0d000d;
        }
        c = resources.getStringArray(i);
        a();
        g = avj1;
    }

    private void a()
    {
        com.dianxinos.dxbs.R.id _tmp = ly.f;
        ((TextView)findViewById(0x7f070280)).setTypeface(azp.a(getContext()).a());
        com.dianxinos.dxbs.R.id _tmp1 = ly.f;
        ImageView imageview = (ImageView)findViewById(0x7f0700e9);
        com.dianxinos.dxbs.R.drawable _tmp2 = ly.e;
        imageview.setImageBitmap((new aza(a.getResources(), 0x7f020496, axb.a(a))).a());
        com.dianxinos.dxbs.R.id _tmp3 = ly.f;
        e = (TextView)findViewById(0x7f070281);
        TextView textview = e;
        int i;
        TextView textview1;
        LayoutInflater layoutinflater;
        LinearLayout linearlayout;
        int j;
        if (d)
        {
            com.dianxinos.dxbs.R.string _tmp4 = ly.i;
            i = 0x7f0a030b;
        } else
        {
            com.dianxinos.dxbs.R.string _tmp5 = ly.i;
            i = 0x7f0a030c;
        }
        textview.setText(i);
        e.setOnClickListener(this);
        com.dianxinos.dxbs.R.id _tmp6 = ly.f;
        textview1 = (TextView)findViewById(0x7f070282);
        com.dianxinos.dxbs.R.string _tmp7 = ly.i;
        textview1.setText(0x7f0a030d);
        layoutinflater = (LayoutInflater)a.getSystemService("layout_inflater");
        com.dianxinos.dxbs.R.id _tmp8 = ly.f;
        linearlayout = (LinearLayout)findViewById(0x7f070285);
        j = c.length;
        for (int k = 0; k < j; k++)
        {
            com.dianxinos.dxbs.R.layout _tmp9 = ly.g;
            TextView textview3 = (TextView)layoutinflater.inflate(0x7f030037, null);
            textview3.setText(c[k]);
            linearlayout.addView(textview3);
        }

        com.dianxinos.dxbs.R.id _tmp10 = ly.f;
        f = (TextView)findViewById(0x7f070286);
        f.setOnClickListener(this);
        try
        {
            String s = a.getPackageManager().getPackageInfo(a.getPackageName(), 0).versionName;
            com.dianxinos.dxbs.R.id _tmp11 = ly.f;
            TextView textview2 = (TextView)findViewById(0x7f070284);
            Activity activity = a;
            com.dianxinos.dxbs.R.string _tmp12 = ly.i;
            textview2.setText(activity.getString(0x7f0a0301, new Object[] {
                s
            }));
            return;
        }
        catch (android.content.pm.PackageManager.NameNotFoundException namenotfoundexception)
        {
            namenotfoundexception.printStackTrace();
        }
    }

    public void onClick(View view)
    {
        if (view != f) goto _L2; else goto _L1
_L1:
        bal.a(true, a, "wnc", "wnsb", Integer.valueOf(1));
_L4:
        dismiss();
        return;
_L2:
        if (view == e)
        {
            bal.a(true, a, "wnc", "wnmb", Integer.valueOf(1));
            if (d)
            {
                g.a();
            }
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public boolean onKeyDown(int i, KeyEvent keyevent)
    {
        if (i == 4)
        {
            return super.onKeyDown(i, keyevent);
        } else
        {
            return true;
        }
    }
}
