// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.dianxinos.powermanager.mode;

import aao;
import ahp;
import amh;
import amp;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import anj;
import auu;
import java.util.ArrayList;
import ly;

// Referenced classes of package com.dianxinos.powermanager.mode:
//            NewModeActivity

public class SettingListDialog extends aao
    implements android.view.View.OnClickListener
{

    private LayoutInflater a;
    private LinearLayout b;
    private int c;
    private int d;
    private ArrayList e;
    private amp f;
    private amh g;

    public SettingListDialog()
    {
    }

    private View a(int i)
    {
        LayoutInflater layoutinflater = a;
        com.dianxinos.dxbs.R.layout _tmp = ly.g;
        View view = layoutinflater.inflate(0x7f03006a, null);
        com.dianxinos.dxbs.R.id _tmp1 = ly.f;
        ((TextView)view.findViewById(0x7f070156)).setText((CharSequence)e.get(i));
        com.dianxinos.dxbs.R.id _tmp2 = ly.f;
        ImageView imageview = (ImageView)view.findViewById(0x7f0701cf);
        if (i == d)
        {
            com.dianxinos.dxbs.R.drawable _tmp3 = ly.e;
            imageview.setImageResource(0x7f0201f2);
        } else
        {
            com.dianxinos.dxbs.R.drawable _tmp4 = ly.e;
            imageview.setImageResource(0x7f0201f1);
        }
        view.setTag(Integer.valueOf(i));
        view.setOnClickListener(this);
        return view;
    }

    private void a()
    {
        com.dianxinos.dxbs.R.id _tmp = ly.f;
        b = (LinearLayout)findViewById(0x7f070097);
        for (int i = 0; i < c; i++)
        {
            View view = a(i);
            b.addView(view);
            if (i != -1 + c)
            {
                b.addView(auu.a(this));
            }
        }

    }

    public void onClick(View view)
    {
        int i = 0;
        do
        {
label0:
            {
                if (i < c)
                {
                    if (!view.getTag().equals(Integer.valueOf(i)))
                    {
                        break label0;
                    }
                    View view1 = b.getChildAt(i * 2);
                    com.dianxinos.dxbs.R.id _tmp = ly.f;
                    ImageView imageview = (ImageView)view1.findViewById(0x7f0701cf);
                    if (i != d)
                    {
                        View view2 = b.getChildAt(2 * d);
                        com.dianxinos.dxbs.R.id _tmp1 = ly.f;
                        ((ImageView)view2.findViewById(0x7f0701cf)).setVisibility(4);
                        imageview.setVisibility(0);
                        d = i;
                        Intent intent = new Intent(this, com/dianxinos/powermanager/mode/NewModeActivity);
                        Bundle bundle = new Bundle();
                        bundle.putString("SelectedValue", (String)e.get(d));
                        bundle.putInt("SelectedItem", d);
                        intent.putExtras(bundle);
                        setResult(-1, intent);
                    }
                }
                finish();
                return;
            }
            i++;
        } while (true);
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        f = amp.a(this);
        g = f.g();
        Bundle bundle1 = getIntent().getExtras();
        c = bundle1.getInt("counts");
        d = bundle1.getInt("Selected");
        String s = "";
        int i = bundle1.getInt("title");
        String s1;
        if (i == 0)
        {
            com.dianxinos.dxbs.R.string _tmp = ly.i;
            String s3 = getString(0x7f0a00ba);
            com.dianxinos.dxbs.R.layout _tmp1 = ly.g;
            setContentView(0x7f030073);
            e = g.a(0).d();
            s1 = s3;
        } else
        if (i == 1)
        {
            com.dianxinos.dxbs.R.string _tmp2 = ly.i;
            String s2 = getString(0x7f0a00bb);
            com.dianxinos.dxbs.R.layout _tmp3 = ly.g;
            setContentView(0x7f030073);
            e = g.a(1).d();
            s1 = s2;
        } else
        {
            if (i == 2)
            {
                com.dianxinos.dxbs.R.string _tmp4 = ly.i;
                s = getString(0x7f0a00bc);
                com.dianxinos.dxbs.R.layout _tmp5 = ly.g;
                setContentView(0x7f030073);
                e = g.a(6).d();
            }
            s1 = s;
        }
        com.dianxinos.dxbs.R.id _tmp6 = ly.f;
        ((TextView)findViewById(0x7f070153)).setText(s1);
        a = LayoutInflater.from(this);
        a();
        com.dianxinos.dxbs.R.id _tmp7 = ly.f;
        findViewById(0x7f070150).setOnClickListener(new anj(this));
    }

    protected void onPause()
    {
        super.onPause();
    }
}
