// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.view.MotionEvent;
import android.widget.ImageView;
import com.dianxinos.powermanager.ui.HistoryChartView;

public class avk
    implements beg
{

    final HistoryChartView a;

    public avk(HistoryChartView historychartview)
    {
        a = historychartview;
        super();
    }

    public boolean a(MotionEvent motionevent, boolean flag)
    {
        motionevent.getAction();
        JVM INSTR tableswitch 0 3: default 36
    //                   0 38
    //                   1 93
    //                   2 65
    //                   3 93;
           goto _L1 _L2 _L3 _L4 _L3
_L1:
        return false;
_L2:
        if (HistoryChartView.a(a) != null && !flag)
        {
            HistoryChartView.a(a).setVisibility(0);
            return false;
        }
        continue; /* Loop/switch isn't completed */
_L4:
        if (HistoryChartView.a(a) != null && flag)
        {
            HistoryChartView.a(a).setVisibility(8);
            return false;
        }
        continue; /* Loop/switch isn't completed */
_L3:
        if (HistoryChartView.a(a) != null)
        {
            HistoryChartView.a(a).setVisibility(8);
            return false;
        }
        if (true) goto _L1; else goto _L5
_L5:
    }
}
