// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowManager;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.dianxinos.powermanager.PowerMgrTabActivity;

public class awu extends LinearLayout
{

    private Context a;
    private TextView b;
    private LinearLayout c;
    private awx d;
    private LayoutInflater e;
    private float f;
    private float g;
    private float h;
    private float i;
    private int j;
    private int k;
    private int l;
    private awy m;

    public awu(Context context, LayoutInflater layoutinflater)
    {
        super(context);
        a = context;
        l = ((WindowManager)a.getSystemService("window")).getDefaultDisplay().getWidth();
        e = layoutinflater;
        LayoutInflater layoutinflater1 = e;
        com.dianxinos.dxbs.R.layout _tmp = ly.g;
        View view = layoutinflater1.inflate(0x7f03007e, this);
        com.dianxinos.dxbs.R.id _tmp1 = ly.f;
        c = (LinearLayout)view.findViewById(0x7f070204);
        c.setOnClickListener(new awv(this));
        c.setOnTouchListener(new aww(this));
    }

    static Context a(awu awu1)
    {
        return awu1.a;
    }

    private boolean a()
    {
        return Math.abs((int)h - j) <= 6 && Math.abs((int)i - k) <= 6;
    }

    private boolean a(View view, MotionEvent motionevent)
    {
        h = motionevent.getRawX();
        Resources resources = a.getResources();
        ly.d;
        int i1 = (int)resources.getDimension(0x7f08007e);
        i = motionevent.getRawY() - (float)i1;
        motionevent.getAction();
        JVM INSTR tableswitch 0 2: default 72
    //                   0 74
    //                   1 118
    //                   2 111;
           goto _L1 _L2 _L3 _L4
_L1:
        return true;
_L2:
        f = motionevent.getX();
        g = motionevent.getY();
        j = (int)h;
        k = (int)i;
        continue; /* Loop/switch isn't completed */
_L4:
        b();
        continue; /* Loop/switch isn't completed */
_L3:
        if (a())
        {
            Intent intent = new Intent(a, com/dianxinos/powermanager/PowerMgrTabActivity);
            intent.setAction("com.dianxinos.dxbs.SLEEPTIPS");
            intent.putExtra("From", 4);
            intent.addFlags(0x10000000);
            a.startActivity(intent);
        }
        if (m != null)
        {
            m.cancel(false);
        }
        m = new awy(this, (int)(h - f), (int)(i - g));
        m.execute(new Void[0]);
        if (true) goto _L1; else goto _L5
_L5:
    }

    static boolean a(awu awu1, View view, MotionEvent motionevent)
    {
        return awu1.a(view, motionevent);
    }

    static int b(awu awu1)
    {
        return awu1.l;
    }

    private void b()
    {
        int i1 = (int)(h - f);
        int j1 = (int)(i - g);
        if (d != null)
        {
            d.a(i1, j1);
        }
    }

    static awx c(awu awu1)
    {
        return awu1.d;
    }

    public void setFloatText(String s)
    {
        if (b != null)
        {
            b.setText(s);
        }
    }

    public void setMoveListener(awx awx1)
    {
        d = awx1;
    }
}
