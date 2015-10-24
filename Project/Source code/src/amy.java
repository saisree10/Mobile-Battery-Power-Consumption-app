// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Intent;
import android.os.Bundle;
import android.os.Message;
import android.text.Html;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.dianxinos.powermanager.mode.NewModeActivity;
import java.util.ArrayList;

public abstract class amy extends aao
    implements adc, android.view.View.OnClickListener
{

    protected int a;
    protected int b;
    private LayoutInflater c;
    private LinearLayout d;
    private int e;
    private int f;
    private ArrayList g;
    private amp h;
    private amh i;
    private boolean j;
    private int k;
    private acz l;
    private boolean m;
    private ane n;
    private auu o;

    public amy()
    {
        b = 0;
    }

    static int a(amy amy1, int i1)
    {
        amy1.f = i1;
        return i1;
    }

    private View a(int i1)
    {
        LayoutInflater layoutinflater = c;
        com.dianxinos.dxbs.R.layout _tmp = ly.g;
        View view = layoutinflater.inflate(0x7f030072, null);
        a(view, i1);
        com.dianxinos.dxbs.R.id _tmp1 = ly.f;
        ((TextView)view.findViewById(0x7f070156)).setText((CharSequence)g.get(i1));
        if (i1 == f)
        {
            com.dianxinos.dxbs.R.id _tmp2 = ly.f;
            ImageView imageview = (ImageView)view.findViewById(0x7f0701cf);
            imageview.setVisibility(0);
            com.dianxinos.dxbs.R.drawable _tmp3 = ly.e;
            imageview.setImageResource(0x7f0201f2);
        }
        view.setTag(Integer.valueOf(i1));
        view.setOnClickListener(this);
        return view;
    }

    private View a(String s)
    {
        LayoutInflater layoutinflater = c;
        com.dianxinos.dxbs.R.layout _tmp = ly.g;
        View view = layoutinflater.inflate(0x7f030072, null);
        com.dianxinos.dxbs.R.id _tmp1 = ly.f;
        ((TextView)view.findViewById(0x7f070156)).setText(s);
        view.setTag(Integer.valueOf(e));
        view.setOnClickListener(this);
        return view;
    }

    private View a(String s, int i1)
    {
        LayoutInflater layoutinflater = c;
        com.dianxinos.dxbs.R.layout _tmp = ly.g;
        View view = layoutinflater.inflate(0x7f030072, null);
        ImageView imageview = (ImageView)view.findViewById(i1);
        com.dianxinos.dxbs.R.drawable _tmp1 = ly.e;
        imageview.setImageResource(0x7f02000c);
        imageview.setVisibility(0);
        com.dianxinos.dxbs.R.id _tmp2 = ly.f;
        ((TextView)view.findViewById(0x7f070156)).setText(s);
        view.setTag("addNew");
        view.setOnClickListener(this);
        return view;
    }

    static auu a(amy amy1)
    {
        return amy1.o;
    }

    private void a(View view, int i1)
    {
        int j1;
        j1 = h.g(3);
        break MISSING_BLOCK_LABEL_9;
        if ((j1 != -1 || i1 <= h.g(2)) && (j1 == -1 || i1 <= j1))
        {
            ly.f;
            ImageView imageview = (ImageView)view.findViewById(0x7f070146);
            ly.f;
            ImageView imageview1 = (ImageView)view.findViewById(0x7f070147);
            ly.f;
            ImageView imageview2 = (ImageView)view.findViewById(0x7f070148);
            ly.f;
            ImageView imageview3 = (ImageView)view.findViewById(0x7f070149);
            if (h.g().l().h() || azf.n())
            {
                imageview.setVisibility(0);
                imageview1.setVisibility(0);
            }
            imageview2.setVisibility(0);
            if (h.g().a(4).h())
            {
                imageview3.setVisibility(0);
            }
            if (i1 == h.g(0))
            {
                ly.e;
                imageview2.setImageResource(0x7f02042b);
                ly.e;
                imageview3.setImageResource(0x7f020426);
                return;
            }
            if (i1 == h.g(1))
            {
                ly.e;
                imageview2.setImageResource(0x7f02042b);
                ly.e;
                imageview3.setImageResource(0x7f020427);
                return;
            }
            if (i1 == h.g(2))
            {
                if (azf.n())
                {
                    ly.e;
                    imageview.setImageResource(0x7f020429);
                    ly.e;
                    imageview1.setImageResource(0x7f020425);
                } else
                {
                    ly.e;
                    imageview.setImageResource(0x7f020428);
                    ly.e;
                    imageview1.setImageResource(0x7f020424);
                }
                ly.e;
                imageview2.setImageResource(0x7f02042b);
                ly.e;
                imageview3.setImageResource(0x7f020426);
                return;
            }
            if (i1 == h.g(3))
            {
                ArrayList arraylist = h.f().a(i1);
                if (((Integer)arraylist.get(2)).intValue() == 0)
                {
                    ly.e;
                    imageview2.setImageResource(0x7f02042b);
                } else
                {
                    ly.e;
                    imageview2.setImageResource(0x7f02042c);
                }
                if (((Integer)arraylist.get(4)).intValue() == 0)
                {
                    ly.e;
                    imageview3.setImageResource(0x7f020426);
                    return;
                } else
                {
                    ly.e;
                    imageview3.setImageResource(0x7f020427);
                    return;
                }
            }
        }
        return;
    }

    static boolean a(amy amy1, boolean flag)
    {
        amy1.m = flag;
        return flag;
    }

    static int b(amy amy1)
    {
        return amy1.k;
    }

    private void b()
    {
        com.dianxinos.dxbs.R.id _tmp = ly.f;
        d = (LinearLayout)findViewById(0x7f070097);
        for (int i1 = 0; i1 < e; i1++)
        {
            View view1 = a(i1);
            d.addView(view1);
            d.addView(auu.a(this));
        }

        com.dianxinos.dxbs.R.string _tmp1 = ly.i;
        String s = getString(0x7f0a00b8);
        com.dianxinos.dxbs.R.id _tmp2 = ly.f;
        View view = a(s, 0x7f0701cf);
        d.addView(view);
    }

    private void c()
    {
        h.a(f);
        i.a(j);
        i.c(f);
        if (i.a(f, 0))
        {
            int i1 = ((Integer)i.e().get(0)).intValue();
            ahl.a(getWindow(), i1);
        }
    }

    static void c(amy amy1)
    {
        amy1.c();
    }

    private void d()
    {
        if (o == null)
        {
            o = new auu(this);
        }
        auu auu1 = o;
        com.dianxinos.dxbs.R.string _tmp = ly.i;
        auu1.b(getString(0x7f0a00f2));
        auu auu2 = o;
        com.dianxinos.dxbs.R.string _tmp1 = ly.i;
        auu2.a(Html.fromHtml(getString(0x7f0a00fb)));
        o.b(0, null);
        o.a(0, new amz(this));
        o.show();
    }

    private void e()
    {
        Intent intent = new Intent(this, com/dianxinos/powermanager/mode/NewModeActivity);
        intent.putExtra("index", e);
        intent.putExtra("counts", e);
        intent.putExtra("isadd", true);
        startActivityForResult(intent, 1);
    }

    protected void a()
    {
        h = amp.a(this);
        g = h.d();
        i = h.g();
        i.g();
        i.c(h.b());
        e = h.a();
        f = h.b();
        a = h.h(f);
        if (!i.h())
        {
            j = true;
        } else
        {
            j = false;
        }
        c = LayoutInflater.from(this);
        b();
        l = acz.a(this);
        l.a(this);
    }

    public void a(add add1)
    {
        if (m && add1.i)
        {
            anf anf1 = new anf();
            anf1.a = add1.l;
            anf1.b = add1.k;
            Message message = new Message();
            message.obj = anf1;
            message.what = 1;
            n.sendMessage(message);
            finish();
        } else
        if (n == null)
        {
            n = new ane(this, add1.k);
            return;
        }
    }

    public void a(View view)
    {
        if (!view.getTag().equals("addNew")) goto _L2; else goto _L1
_L1:
        e();
_L4:
        return;
_L2:
        int i1 = 0;
        do
        {
            if (i1 < e)
            {
label0:
                {
                    if (!view.getTag().equals(Integer.valueOf(i1)))
                    {
                        break label0;
                    }
                    k = i1;
                    if (i1 != f)
                    {
                        if (h.h(i1) == 2 && !azf.n())
                        {
                            d();
                            return;
                        }
                        m = true;
                        f = i1;
                        c();
                        if (b == 2)
                        {
                            bal.a(this, "widget14", "sm", Integer.valueOf(1));
                            return;
                        }
                        if (b == 7)
                        {
                            bal.a(this, "home", "sm", Integer.valueOf(1));
                            return;
                        }
                    } else
                    {
                        finish();
                        return;
                    }
                }
            }
            if (true)
            {
                continue;
            }
            i1++;
        } while (true);
        if (true) goto _L4; else goto _L3
_L3:
    }

    protected void onActivityResult(int i1, int j1, Intent intent)
    {
        if (j1 == -1 && i1 == 1)
        {
            String s = intent.getExtras().getString("ModeName");
            View view = a(s);
            d.addView(view, 2 * e);
            d.addView(auu.a(this), 1 + 2 * e);
            h.a(s);
            e = 1 + e;
        }
    }

    public void onClick(View view)
    {
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
    }

    public void onDestroy()
    {
        super.onDestroy();
        m = false;
        l.b(this);
    }

    public void onPause()
    {
        super.onPause();
    }
}
