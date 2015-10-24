// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.os.Handler;
import android.os.Message;
import com.dianxinos.powermanager.diagnostic.DiagnosticMainActivity;
import java.util.Iterator;
import java.util.List;

public class aji
    implements Runnable
{

    final DiagnosticMainActivity a;
    private volatile boolean b;
    private volatile boolean c;

    private aji(DiagnosticMainActivity diagnosticmainactivity)
    {
        a = diagnosticmainactivity;
        super();
        b = true;
    }

    public aji(DiagnosticMainActivity diagnosticmainactivity, ajf ajf)
    {
        this(diagnosticmainactivity);
    }

    private void a(List list)
    {
        Iterator iterator = list.iterator();
_L2:
        {
            ajk ajk1;
            if (iterator.hasNext())
            {
                ajk1 = (ajk)iterator.next();
                break MISSING_BLOCK_LABEL_26;
            }
            do
            {
                return;
            } while (DiagnosticMainActivity.a(a) && !b || b);
            Message.obtain(DiagnosticMainActivity.z(a), 1, ajk1.c()).sendToTarget();
            ajk1.a();
            DiagnosticMainActivity.b(a, ajk1.k());
            if (!c)
            {
                try
                {
                    if (list != DiagnosticMainActivity.j(a))
                    {
                        break; /* Loop/switch isn't completed */
                    }
                    Thread.sleep(300L);
                }
                catch (InterruptedException interruptedexception)
                {
                    interruptedexception.printStackTrace();
                }
            }
        }
_L3:
        Message.obtain(DiagnosticMainActivity.z(a), 2, ajk1).sendToTarget();
        if (true) goto _L2; else goto _L1
_L1:
label0:
        {
            if (list != DiagnosticMainActivity.k(a))
            {
                break label0;
            }
            Thread.sleep(200L);
        }
        break MISSING_BLOCK_LABEL_109;
label1:
        {
            if (list != DiagnosticMainActivity.l(a))
            {
                break label1;
            }
            Thread.sleep(200L);
        }
          goto _L3
label2:
        {
            if (list != DiagnosticMainActivity.g(a))
            {
                break label2;
            }
            Thread.sleep(100L);
        }
          goto _L3
        if (list != DiagnosticMainActivity.y(a)) goto _L5; else goto _L4
_L4:
        Thread.sleep(200L);
          goto _L3
_L5:
        if (list != DiagnosticMainActivity.C(a)) goto _L3; else goto _L6
_L6:
        Thread.sleep(200L);
          goto _L3
    }

    private void b()
    {
        a(DiagnosticMainActivity.j(a));
        if (!b)
        {
            if (DiagnosticMainActivity.x(a).e() && !azy.a(a, "com.dianxinos.optimizer.duplay"))
            {
                if (DiagnosticMainActivity.y(a).isEmpty())
                {
                    DiagnosticMainActivity.y(a).add(new ajd(a, DiagnosticMainActivity.z(a), DiagnosticMainActivity.A(a)));
                }
                DiagnosticMainActivity.z(a).sendEmptyMessage(19);
                a(DiagnosticMainActivity.y(a));
            } else
            {
                DiagnosticMainActivity.z(a).sendEmptyMessage(20);
            }
            if (!b)
            {
                if (DiagnosticMainActivity.B(a).h())
                {
                    DiagnosticMainActivity.z(a).sendEmptyMessage(18);
                    a(DiagnosticMainActivity.C(a));
                }
                if (!b)
                {
                    DiagnosticMainActivity.z(a).sendEmptyMessage(7);
                    a(DiagnosticMainActivity.k(a));
                    if (!b)
                    {
                        DiagnosticMainActivity.z(a).sendEmptyMessage(11);
                        a(DiagnosticMainActivity.l(a));
                        if (!b)
                        {
                            DiagnosticMainActivity.z(a).sendEmptyMessage(8);
                            a(DiagnosticMainActivity.g(a));
                            if (!b)
                            {
                                if (!c)
                                {
                                    try
                                    {
                                        Thread.sleep(300L);
                                    }
                                    catch (InterruptedException interruptedexception)
                                    {
                                        interruptedexception.printStackTrace();
                                    }
                                    DiagnosticMainActivity.z(a).sendEmptyMessage(3);
                                    return;
                                } else
                                {
                                    DiagnosticMainActivity.z(a).sendEmptyMessage(16);
                                    return;
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    public void a()
    {
        b = true;
    }

    public void a(boolean flag)
    {
        c = flag;
    }

    public void run()
    {
        if (b)
        {
            b = false;
            b();
            b = true;
        }
    }
}
