// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.bluetooth.BluetoothAdapter;
import android.content.Context;
import android.os.Handler;
import android.view.View;
import android.widget.LinearLayout;
import java.util.Set;

public class aix extends ajk
{

    public static int a = 1;
    private BluetoothAdapter p;
    private boolean q;

    public aix(Context context, Handler handler, LinearLayout linearlayout, boolean flag)
    {
        super(context, handler, linearlayout);
        a = 1;
        q = flag;
        if (q)
        {
            j = 0;
            return;
        } else
        {
            j = 2;
            return;
        }
    }

    public void a()
    {
        p = BluetoothAdapter.getDefaultAdapter();
        boolean flag;
        if (p != null && azw.b)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        o = flag;
        if (!o)
        {
            l = 1;
            n = false;
            j = 0;
            k = 0;
        } else
        if (q)
        {
            k = 0;
            if (a == 1)
            {
                if (p.isEnabled() && p.getBondedDevices().size() <= 0)
                {
                    l = 2;
                    Context context3 = c;
                    com.dianxinos.dxbs.R.string _tmp = ly.i;
                    m = context3.getString(0x7f0a0320);
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
                if (!p.isEnabled())
                {
                    l = 1;
                    Context context2 = c;
                    com.dianxinos.dxbs.R.string _tmp1 = ly.i;
                    m = context2.getString(0x7f0a0322);
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
            if (p.isEnabled())
            {
                l = 3;
                Context context1 = c;
                com.dianxinos.dxbs.R.string _tmp2 = ly.i;
                m = context1.getString(0x7f0a0321);
            } else
            {
                l = 1;
                Context context = c;
                com.dianxinos.dxbs.R.string _tmp3 = ly.i;
                m = context.getString(0x7f0a0322);
                k = j;
            }
            n = true;
            return;
        }
    }

    public void b()
    {
        if (p == null)
        {
            break MISSING_BLOCK_LABEL_63;
        }
        if (!q)
        {
            break MISSING_BLOCK_LABEL_72;
        }
        if (!n)
        {
            break MISSING_BLOCK_LABEL_63;
        }
        p.disable();
        Context context2 = c;
        ly.i;
        m = context2.getString(0x7f0a0322);
        k = j;
        l = 1;
_L1:
        return;
        Exception exception2;
        exception2;
        exception2.printStackTrace();
        return;
        if (l == 3)
        {
            try
            {
                p.disable();
                Context context1 = c;
                ly.i;
                m = context1.getString(0x7f0a0322);
                k = j;
                l = 4;
                return;
            }
            catch (Exception exception1)
            {
                exception1.printStackTrace();
            }
            return;
        }
        if (l == 4)
        {
            try
            {
                p.enable();
                Context context = c;
                ly.i;
                m = context.getString(0x7f0a0321);
                k = 0;
                l = 3;
                return;
            }
            catch (Exception exception)
            {
                exception.printStackTrace();
            }
            return;
        }
          goto _L1
    }

    public String c()
    {
        Context context = c;
        com.dianxinos.dxbs.R.string _tmp = ly.i;
        return context.getString(0x7f0a031f);
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
