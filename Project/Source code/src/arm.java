// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.os.Message;
import android.view.LayoutInflater;
import android.view.View;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import com.dianxinos.powermanager.mode.ModeIconView;

public class arm
    implements adc, android.view.View.OnClickListener
{

    private static arm p;
    private WindowManager a;
    private android.view.WindowManager.LayoutParams b;
    private Context c;
    private View d;
    private ModeIconView e;
    private TextView f;
    private View g;
    private Button h;
    private int i;
    private ase j;
    private acz k;
    private boolean l;
    private ane m;
    private aro n;
    private int o;
    private volatile boolean q;

    private arm(Context context)
    {
        a = null;
        b = null;
        j = null;
        o = 1;
        c = context;
        k = acz.a(c);
        n = new aro(this, null);
        e();
        f();
    }

    static acz a(arm arm1)
    {
        return arm1.k;
    }

    public static arm a(Context context)
    {
        if (p != null) goto _L2; else goto _L1
_L1:
        arm;
        JVM INSTR monitorenter ;
        if (p == null)
        {
            p = new arm(context);
        }
        arm;
        JVM INSTR monitorexit ;
_L2:
        return p;
        Exception exception;
        exception;
        arm;
        JVM INSTR monitorexit ;
        throw exception;
    }

    private void a(boolean flag)
    {
        asc.a(c).a(j, flag, amq.d(i));
    }

    static boolean a(arm arm1, boolean flag)
    {
        arm1.l = flag;
        return flag;
    }

    static View b(arm arm1)
    {
        return arm1.d;
    }

    static boolean b(arm arm1, boolean flag)
    {
        arm1.q = flag;
        return flag;
    }

    static android.view.WindowManager.LayoutParams c(arm arm1)
    {
        return arm1.b;
    }

    static WindowManager d(arm arm1)
    {
        return arm1.a;
    }

    private void e()
    {
        LayoutInflater layoutinflater = (LayoutInflater)c.getSystemService("layout_inflater");
        com.dianxinos.dxbs.R.layout _tmp = ly.g;
        d = layoutinflater.inflate(0x7f03003d, null);
        View view = d;
        com.dianxinos.dxbs.R.id _tmp1 = ly.f;
        ((ImageView)view.findViewById(0x7f0700ec)).setOnClickListener(this);
        View view1 = d;
        com.dianxinos.dxbs.R.id _tmp2 = ly.f;
        h = (Button)view1.findViewById(0x7f0700eb);
        h.setOnClickListener(this);
        View view2 = d;
        com.dianxinos.dxbs.R.id _tmp3 = ly.f;
        e = (ModeIconView)view2.findViewById(0x7f0700ea);
        View view3 = d;
        com.dianxinos.dxbs.R.id _tmp4 = ly.f;
        f = (TextView)view3.findViewById(0x7f0700a6);
        View view4 = d;
        com.dianxinos.dxbs.R.id _tmp5 = ly.f;
        g = view4.findViewById(0x7f0700e8);
        a = (WindowManager)c.getSystemService("window");
    }

    private void f()
    {
        if (b != null)
        {
            return;
        } else
        {
            b = new android.view.WindowManager.LayoutParams();
            b.type = 2002;
            b.format = 1;
            android.view.WindowManager.LayoutParams layoutparams = b;
            layoutparams.flags = 8 | layoutparams.flags;
            b.width = -2;
            b.height = -2;
            b.gravity = 51;
            return;
        }
    }

    public void a(int i1)
    {
        g.setVisibility(i1);
    }

    public void a(int i1, amp amp)
    {
        i = i1;
        e.a(i1, amp);
    }

    public void a(add add1)
    {
        if (l && add1.i)
        {
            anf anf1 = new anf();
            anf1.a = add1.l;
            anf1.b = add1.k;
            Message message = new Message();
            message.obj = anf1;
            message.what = 1;
            m.sendMessage(message);
        } else
        if (m == null)
        {
            m = new ane(c, add1.k);
            return;
        }
    }

    public void a(ase ase)
    {
        j = ase;
    }

    public void a(String s)
    {
        f.setText(s);
        b(o);
    }

    public boolean a()
    {
        return q;
    }

    public void b()
    {
        int i1 = (axb.a(c) - axb.a(c, 300)) / 2;
        b.x = i1;
        b.y = 100;
        if (q)
        {
            c();
            n.sendEmptyMessageDelayed(3, 100L);
        } else
        {
            try
            {
                a.addView(d, b);
                q = true;
            }
            catch (Exception exception)
            {
                azt.d("FloatSwitchWindow", (new StringBuilder()).append("aleady added view : ").append(exception.toString()).toString());
            }
        }
        n.sendEmptyMessageDelayed(1, 100L);
    }

    public void b(int i1)
    {
        o = i1;
        if (o == 1)
        {
            Button button1 = h;
            com.dianxinos.dxbs.R.string _tmp = ly.i;
            button1.setText(0x7f0a0158);
            return;
        } else
        {
            Button button = h;
            com.dianxinos.dxbs.R.string _tmp1 = ly.i;
            button.setText(0x7f0a0157);
            return;
        }
    }

    public void c()
    {
        n.sendEmptyMessageDelayed(2, 100L);
        try
        {
            a.removeView(d);
            q = false;
            return;
        }
        catch (Exception exception)
        {
            azt.a("FloatSwitchWindow", " WindowManager remove view  Exception ...");
        }
    }

    public void d()
    {
        l = true;
        a(false);
    }

    public void onClick(View view)
    {
        int i1 = view.getId();
        com.dianxinos.dxbs.R.id _tmp = ly.f;
        if (i1 == 0x7f0700eb)
        {
            if (o == 1)
            {
                l = true;
                a(true);
            }
            c();
        } else
        {
            com.dianxinos.dxbs.R.id _tmp1 = ly.f;
            if (i1 == 0x7f0700ec)
            {
                c();
                return;
            }
        }
    }
}
