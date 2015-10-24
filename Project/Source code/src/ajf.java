// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Intent;
import android.content.res.Resources;
import android.os.Handler;
import android.os.Message;
import android.view.View;
import android.view.Window;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.dianxinos.powermanager.diagnostic.DiagnosticDetail;
import com.dianxinos.powermanager.diagnostic.DiagnosticMainActivity;
import com.dianxinos.powermanager.diagnostic.DiagnosticTitle;
import com.dianxinos.powermanager.diagnostic.StateButton;

public class ajf extends Handler
{

    final DiagnosticMainActivity a;

    public ajf(DiagnosticMainActivity diagnosticmainactivity)
    {
        a = diagnosticmainactivity;
        super();
    }

    private void a()
    {
        this;
        JVM INSTR monitorenter ;
        if (DiagnosticMainActivity.n(a) == 2 || DiagnosticMainActivity.n(a) == 5) goto _L2; else goto _L1
_L1:
        int l = DiagnosticMainActivity.n(a);
        if (l == 4) goto _L2; else goto _L3
_L3:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        DiagnosticMainActivity.b(a, true);
        DiagnosticMainActivity.f(a).setVisibility(8);
        DiagnosticMainActivity.p(a).setChargingStatus(DiagnosticMainActivity.o(a));
        DiagnosticMainActivity.n(a);
        JVM INSTR tableswitch 2 5: default 512
    //                   2 116
    //                   3 512
    //                   4 316
    //                   5 215;
           goto _L3 _L4 _L3 _L5 _L6
_L4:
        int i;
        int j;
        i = ajj.a(a);
        j = DiagnosticMainActivity.a(a, DiagnosticMainActivity.j(a));
        boolean flag;
        flag = false;
        if (j > 0)
        {
            flag = true;
        }
        int k = ajj.a(DiagnosticMainActivity.q(a), flag);
        if (k < 3) goto _L8; else goto _L7
_L7:
        ajj.a(a, 3);
_L8:
        if (i <= k || k != 1) goto _L10; else goto _L9
_L9:
        ajj.a(3);
_L10:
        if (k != 4) goto _L6; else goto _L11
_L11:
        DiagnosticMainActivity.b(a).setState(4);
_L6:
        DiagnosticMainActivity.p(a).setState(ajj.a());
        if (DiagnosticMainActivity.a(a, DiagnosticMainActivity.j(a)) <= 0)
        {
            DiagnosticMainActivity.b(a).setState(3);
            DiagnosticMainActivity.h(a).setState(4);
        }
        DiagnosticMainActivity.b(a).a(DiagnosticMainActivity.o(a), DiagnosticMainActivity.r(a));
        DiagnosticMainActivity.b(a).setTime(DiagnosticMainActivity.s(a));
          goto _L3
        Exception exception;
        exception;
        throw exception;
_L5:
        DiagnosticMainActivity.p(a).setState(ajj.b(DiagnosticMainActivity.q(a)));
        DiagnosticMainActivity.b(a).setState(6);
        DiagnosticMainActivity.b(a).a(DiagnosticMainActivity.o(a), DiagnosticMainActivity.r(a));
        DiagnosticMainActivity.b(a).setTime(DiagnosticMainActivity.s(a));
        if (DiagnosticMainActivity.t(a))
        {
            DiagnosticMainActivity.c(a, false);
            if (DiagnosticMainActivity.u(a).a(bad.a, DiagnosticMainActivity.s(a)) != null)
            {
                if (DiagnosticMainActivity.v(a) == null)
                {
                    DiagnosticMainActivity.a(a, new awg(a));
                }
                DiagnosticMainActivity.v(a).dismiss();
                awg awg1 = DiagnosticMainActivity.v(a);
                ly.i;
                awg1.a(0x7f0a0303, DiagnosticMainActivity.s(a) / 60);
                DiagnosticMainActivity.v(a).show();
            }
        }
          goto _L3
    }

