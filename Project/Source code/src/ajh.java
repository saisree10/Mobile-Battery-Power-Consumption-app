// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.os.Handler;
import android.os.Message;
import com.dianxinos.powermanager.diagnostic.DiagnosticMainActivity;
import java.util.Iterator;
import java.util.List;

public class ajh
    implements Runnable
{

    final DiagnosticMainActivity a;

    public ajh(DiagnosticMainActivity diagnosticmainactivity)
    {
        a = diagnosticmainactivity;
        super();
    }

    public void run()
    {
        Iterator iterator = DiagnosticMainActivity.j(a).iterator();
        do
        {
label0:
            {
                ajk ajk1;
                if (iterator.hasNext())
                {
                    ajk1 = (ajk)iterator.next();
                    if (!DiagnosticMainActivity.a(a))
                    {
                        break label0;
                    }
                }
                InterruptedException interruptedexception1;
                try
                {
                    Thread.sleep(300L);
                }
                catch (InterruptedException interruptedexception)
                {
                    interruptedexception.printStackTrace();
                }
                DiagnosticMainActivity.z(a).sendEmptyMessage(6);
                return;
            }
            if (ajk1.l())
            {
                Message.obtain(DiagnosticMainActivity.z(a), 4, ajk1.c()).sendToTarget();
            }
            ajk1.b();
            try
            {
                Thread.sleep(100L);
            }
            // Misplaced declaration of an exception variable
            catch (InterruptedException interruptedexception1)
            {
                interruptedexception1.printStackTrace();
            }
            Message.obtain(DiagnosticMainActivity.z(a), 5, ajk1).sendToTarget();
        } while (true);
    }
}
