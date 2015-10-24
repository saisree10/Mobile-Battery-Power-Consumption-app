// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.view.View;
import android.widget.LinearLayout;
import com.dianxinos.powermanager.PowerMgrTabActivity;
import com.dianxinos.powermanager.diagnostic.DiagnosticMainActivity;

public class ajt extends ajk
{

    private DiagnosticMainActivity a;

    public ajt(DiagnosticMainActivity diagnosticmainactivity, Handler handler, LinearLayout linearlayout)
    {
        super(diagnosticmainactivity, handler, linearlayout);
        a = diagnosticmainactivity;
    }

    public void a()
    {
        Context context = c;
        com.dianxinos.dxbs.R.string _tmp = ly.i;
        m = context.getString(0x7f0a02ee);
    }

    public void b()
    {
        bal.a(a, "adc", "adcgs", Integer.valueOf(1));
        Intent intent = new Intent(a, com/dianxinos/powermanager/PowerMgrTabActivity);
        intent.putExtra("From", 11);
        intent.putExtra("diagnose_goto_smart_page", true);
        a.startActivity(intent);
        a.finish();
    }

    public String c()
    {
        Context context = c;
        com.dianxinos.dxbs.R.string _tmp = ly.i;
        return context.getString(0x7f0a02ee);
    }

    public String d()
    {
        Context context = c;
        com.dianxinos.dxbs.R.string _tmp = ly.i;
        return context.getString(0x7f0a02ef);
    }

    public void onClick(View view)
    {
        b();
    }
}
