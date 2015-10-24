// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy.mraid.controller;

import android.content.Context;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.tapjoy.TapjoyLog;
import com.tapjoy.mraid.util.NetworkBroadcastReceiver;
import com.tapjoy.mraid.view.MraidView;

// Referenced classes of package com.tapjoy.mraid.controller:
//            Abstract

public class Network extends Abstract
{

    private static final String TAG = "MRAID Network";
    private NetworkBroadcastReceiver mBroadCastReceiver;
    private ConnectivityManager mConnectivityManager;
    private IntentFilter mFilter;
    private int mNetworkListenerCount;

    public Network(MraidView mraidview, Context context)
    {
        super(mraidview, context);
        mConnectivityManager = (ConnectivityManager)context.getSystemService("connectivity");
    }

    public String getNetwork()
    {
        NetworkInfo networkinfo;
        String s;
        NetworkInfo networkinfo1;
        try
        {
            networkinfo1 = mConnectivityManager.getActiveNetworkInfo();
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
            networkinfo = null;
            continue; /* Loop/switch isn't completed */
        }
        networkinfo = networkinfo1;
_L6:
        if (networkinfo != null) goto _L2; else goto _L1
_L1:
        s = "offline";
_L4:
        TapjoyLog.d("MRAID Network", (new StringBuilder()).append("getNetwork: ").append(s).toString());
        return s;
_L2:
        switch (_cls1..SwitchMap.android.net.NetworkInfo.State[networkinfo.getState().ordinal()])
        {
        default:
            int i = networkinfo.getType();
            if (i == 0)
            {
                s = "cell";
            } else
            if (i == 1)
            {
                s = "wifi";
            } else
            {
                s = "unknown";
            }
            break;

        case 1: // '\001'
            s = "unknown";
            break;

        case 2: // '\002'
            s = "offline";
            break;
        }
        if (true) goto _L4; else goto _L3
_L3:
        if (true) goto _L6; else goto _L5
_L5:
    }

    public void onConnectionChanged()
    {
        String s = (new StringBuilder()).append("window.mraidview.fireChangeEvent({ network: '").append(getNetwork()).append("'});").toString();
        TapjoyLog.d("MRAID Network", s);
        mMraidView.injectMraidJavaScript(s);
    }

    public void startNetworkListener()
    {
        if (mNetworkListenerCount == 0)
        {
            mBroadCastReceiver = new NetworkBroadcastReceiver(this);
            mFilter = new IntentFilter();
            mFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
        }
        mNetworkListenerCount = 1 + mNetworkListenerCount;
        mContext.registerReceiver(mBroadCastReceiver, mFilter);
    }

    public void stopAllListeners()
    {
        mNetworkListenerCount = 0;
        try
        {
            mContext.unregisterReceiver(mBroadCastReceiver);
            return;
        }
        catch (Exception exception)
        {
            return;
        }
    }

    public void stopNetworkListener()
    {
        mNetworkListenerCount = -1 + mNetworkListenerCount;
        if (mNetworkListenerCount == 0)
        {
            mContext.unregisterReceiver(mBroadCastReceiver);
            mBroadCastReceiver = null;
            mFilter = null;
        }
    }

    private class _cls1
    {

        static final int $SwitchMap$android$net$NetworkInfo$State[];

        static 
        {
            $SwitchMap$android$net$NetworkInfo$State = new int[android.net.NetworkInfo.State.values().length];
            try
            {
                $SwitchMap$android$net$NetworkInfo$State[android.net.NetworkInfo.State.UNKNOWN.ordinal()] = 1;
            }
            catch (NoSuchFieldError nosuchfielderror) { }
            try
            {
                $SwitchMap$android$net$NetworkInfo$State[android.net.NetworkInfo.State.DISCONNECTED.ordinal()] = 2;
            }
            catch (NoSuchFieldError nosuchfielderror1)
            {
                return;
            }
        }
    }

}
