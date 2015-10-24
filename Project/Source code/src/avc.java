// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.animation.AnimationUtils;
import android.view.animation.RotateAnimation;
import android.widget.ImageView;
import android.widget.TextView;

public class avc extends Dialog
{

    private ImageView a;
    private Context b;
    private RotateAnimation c;
    private TextView d;
    private String e;

    public avc(Context context, int i)
    {
        super(context, i);
        b = context;
    }

    public void a(String s)
    {
        e = s;
        if (isShowing())
        {
            d.setText(e);
        }
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        com.dianxinos.dxbs.R.layout _tmp = ly.g;
        setContentView(0x7f03006b);
        com.dianxinos.dxbs.R.id _tmp1 = ly.f;
        a = (ImageView)findViewById(0x7f0701d0);
        Context context = b;
        com.dianxinos.dxbs.R.anim _tmp2 = ly.a;
        c = (RotateAnimation)AnimationUtils.loadAnimation(context, 0x7f04000a);
        com.dianxinos.dxbs.R.id _tmp3 = ly.f;
        d = (TextView)findViewById(0x7f0701d1);
    }

    protected void onStart()
    {
        super.onStart();
        a.startAnimation(c);
        d.setText(e);
    }
}
