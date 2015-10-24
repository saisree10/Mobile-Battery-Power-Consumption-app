// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.dianxinos.powermanager.feedback;

import aao;
import akk;
import akl;
import akm;
import akn;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.dianxinos.powermanager.ui.MainTitle;
import java.util.ArrayList;
import java.util.Iterator;
import ly;

// Referenced classes of package com.dianxinos.powermanager.feedback:
//            FeedbackDialog

public class HotQAActivity extends aao
{

    public HotQAActivity()
    {
    }

    private View a()
    {
        ImageView imageview = new ImageView(this);
        com.dianxinos.dxbs.R.drawable _tmp = ly.e;
        imageview.setBackgroundResource(0x7f0203bf);
        imageview.setLayoutParams(new android.view.ViewGroup.LayoutParams(-1, -2));
        return imageview;
    }

    private View a(akn akn1)
    {
        akm akm1 = new akm(this, this);
        akm1.a(akn1.a, akn1.b);
        return akm1;
    }

    protected void onCreate(Bundle bundle)
    {
        ArrayList arraylist;
label0:
        {
            super.onCreate(bundle);
            com.dianxinos.dxbs.R.layout _tmp = ly.g;
            setContentView(0x7f030044);
            Intent intent = getIntent();
            if (intent != null)
            {
                arraylist = (ArrayList)intent.getSerializableExtra("QA_LIST");
                if (arraylist != null && arraylist.size() != 0)
                {
                    break label0;
                }
            }
            startActivity(new Intent(this, com/dianxinos/powermanager/feedback/FeedbackDialog));
            finish();
            return;
        }
        com.dianxinos.dxbs.R.id _tmp1 = ly.f;
        MainTitle maintitle = (MainTitle)findViewById(0x7f070007);
        maintitle.a();
        com.dianxinos.dxbs.R.drawable _tmp2 = ly.e;
        maintitle.setLeftButtonIcon(0x7f020450);
        maintitle.setLeftButtonOnclickListener(new akk(this));
        com.dianxinos.dxbs.R.id _tmp3 = ly.f;
        LinearLayout linearlayout = (LinearLayout)findViewById(0x7f070121);
        for (Iterator iterator = arraylist.iterator(); iterator.hasNext(); linearlayout.addView(a()))
        {
            linearlayout.addView(a((akn)iterator.next()));
        }

        com.dianxinos.dxbs.R.id _tmp4 = ly.f;
        findViewById(0x7f070122).setOnClickListener(new akl(this));
    }
}
