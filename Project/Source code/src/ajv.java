// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.net.wifi.SupplicantState;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Handler;
import android.view.View;
import android.widget.LinearLayout;

public class ajv extends ajk
{

    public static int a = 1;
    private boolean p;
    private WifiManager q;

    public ajv(Context context, Handler handler, LinearLayout linearlayout, boolean flag)
    {
        super(context, handler, linearlayout);
        p = flag;
        a = 1;
        if (p)
        {
            j = 0;
            return;
        } else
        {
            j = 2;
            return;
        }
    }

    private boolean h()
    {
        int i = q.getWifiState();
        return i == 3 || i == 2;
    }

    public void a()
    {
        o = azw.l;
        if (!o)
        {
            l = 1;
            n = false;
            j = 0;
            k = 0;
        } else
        {
            q = (WifiManager)c.getSystemService("wifi");
            if (p)
            {
                k = 0;
                WifiInfo wifiinfo = q.getConnectionInfo();
                SupplicantState supplicantstate;
                if (wifiinfo == null)
                {
                    supplicantstate = SupplicantState.INVALID;
                } else
                {
                    supplicantstate = wifiinfo.getSupplicantState();
                }
                if (a == 1)
                {
                    if (q.isWifiEnabled() && (supplicantstate == SupplicantState.INACTIVE || supplicantstate == SupplicantState.UNINITIALIZED || supplicantstate == SupplicantState.DISCONNECTED || supplicantstate == SupplicantState.INVALID || supplicantstate == SupplicantState.SCANNING || supplicantstate == SupplicantState.DORMANT))
                    {
                        l = 2;
                        Context context3 = c;
                        com.dianxinos.dxbs.R.string _tmp = ly.i;
                        m = context3.getString(0x7f0a031c);
                        a = 2;
                        n = true;
                        return;
                    } else
                    {
                        a = 3;
                        n = false;
                        return;
                    }
                }
                if (a == 2)
                {
                    if (!h())
                    {
                        l = 1;
                        Context context2 = c;
                        com.dianxinos.dxbs.R.string _tmp1 = ly.i;
                        m = context2.getString(0x7f0a031e);
                        return;
                    }
                } else
                {
                    n = false;
                    return;
                }
            } else
            {
                if (a == 2)
                {
                    n = false;
                    return;
                }
                if (h())
                {
                    l = 3;
                    Context context1 = c;
                    com.dianxinos.dxbs.R.string _tmp2 = ly.i;
                    m = context1.getString(0x7f0a031d);
                } else
                {
                    l = 1;
                    Context context = c;
                    com.dianxinos.dxbs.R.string _tmp3 = ly.i;
                    m = context.getString(0x7f0a031e);
                    k = j;
                }
                n = true;
                return;
            }
        }
    }

    public void b()
    {
        if (q != null)
        {
            if (p)
            {
                if (n)
                {
                    q.setWifiEnabled(false);
                    Context context2 = c;
                    com.dianxinos.dxbs.R.string _tmp = ly.i;
                    m = context2.getString(0x7f0a031e);
                    k = j;
                    l = 1;
                }
            } else
            {
                if (l == 3)
                {
                    l = 4;
                    q.setWifiEnabled(false);
                    Context context1 = c;
                    com.dianxinos.dxbs.R.string _tmp1 = ly.i;
                    m = context1.getString(0x7f0a031e);
                    k = j;
                    return;
                }
                if (l == 4)
                {
                    l = 3;
                    q.setWifiEnabled(true);
                    Context context = c;
                    com.dianxinos.dxbs.R.string _tmp2 = ly.i;
                    m = context.getString(0x7f0a031d);
                    k = 0;
                    return;
                }
            }
        }
    }

    public String c()
    {
        Context context = c;
        com.dianxinos.dxbs.R.string _tmp = ly.i;
        return context.getString(0x7f0a031b);
    }

    public String d()
    {
        if (a == 2)
        {
            return null;
        }
        if (l == 4)
        {
            Context context1 = c;
            com.dianxinos.dxbs.R.string _tmp = ly.i;
            return context1.getString(0x7f0a0349);
        } else
        {
            Context context = c;
            com.dianxinos.dxbs.R.string _tmp1 = ly.i;
            return context.getString(0x7f0a0345);
        }
    }

    public void onClick(View view)
    {
        e();
    }

}
