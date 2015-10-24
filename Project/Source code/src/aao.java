// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.app.Activity;
import android.content.Intent;
import com.dianxinos.powermanager.PowerMangerApplication;

public class aao extends Activity
{

    public aao()
    {
    }

    public void finish()
    {
        super.finish();
        com.dianxinos.dxbs.R.anim _tmp = ly.a;
        com.dianxinos.dxbs.R.anim _tmp1 = ly.a;
        overridePendingTransition(0x7f040004, 0x7f040005);
    }

    public void onPause()
    {
        super.onPause();
        PowerMangerApplication.a(false);
    }

    public void onResume()
    {
        super.onResume();
        PowerMangerApplication.a(true);
    }

    public void startActivity(Intent intent)
    {
        super.startActivity(intent);
        com.dianxinos.dxbs.R.anim _tmp = ly.a;
        com.dianxinos.dxbs.R.anim _tmp1 = ly.a;
        overridePendingTransition(0x7f040006, 0x7f040007);
    }

    public void startActivityForResult(Intent intent, int i)
    {
        super.startActivityForResult(intent, i);
        com.dianxinos.dxbs.R.anim _tmp = ly.a;
        com.dianxinos.dxbs.R.anim _tmp1 = ly.a;
        overridePendingTransition(0x7f040006, 0x7f040007);
    }
}
