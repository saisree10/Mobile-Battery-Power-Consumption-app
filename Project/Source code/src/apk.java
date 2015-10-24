// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Intent;
import android.view.View;
import com.dianxinos.powermanager.skinshop.MySkinActivity;
import com.dianxinos.powermanager.skinshop.OperationConfigActivity;

public class apk
    implements android.view.View.OnClickListener
{

    final MySkinActivity a;

    public apk(MySkinActivity myskinactivity)
    {
        a = myskinactivity;
        super();
    }

    public void onClick(View view)
    {
        if (MySkinActivity.a(a))
        {
            Intent intent = new Intent(a, com/dianxinos/powermanager/skinshop/OperationConfigActivity);
            intent.putExtra("from_arc", MySkinActivity.a(a));
            a.startActivityForResult(intent, 1092);
            MySkinActivity myskinactivity = a;
            com.dianxinos.dxbs.R.anim _tmp = ly.a;
            com.dianxinos.dxbs.R.anim _tmp1 = ly.a;
            myskinactivity.overridePendingTransition(0x7f040006, 0x7f040007);
        } else
        {
            a.finish();
        }
        bal.a(a, "stsc", "sts", Integer.valueOf(1));
    }
}
