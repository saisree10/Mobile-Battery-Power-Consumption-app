// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.os.BatteryStats;
import android.os.Parcel;
import com.android.internal.app.IBatteryStats;
import com.android.internal.os.BatteryStatsImpl;

public class aip
{

    private Context a;
    private IBatteryStats b;
    private int c[];
    private int d[];

    public aip(Context context)
    {
        a = context;
        if (azf.j())
        {
            b = com.android.internal.app.IBatteryStats.Stub.asInterface(gl.a("batteryinfo"));
            a(c());
        }
    }

    private void a(BatteryStats batterystats)
    {
        if (batterystats != null) goto _L2; else goto _L1
_L1:
        return;
_L2:
        long l;
        long l1;
        int i;
        byte byte0;
        boolean flag;
        boolean flag1;
        android.os.BatteryStats.HistoryItem historyitem;
        c = new int[25];
        d = new int[25];
        l = 0L;
        l1 = 0L;
        i = 0;
        byte0 = -1;
        flag = true;
        flag1 = false;
        if (!batterystats.startIteratingHistoryLocked())
        {
            continue; /* Loop/switch isn't completed */
        }
        historyitem = new android.os.BatteryStats.HistoryItem();
_L5:
        int i1;
        do
        {
            do
            {
                do
                {
                    if (!batterystats.getNextHistoryLocked(historyitem))
                    {
                        continue; /* Loop/switch isn't completed */
                    }
                    i++;
                } while (historyitem.cmd != 1);
                if (flag)
                {
                    flag = false;
                    l = historyitem.time;
                }
            } while (historyitem.batteryLevel == byte0 && i != 1);
            l1 = historyitem.time;
            byte0 = historyitem.batteryLevel;
            int ai[];
            int k;
            int j1;
            if (l1 > bap.b())
            {
                int k1 = bap.a(l1);
                c[k1] = byte0;
            } else
            if (l1 > bap.a())
            {
                flag1 = true;
                int j = bap.a(l1);
                d[j] = byte0;
            }
        } while (!flag1);
        if (c[0] != 0) goto _L4; else goto _L3
_L3:
        ai = c;
        k = ai.length;
        i1 = 0;
_L6:
        if (i1 < k)
        {
            j1 = ai[i1];
            if (j1 == 0)
            {
                break MISSING_BLOCK_LABEL_246;
            }
            c[0] = j1;
        }
_L4:
        d[24] = c[0];
          goto _L5
        i1++;
          goto _L6
        if (l1 > l) goto _L1; else goto _L7
_L7:
        c = null;
        d = null;
        return;
    }

    private BatteryStatsImpl c()
    {
        BatteryStatsImpl batterystatsimpl;
        Parcel parcel;
        byte abyte0[] = b.getStatistics();
        parcel = Parcel.obtain();
        parcel.unmarshall(abyte0, 0, abyte0.length);
        parcel.setDataPosition(0);
        batterystatsimpl = (BatteryStatsImpl)BatteryStatsImpl.CREATOR.createFromParcel(parcel);
        parcel.recycle();
        return batterystatsimpl;
        Exception exception;
        exception;
        Exception exception1;
        batterystatsimpl = null;
        exception1 = exception;
_L2:
        azt.d("BatteryStatsHistory", (new StringBuilder()).append("Exception:").append(exception1).toString());
        return batterystatsimpl;
        exception1;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public int[] a()
    {
        return c;
    }

    public int[] b()
    {
        return d;
    }
}
