// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.dianxinos.powermanager.skinshop;

import aeu;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import aoj;
import aon;
import apj;
import apk;
import apl;
import aqj;
import com.dianxinos.powermanager.ui.MainTitle;
import java.util.ArrayList;
import ly;

// Referenced classes of package com.dianxinos.powermanager.skinshop:
//            OperationConfigActivity, SkinShopViewPager

public class MySkinActivity extends OperationConfigActivity
    implements aeu
{

    private Handler d;
    private boolean e;

    public MySkinActivity()
    {
        e = false;
    }

    public static boolean a(MySkinActivity myskinactivity)
    {
        return myskinactivity.e;
    }

    public static void b(MySkinActivity myskinactivity)
    {
        myskinactivity.OperationConfigActivity.finish();
    }

    protected ArrayList a()
    {
        aon aon1 = new aon();
        com.dianxinos.dxbs.R.string _tmp = ly.i;
        aon1.b = getString(0x7f0a038b);
        aon1.c = "";
        aon1.d = "MySkinBannerImageUrl";
        ArrayList arraylist = aoj.b().a();
        ArrayList arraylist1 = new ArrayList();
        if (arraylist != null)
        {
            for (int i = -1 + arraylist.size(); i >= 0; i--)
            {
                aon1.a.add(arraylist.get(i));
            }

        }
        arraylist1.add(aon1);
        return arraylist1;
    }

    protected void b()
    {
    }

    protected void c()
    {
    }

    public void finish()
    {
        super.finish();
        if (!e)
        {
            com.dianxinos.dxbs.R.anim _tmp = ly.a;
            com.dianxinos.dxbs.R.anim _tmp1 = ly.a;
            overridePendingTransition(0x7f040004, 0x7f040005);
        }
    }

    protected void onActivityResult(int i, int j, Intent intent)
    {
        super.onActivityResult(i, j, intent);
        if (i == 1092 && j == 1092)
        {
            finish();
        }
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        Intent intent = getIntent();
        if (intent != null)
        {
            e = intent.getBooleanExtra("from_arc", false);
        }
        MainTitle maintitle = a;
        com.dianxinos.dxbs.R.string _tmp = ly.i;
        maintitle.setTitleText(0x7f0a02bc);
        a.a();
        a.setLeftButtonOnclickListener(new apj(this));
        MainTitle maintitle1 = a;
        com.dianxinos.dxbs.R.drawable _tmp1 = ly.e;
        maintitle1.setRightButtonIcon(0x7f020409);
        a.setRightButtonOnclickListener(new apk(this));
        d = new apl(this);
        aqj aqj1 = b;
        new Message();
        aqj1.a(Message.obtain(d, 1092));
        c.setCurrentItemInCenter(0);
    }

    protected void onDestroy()
    {
        if (d != null)
        {
            d.removeMessages(1092);
            d = null;
        }
        super.onDestroy();
    }
}
