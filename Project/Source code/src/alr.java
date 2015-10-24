// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.content.res.Resources;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.View;
import android.view.WindowManager;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import java.util.ArrayList;

public class alr
    implements android.view.View.OnClickListener
{

    private ArrayList a;
    private alt b;
    private Context c;
    private LayoutInflater d;
    private PopupWindow e;
    private boolean f;
    private boolean g;
    private int h;
    private int i;
    private int j;

    public alr(Context context, alt alt, LayoutInflater layoutinflater)
    {
        b = null;
        c = null;
        d = null;
        e = null;
        f = false;
        g = true;
        h = 0;
        i = 3;
        j = 6;
        b = alt;
        a = new ArrayList();
        c = context;
        d = layoutinflater;
    }

    static alt a(alr alr1)
    {
        return alr1.b;
    }

    static boolean b(alr alr1)
    {
        return alr1.g;
    }

    public void a(int k)
    {
        i = k;
    }

    public void a(View view)
    {
        this;
        JVM INSTR monitorenter ;
        int k;
        f = true;
        k = a.size();
        if (k >= 1) goto _L2; else goto _L1
_L1:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        LinearLayout linearlayout;
        if (e != null)
        {
            break; /* Loop/switch isn't completed */
        }
        Display display = ((WindowManager)c.getSystemService("window")).getDefaultDisplay();
        if (display.getWidth() <= display.getHeight());
        LayoutInflater layoutinflater = d;
        ly.g;
        View view1 = layoutinflater.inflate(0x7f03002d, null);
        view1.setOnClickListener(this);
        e = new PopupWindow(view1, -1, -1, false);
        e.setAnimationStyle(0x1030056);
        e.setWidth(display.getWidth());
        e.showAtLocation(view, 80, 0, 0);
        ly.f;
        linearlayout = (LinearLayout)view1.findViewById(0x7f0700a5);
        linearlayout.removeAllViews();
        linearlayout.setWeightSum(k);
        int l = 0;
_L4:
        if (l >= k)
        {
            break; /* Loop/switch isn't completed */
        }
        View view2;
        android.widget.LinearLayout.LayoutParams layoutparams;
        alu alu1 = (alu)a.get(l);
        LayoutInflater layoutinflater1 = d;
        ly.g;
        view2 = layoutinflater1.inflate(0x7f03002e, null);
        ly.f;
        TextView textview = (TextView)view2.findViewById(0x7f0700a6);
        textview.setText(alu1.a());
        textview.setCompoundDrawablesWithIntrinsicBounds(null, c.getResources().getDrawable(alu1.b()), null, null);
        view2.setOnClickListener(new als(this, alu1));
        layoutparams = (android.widget.LinearLayout.LayoutParams)view2.getLayoutParams();
        if (layoutparams != null)
        {
            break MISSING_BLOCK_LABEL_298;
        }
        layoutparams = new android.widget.LinearLayout.LayoutParams(-1, -1);
        if (l == 0)
        {
            break MISSING_BLOCK_LABEL_312;
        }
        layoutparams.setMargins(1, 0, 0, 0);
        layoutparams.weight = 1.0F;
        view2.setLayoutParams(layoutparams);
        linearlayout.addView(view2);
        l++;
        if (true) goto _L4; else goto _L3
_L3:
        if (true) goto _L1; else goto _L5
_L5:
        Exception exception;
        exception;
        throw exception;
    }

    public void a(ArrayList arraylist)
    {
        this;
        JVM INSTR monitorenter ;
        if (f)
        {
            throw new Exception("Menu list may not be modified while menu is displayed.");
        }
        break MISSING_BLOCK_LABEL_24;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
        a = arraylist;
        this;
        JVM INSTR monitorexit ;
    }

    public void a(boolean flag)
    {
        g = flag;
    }

    public boolean a()
    {
        return f;
    }

    public void b()
    {
        this;
        JVM INSTR monitorenter ;
        boolean flag;
        f = false;
        if (e == null)
        {
            break MISSING_BLOCK_LABEL_38;
        }
        flag = e.isShowing();
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_38;
        }
        Exception exception;
        try
        {
            e.dismiss();
        }
        catch (Exception exception1) { }
        e = null;
        this;
        JVM INSTR monitorexit ;
        return;
        exception;
        throw exception;
    }

    public void b(int k)
    {
        j = k;
    }

    public void onClick(View view)
    {
        b();
    }
}