    public void handleMessage(Message message)
    {
        if (!DiagnosticMainActivity.a(a)) goto _L2; else goto _L1
_L1:
        return;
_L2:
        switch (message.what)
        {
        case 12: // '\f'
        case 13: // '\r'
        case 14: // '\016'
        default:
            return;

        case 1: // '\001'
            DiagnosticMainActivity diagnosticmainactivity26 = a;
            ly.i;
            Object aobj9[] = new Object[1];
            aobj9[0] = (String)message.obj;
            String s1 = diagnosticmainactivity26.getString(0x7f0a0342, aobj9);
            DiagnosticMainActivity.b(a).a(1, s1);
            return;

        case 2: // '\002'
            ((ajk)message.obj).a(DiagnosticMainActivity.c(a));
            DiagnosticMainActivity.d(a);
            DiagnosticMainActivity.f(a).setProgress(DiagnosticMainActivity.e(a) + DiagnosticMainActivity.a());
            return;

        case 3: // '\003'
            DiagnosticMainActivity diagnosticmainactivity24 = a;
            ly.f;
            TextView textview9 = (TextView)diagnosticmainactivity24.findViewById(0x7f0700cd);
            DiagnosticMainActivity diagnosticmainactivity25 = a;
            ly.i;
            Object aobj8[] = new Object[1];
            aobj8[0] = Integer.valueOf(DiagnosticMainActivity.a(a, DiagnosticMainActivity.g(a)));
            textview9.setText(diagnosticmainactivity25.getString(0x7f0a0352, aobj8));
            DiagnosticMainActivity.a(a, 2);
            DiagnosticMainActivity.h(a).setState(2);
            DiagnosticMainActivity.b(a).setState(2);
            DiagnosticMainActivity.a(a, true);
            a.sendBroadcast(new Intent("com.dianxinos.dxbs.action.RemainingTimeUpate"));
            return;

        case 16: // '\020'
            DiagnosticMainActivity.a(a, 5);
            DiagnosticMainActivity.h(a).setEnabled(true);
            DiagnosticMainActivity.i(a);
            DiagnosticMainActivity diagnosticmainactivity16 = a;
            ly.f;
            TextView textview5 = (TextView)diagnosticmainactivity16.findViewById(0x7f0700bf);
            DiagnosticMainActivity diagnosticmainactivity17 = a;
            ly.i;
            Object aobj4[] = new Object[1];
            aobj4[0] = Integer.valueOf(DiagnosticMainActivity.a(a, DiagnosticMainActivity.j(a)));
            textview5.setText(diagnosticmainactivity17.getString(0x7f0a034e, aobj4));
            DiagnosticMainActivity diagnosticmainactivity18 = a;
            ly.f;
            TextView textview6 = (TextView)diagnosticmainactivity18.findViewById(0x7f0700c7);
            DiagnosticMainActivity diagnosticmainactivity19 = a;
            ly.i;
            Object aobj5[] = new Object[1];
            aobj5[0] = Integer.valueOf(DiagnosticMainActivity.a(a, DiagnosticMainActivity.k(a)));
            textview6.setText(diagnosticmainactivity19.getString(0x7f0a0350, aobj5));
            DiagnosticMainActivity diagnosticmainactivity20 = a;
            ly.f;
            TextView textview7 = (TextView)diagnosticmainactivity20.findViewById(0x7f0700ca);
            DiagnosticMainActivity diagnosticmainactivity21 = a;
            ly.i;
            Object aobj6[] = new Object[1];
            aobj6[0] = Integer.valueOf(DiagnosticMainActivity.a(a, DiagnosticMainActivity.l(a)));
            textview7.setText(diagnosticmainactivity21.getString(0x7f0a01fc, aobj6));
            DiagnosticMainActivity diagnosticmainactivity22 = a;
            ly.f;
            TextView textview8 = (TextView)diagnosticmainactivity22.findViewById(0x7f0700cd);
            DiagnosticMainActivity diagnosticmainactivity23 = a;
            ly.i;
            Object aobj7[] = new Object[1];
            aobj7[0] = Integer.valueOf(DiagnosticMainActivity.a(a, DiagnosticMainActivity.g(a)));
            textview8.setText(diagnosticmainactivity23.getString(0x7f0a0352, aobj7));
            DiagnosticMainActivity.a(a, true);
            a.sendBroadcast(new Intent("com.dianxinos.dxbs.action.RemainingTimeUpate"));
            return;

        case 4: // '\004'
            DiagnosticMainActivity diagnosticmainactivity15 = a;
            ly.i;
            Object aobj3[] = new Object[1];
            aobj3[0] = (String)message.obj;
            String s = diagnosticmainactivity15.getString(0x7f0a034b, aobj3);
            DiagnosticMainActivity.b(a).a(5, s);
            return;

        case 5: // '\005'
            ((ajk)message.obj).n();
            DiagnosticMainActivity.d(a);
            DiagnosticMainActivity.f(a).setProgress(DiagnosticMainActivity.e(a) + DiagnosticMainActivity.a());
            return;

        case 6: // '\006'
            DiagnosticMainActivity diagnosticmainactivity14 = a;
            ly.f;
            TextView textview4 = (TextView)diagnosticmainactivity14.findViewById(0x7f0700bf);
            Resources resources1 = a.getResources();
            ly.c;
            textview4.setTextColor(resources1.getColor(0x7f090054));
            DiagnosticMainActivity.a(a, 4);
            DiagnosticMainActivity.b(a).setState(6);
            DiagnosticMainActivity.h(a).setState(4);
            DiagnosticMainActivity.i(a);
            DiagnosticMainActivity.a(a, true);
            a.sendBroadcast(new Intent("com.dianxinos.dxbs.action.RemainingTimeUpate"));
            return;

        case 18: // '\022'
            DiagnosticMainActivity diagnosticmainactivity13 = a;
            ly.f;
            diagnosticmainactivity13.findViewById(0x7f0700c3).setVisibility(0);
            return;

        case 19: // '\023'
            DiagnosticMainActivity diagnosticmainactivity12 = a;
            ly.f;
            diagnosticmainactivity12.findViewById(0x7f0700c1).setVisibility(0);
            return;

        case 20: // '\024'
            DiagnosticMainActivity diagnosticmainactivity11 = a;
            ly.f;
            diagnosticmainactivity11.findViewById(0x7f0700c1).setVisibility(8);
            return;

        case 21: // '\025'
            DiagnosticMainActivity.a(a, (add)message.obj);
            return;

        case 7: // '\007'
            DiagnosticMainActivity diagnosticmainactivity7 = a;
            ly.f;
            TextView textview2 = (TextView)diagnosticmainactivity7.findViewById(0x7f0700bf);
            DiagnosticMainActivity diagnosticmainactivity8 = a;
            ly.i;
            Object aobj2[] = new Object[1];
            aobj2[0] = Integer.valueOf(DiagnosticMainActivity.a(a, DiagnosticMainActivity.j(a)));
            textview2.setText(diagnosticmainactivity8.getString(0x7f0a034e, aobj2));
            if (DiagnosticMainActivity.a(a, DiagnosticMainActivity.j(a)) == 0)
            {
                DiagnosticMainActivity diagnosticmainactivity10 = a;
                ly.f;
                TextView textview3 = (TextView)diagnosticmainactivity10.findViewById(0x7f0700bf);
                Resources resources = a.getResources();
                ly.c;
                textview3.setTextColor(resources.getColor(0x7f090054));
            }
            if (DiagnosticMainActivity.m(a))
            {
                DiagnosticMainActivity diagnosticmainactivity9 = a;
                ly.f;
                diagnosticmainactivity9.findViewById(0x7f0700c6).setVisibility(0);
                return;
            }
            break;

        case 11: // '\013'
            DiagnosticMainActivity diagnosticmainactivity4 = a;
            ly.f;
            TextView textview1 = (TextView)diagnosticmainactivity4.findViewById(0x7f0700c7);
            DiagnosticMainActivity diagnosticmainactivity5 = a;
            ly.i;
            Object aobj1[] = new Object[1];
            aobj1[0] = Integer.valueOf(DiagnosticMainActivity.a(a, DiagnosticMainActivity.k(a)));
            textview1.setText(diagnosticmainactivity5.getString(0x7f0a0350, aobj1));
            DiagnosticMainActivity diagnosticmainactivity6 = a;
            ly.f;
            diagnosticmainactivity6.findViewById(0x7f0700c9).setVisibility(0);
            return;

        case 8: // '\b'
            DiagnosticMainActivity diagnosticmainactivity = a;
            ly.f;
            View view = diagnosticmainactivity.findViewById(0x7f0700c9);
            DiagnosticMainActivity diagnosticmainactivity3;
            if (DiagnosticMainActivity.a(a, DiagnosticMainActivity.l(a)) == 0)
            {
                view.setVisibility(8);
            } else
            {
                DiagnosticMainActivity diagnosticmainactivity1 = a;
                ly.f;
                TextView textview = (TextView)diagnosticmainactivity1.findViewById(0x7f0700ca);
                DiagnosticMainActivity diagnosticmainactivity2 = a;
                ly.i;
                Object aobj[] = new Object[1];
                aobj[0] = Integer.valueOf(DiagnosticMainActivity.a(a, DiagnosticMainActivity.l(a)));
                textview.setText(diagnosticmainactivity2.getString(0x7f0a01fc, aobj));
                view.setVisibility(0);
            }
            diagnosticmainactivity3 = a;
            ly.f;
            diagnosticmainactivity3.findViewById(0x7f0700cc).setVisibility(0);
            return;

        case 9: // '\t'
            DiagnosticMainActivity.h(a).setEnabled(false);
            ((ajk)message.obj).a(false);
            return;

        case 10: // '\n'
            DiagnosticMainActivity.h(a).setEnabled(true);
            ((ajk)message.obj).g();
            DiagnosticMainActivity.i(a);
            DiagnosticMainActivity.b(a).setState(6);
            DiagnosticMainActivity.a(a, true);
            return;

        case 15: // '\017'
            a();
            return;

        case 17: // '\021'
            Window window = a.getWindow();
            android.view.WindowManager.LayoutParams layoutparams = window.getAttributes();
            layoutparams.screenBrightness = Float.valueOf(message.obj.toString()).floatValue();
            window.setAttributes(layoutparams);
            return;
        }
        if (true) goto _L1; else goto _L3
_L3:
    }
}
