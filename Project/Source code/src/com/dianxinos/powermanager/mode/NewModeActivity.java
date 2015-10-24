// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.dianxinos.powermanager.mode;

import aao;
import ahl;
import ahp;
import amg;
import amh;
import amp;
import amx;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import ang;
import ani;
import azt;
import bal;
import com.dianxinos.powermanager.ui.DXSwitchButton;
import java.util.ArrayList;
import ly;

// Referenced classes of package com.dianxinos.powermanager.mode:
//            ModeMgrActivity, SettingListDialog

public class NewModeActivity extends aao
    implements android.view.View.OnClickListener
{

    private LayoutInflater a;
    private int b;
    private ArrayList c;
    private amh d;
    private Button e;
    private Button f;
    private EditText g;
    private amp h;
    private amx i;
    private int j;
    private boolean k;
    private boolean l;
    private ArrayList m;
    private String n;
    private boolean o;
    private boolean p;

    public NewModeActivity()
    {
        p = false;
    }

    private boolean a()
    {
        if (l)
        {
            ArrayList arraylist = m;
            com.dianxinos.dxbs.R.string _tmp = ly.i;
            arraylist.add(getString(0x7f0a0056));
            ArrayList arraylist1 = m;
            com.dianxinos.dxbs.R.string _tmp1 = ly.i;
            arraylist1.add(getString(0x7f0a00b6));
            ArrayList arraylist2 = m;
            com.dianxinos.dxbs.R.string _tmp2 = ly.i;
            arraylist2.add(getString(0x7f0a00b3));
            if (m.contains(g.getText().toString()))
            {
                return true;
            }
        }
        return false;
    }

    private boolean a(int i1)
    {
        return ((ahp)d.a().get(amg.a(i1))).e() <= 2;
    }

    public static boolean a(NewModeActivity newmodeactivity, boolean flag)
    {
        newmodeactivity.l = flag;
        return flag;
    }

    private boolean a(ArrayList arraylist)
    {
        int i1 = 0;
        do
        {
label0:
            {
                int j1 = b;
                boolean flag = false;
                if (i1 < j1)
                {
                    if (!d.a(amg.a(i1)).h() || i.b(j, amg.a(i1)) == ((Integer)arraylist.get(i1)).intValue())
                    {
                        break label0;
                    }
                    flag = true;
                }
                return flag;
            }
            i1++;
        } while (true);
    }

    private String b(int i1)
    {
        if (i1 != 3) goto _L2; else goto _L1
_L1:
        String s;
        StringBuilder stringbuilder = new StringBuilder();
        ly.i;
        s = stringbuilder.append(getString(0x7f0a0106)).append(1 + (i1 - 3)).toString();
_L4:
        return s;
_L2:
        int k1;
        m.clear();
        for (int j1 = 3; j1 < i1; j1++)
        {
            String s1 = i.c(j1);
            m.add(s1);
        }

        s = "";
        k1 = 3;
_L6:
        if (k1 > i1) goto _L4; else goto _L3
_L3:
        int l1 = 1 + (k1 - 3);
        StringBuilder stringbuilder1 = new StringBuilder();
        ly.i;
        s = stringbuilder1.append(getString(0x7f0a0106)).append(l1).toString();
        azt.a("NewModeActivity", (new StringBuilder()).append("title : ").append(s).append("postfixNum :").append(l1).toString());
        if (!m.contains(s)) goto _L4; else goto _L5
_L5:
        k1++;
          goto _L6
    }

    private void b()
    {
        l = false;
        g.setOnEditorActionListener(new ang(this));
    }

    private View c(int i1)
    {
        LayoutInflater layoutinflater = a;
        com.dianxinos.dxbs.R.layout _tmp = ly.g;
        View view = layoutinflater.inflate(0x7f03004f, null);
        com.dianxinos.dxbs.R.id _tmp1 = ly.f;
        ((TextView)view.findViewById(0x7f07001f)).setText(amg.b(i1));
        com.dianxinos.dxbs.R.id _tmp2 = ly.f;
        TextView textview = (TextView)view.findViewById(0x7f070151);
        String s = d.a(amg.a(i1)).b();
        int j1 = d.a(amg.a(i1)).f();
        if (k)
        {
            int k1 = i.b(j, amg.a(i1));
            j1 = d.a(amg.a(i1)).c(k1);
            s = d.a(amg.a(i1)).b(k1);
        }
        textview.setText(s);
        ani ani1 = new ani(this, j1, false, false, s, textview);
        c.add(ani1);
        view.setTag(ani1);
        view.setOnClickListener(this);
        return view;
    }

    private void c()
    {
        com.dianxinos.dxbs.R.id _tmp = ly.f;
        LinearLayout linearlayout = (LinearLayout)findViewById(0x7f070171);
        int i1 = 0;
        while (i1 < b) 
        {
            if (!d.a(amg.a(i1)).h())
            {
                ani ani1 = new ani();
                c.add(ani1);
            } else
            {
                linearlayout.addView(d());
                if (!a(i1))
                {
                    linearlayout.addView(c(i1));
                } else
                {
                    linearlayout.addView(d(i1));
                }
            }
            i1++;
        }
    }

    private View d()
    {
        ImageView imageview = new ImageView(this);
        Resources resources = getResources();
        com.dianxinos.dxbs.R.drawable _tmp = ly.e;
        android.graphics.drawable.Drawable drawable = resources.getDrawable(0x7f0203bf);
        imageview.setLayoutParams(new android.widget.LinearLayout.LayoutParams(-1, 2));
        imageview.setBackgroundDrawable(drawable);
        return imageview;
    }

    private View d(int i1)
    {
        LayoutInflater layoutinflater = a;
        com.dianxinos.dxbs.R.layout _tmp = ly.g;
        View view = layoutinflater.inflate(0x7f030052, null);
        com.dianxinos.dxbs.R.id _tmp1 = ly.f;
        ((TextView)view.findViewById(0x7f07001f)).setText(amg.b(i1));
        com.dianxinos.dxbs.R.id _tmp2 = ly.f;
        DXSwitchButton dxswitchbutton = (DXSwitchButton)view.findViewById(0x7f070157);
        boolean flag = d.a(amg.a(i1)).a();
        int j1;
        if (k)
        {
            int k1 = i.b(j, amg.a(i1));
            if (amg.a(i1) == 6)
            {
                ani ani1;
                boolean flag1;
                if (d.a(amg.a(i1)).c(k1) == 0)
                {
                    flag1 = false;
                } else
                {
                    flag1 = true;
                }
                flag = flag1;
            } else
            if (k1 == 0)
            {
                flag = false;
            } else
            {
                flag = true;
            }
        }
        if (flag)
        {
            j1 = 1;
        } else
        {
            j1 = 0;
        }
        ani1 = new ani(this, j1, true, flag, null, dxswitchbutton);
        c.add(ani1);
        view.setTag(ani1);
        view.setOnClickListener(this);
        return view;
    }

    protected void onActivityResult(int i1, int j1, Intent intent)
    {
        int k1 = amg.a(i1);
        if (k1 != 0) goto _L2; else goto _L1
_L1:
        j1;
        JVM INSTR tableswitch -1 -1: default 32
    //                   -1 33;
           goto _L3 _L4
_L3:
        return;
_L4:
        Bundle bundle1 = intent.getExtras();
        String s1 = bundle1.getString("SelectedValue");
        int i2 = bundle1.getInt("SelectedItem");
        ahl.a(getWindow(), i2);
        ((ani)c.get(i1)).a.setText(s1);
        ((ani)c.get(i1)).a(i2);
        return;
_L2:
        if (k1 == 1 || k1 == 6)
        {
            Bundle bundle;
            switch (j1)
            {
            default:
                return;

            case -1: 
                bundle = intent.getExtras();
                break;
            }
            String s = bundle.getString("SelectedValue");
            ((ani)c.get(i1)).a.setText(s);
            int l1 = bundle.getInt("SelectedItem");
            ((ani)c.get(i1)).a(l1);
            return;
        }
        if (true) goto _L3; else goto _L5
_L5:
    }

    public void onClick(View view)
    {
        if (view != e) goto _L2; else goto _L1
_L1:
        if (!g.getText().toString().equals("")) goto _L4; else goto _L3
_L3:
        ly.i;
        Toast.makeText(this, getString(0x7f0a00d8), 0).show();
_L6:
        return;
_L4:
        if (a())
        {
            ly.i;
            Toast.makeText(this, getString(0x7f0a00d9), 0).show();
            return;
        }
        ArrayList arraylist = new ArrayList();
        for (int j1 = 0; j1 < b; j1++)
        {
            int l1 = ((ani)c.get(j1)).b();
            arraylist.add(Integer.valueOf(d.a(amg.a(j1)).e(l1)));
        }

        int i1;
        ani ani1;
        Intent intent;
        Bundle bundle;
        boolean flag;
        String s;
        amx amx1;
        int k1;
        boolean flag1;
        Intent intent1;
        Bundle bundle1;
        if (k && a(arraylist))
        {
            flag = true;
        } else
        {
            flag = false;
        }
        s = g.getText().toString();
        if (o && !s.equals(n))
        {
            i.b(false);
        }
        amx1 = i;
        k1 = j;
        if (!k)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        amx1.a(k1, s, arraylist, flag1, false);
        intent1 = new Intent(this, com/dianxinos/powermanager/mode/ModeMgrActivity);
        bundle1 = new Bundle();
        bundle1.putString("ModeName", g.getText().toString());
        bundle1.putInt("index", j);
        bundle1.putBoolean("settings_changed", flag);
        intent1.putExtras(bundle1);
        setResult(-1, intent1);
        finish();
        if (p)
        {
            bal.a(this, "mode", "a", Integer.valueOf(1));
            return;
        }
        continue; /* Loop/switch isn't completed */
_L2:
        if (view == f)
        {
            finish();
            return;
        }
        if (view != g)
        {
            i1 = 0;
            while (i1 < b) 
            {
                ani1 = (ani)c.get(i1);
                if (view.getTag().equals(ani1))
                {
                    if (ani1.a())
                    {
                        ani1.c();
                    } else
                    {
                        intent = new Intent(this, com/dianxinos/powermanager/mode/SettingListDialog);
                        bundle = new Bundle();
                        if (amg.a(i1) == 0)
                        {
                            bundle.putInt("title", 0);
                        } else
                        if (amg.a(i1) == 1)
                        {
                            bundle.putInt("title", 1);
                        } else
                        if (amg.a(i1) == 6)
                        {
                            bundle.putInt("title", 2);
                        }
                        bundle.putInt("counts", d.a(amg.a(i1)).e());
                        bundle.putInt("Selected", ((ani)c.get(i1)).b());
                        intent.putExtras(bundle);
                        startActivityForResult(intent, i1);
                    }
                }
                i1++;
            }
        }
        if (true) goto _L6; else goto _L5
_L5:
    }

    public void onCreate(Bundle bundle)
    {
        int i1;
        super.onCreate(bundle);
        ly.g;
        setContentView(0x7f030057);
        Intent intent = getIntent();
        p = intent.getBooleanExtra("isadd", false);
        Bundle bundle1 = intent.getExtras();
        j = bundle1.getInt("index");
        i1 = bundle1.getInt("counts");
        ly.f;
        g = (EditText)findViewById(0x7f07016f);
        b();
        h = amp.a(this);
        i = new amx(this);
        c = new ArrayList();
        m = new ArrayList();
        if (j != i1) goto _L2; else goto _L1
_L1:
        k = false;
        String s = b(j);
        g.setText(s);
        int k1 = s.length();
        g.setSelection(k1);
_L4:
        ly.f;
        e = (Button)findViewById(0x7f07005f);
        e.setOnClickListener(this);
        ly.f;
        f = (Button)findViewById(0x7f070060);
        f.setOnClickListener(this);
        a = LayoutInflater.from(this);
        d = h.g();
        b = d.c();
        c();
        return;
_L2:
        n = h.c(j);
        g.setText(n);
        int j1 = n.length();
        g.setSelection(j1);
        k = true;
        if (j == h.g(3) && i.e())
        {
            o = true;
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    protected void onDestroy()
    {
        super.onDestroy();
        i = null;
        c = null;
        m.clear();
        m = null;
    }

    protected void onPause()
    {
        super.onPause();
    }

    protected void onResume()
    {
        super.onResume();
    }
}
