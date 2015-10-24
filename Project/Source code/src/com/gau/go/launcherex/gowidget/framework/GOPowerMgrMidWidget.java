// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.gau.go.launcherex.gowidget.framework;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Bundle;
import android.util.AttributeSet;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import axb;
import aza;
import com.dianxinos.powermanager.PowerMgrService;
import com.dianxinos.powermanager.WidgetUpdataService1x4;
import ly;

// Referenced classes of package com.gau.go.launcherex.gowidget.framework:
//            GoWidgetFrame, DxContextWrapper

public class GOPowerMgrMidWidget extends GoWidgetFrame
{

    protected static final int BATTERY_HIGHT = 0;
    protected static final int BATTERY_LOW = 1;
    public static final String BROADCAST_ACTION_REFRESH_GO_WIDGET = "broadcast_actiono_refresh_go_widget";
    private static final boolean DEBUG = false;
    private static final int SECONDS_PER_HOUR = 3600;
    private static final int SECONDS_PER_MINUTE = 60;
    private TextView mBatteryDigitText;
    private ImageView mBatteryImageView;
    private int mBatteryStatus;
    private LinearLayout mBatteryView;
    private ImageView mChargSignImage;
    private int mChargingTime;
    private DxContextWrapper mContext;
    private boolean mIsCharging;
    private boolean mIsReceiverRegitstered;
    private Button mOnekeyImage;
    private int mPercent;
    private BroadcastReceiver mReceiver;
    private int mRemainingBatteryTime;
    protected Resources mRes;
    private TextView mTimeContentText;
    private TextView mTimeTitleText;
    private int mWidgetId;

    public GOPowerMgrMidWidget(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        mContext = null;
        mIsReceiverRegitstered = false;
        mReceiver = new _cls1();
        mContext = new DxContextWrapper(context);
        mRes = mContext.getResources();
    }

    private void initView()
    {
        com.dianxinos.dxbs.R.id _tmp = ly.f;
        mBatteryView = (LinearLayout)findViewById(0x7f0700f2);
        mBatteryView.setOnClickListener(new _cls2());
        com.dianxinos.dxbs.R.id _tmp1 = ly.f;
        mOnekeyImage = (Button)findViewById(0x7f0700f5);
        mOnekeyImage.setOnClickListener(new _cls3());
    }

    private void processRefreshIntent(Intent intent)
    {
        mPercent = intent.getIntExtra("Percent", mPercent);
        mIsCharging = intent.getBooleanExtra("IsCharging", mIsCharging);
        mChargingTime = intent.getIntExtra("ChargingTime", mChargingTime);
        mRemainingBatteryTime = intent.getIntExtra("RemainingBatteryTime", mRemainingBatteryTime);
        mBatteryStatus = intent.getIntExtra("BatteryStatus", mBatteryStatus);
        refreshWidgetUI();
        showLog("Update GO UI");
    }

    private void refreshBatteryDigitPercent()
    {
        if (mChargSignImage == null)
        {
            com.dianxinos.dxbs.R.id _tmp = ly.f;
            mChargSignImage = (ImageView)findViewById(0x7f0700f4);
        }
        if (mBatteryDigitText == null)
        {
            com.dianxinos.dxbs.R.id _tmp1 = ly.f;
            mBatteryDigitText = (TextView)findViewById(0x7f0700f3);
        }
        if (mIsCharging)
        {
            mChargSignImage.setVisibility(0);
            mBatteryDigitText.setVisibility(8);
            return;
        } else
        {
            String s = (new StringBuilder()).append(mPercent).append("%").toString();
            mBatteryDigitText.setText(s);
            mBatteryDigitText.setVisibility(0);
            mChargSignImage.setVisibility(8);
            return;
        }
    }

    private void refreshBatteryImage()
    {
        int i;
        if (mBatteryImageView == null)
        {
            ly.f;
            mBatteryImageView = (ImageView)findViewById(0x7f0700f1);
        }
        i = 1 + (mPercent * axb.a(mContext, 88)) / 100;
        if (mPercent != 100) goto _L2; else goto _L1
_L1:
        Bitmap bitmap1;
        Resources resources = mRes;
        ly.e;
        bitmap1 = BitmapFactory.decodeResource(resources, 0x7f0204ad, null);
        if (bitmap1 != null) goto _L4; else goto _L3
_L3:
        int j;
        return;
_L4:
        if ((j = bitmap1.getHeight()) <= 0 || i <= 0)
        {
            continue; /* Loop/switch isn't completed */
        }
        Bitmap bitmap3;
        Resources resources1 = mRes;
        ly.e;
        bitmap3 = (new aza(resources1, 0x7f0204ad, i + 2, j)).a();
        Bitmap bitmap2 = bitmap3;
_L6:
        if (bitmap2 != null)
        {
            mBatteryImageView.setImageBitmap(bitmap2);
            return;
        }
        if (true) goto _L3; else goto _L5
_L5:
        Exception exception;
        exception;
        exception.printStackTrace();
        bitmap2 = null;
          goto _L6
_L2:
        Bitmap bitmap;
        if (mBatteryStatus == 0)
        {
            bitmap = axb.a(mRes, i, false);
        } else
        {
            bitmap = axb.a(mRes, i, true);
        }
        if (bitmap != null)
        {
            mBatteryImageView.setImageBitmap(bitmap);
            return;
        }
        if (true) goto _L3; else goto _L7
_L7:
    }

    private void refreshTimeView()
    {
        if (mTimeTitleText == null)
        {
            com.dianxinos.dxbs.R.id _tmp = ly.f;
            mTimeTitleText = (TextView)findViewById(0x7f0700f7);
        }
        if (mTimeContentText == null)
        {
            com.dianxinos.dxbs.R.id _tmp1 = ly.f;
            mTimeContentText = (TextView)findViewById(0x7f0700f8);
        }
        if (mIsCharging)
        {
            int i;
            TextView textview;
            DxContextWrapper dxcontextwrapper;
            int j;
            int k;
            int l;
            int i1;
            int j1;
            int k1;
            int l1;
            int i2;
            int j2;
            int k2;
            StringBuffer stringbuffer;
            DxContextWrapper dxcontextwrapper1;
            DxContextWrapper dxcontextwrapper2;
            TextView textview1;
            Resources resources;
            TextView textview2;
            Resources resources1;
            int l2;
            TextView textview3;
            DxContextWrapper dxcontextwrapper3;
            if ((long)mChargingTime != -1L)
            {
                l2 = mChargingTime;
            } else
            {
                l2 = 0;
            }
            textview3 = mTimeTitleText;
            dxcontextwrapper3 = mContext;
            com.dianxinos.dxbs.R.string _tmp2 = ly.i;
            textview3.setText(dxcontextwrapper3.getString(0x7f0a0176));
            j = l2;
        } else
        {
            if (mRemainingBatteryTime != -1)
            {
                i = mRemainingBatteryTime;
            } else
            {
                i = 0;
            }
            textview = mTimeTitleText;
            dxcontextwrapper = mContext;
            com.dianxinos.dxbs.R.string _tmp3 = ly.i;
            textview.setText(dxcontextwrapper.getString(0x7f0a0177));
            j = i;
        }
        if (j > 3600)
        {
            k = j / 3600;
            j -= k * 3600;
        } else
        {
            k = 0;
        }
        l = 0;
        if (j >= 60)
        {
            l = j / 60;
            int _tmp4 = j - l * 60;
        }
        if (k > 999)
        {
            k = 999;
        }
        i1 = k / 100;
        j1 = (k % 100) / 10;
        k1 = k % 10;
        l1 = l / 10;
        i2 = l % 10;
        j2 = k1 + (i1 * 100 + j1 * 10);
        k2 = i2 + l1 * 10;
        stringbuffer = new StringBuffer();
        stringbuffer.append(j2);
        dxcontextwrapper1 = mContext;
        com.dianxinos.dxbs.R.string _tmp5 = ly.i;
        stringbuffer.append(dxcontextwrapper1.getString(0x7f0a0231));
        if (l1 == 0)
        {
            stringbuffer.append("0");
        }
        stringbuffer.append(k2);
        dxcontextwrapper2 = mContext;
        com.dianxinos.dxbs.R.string _tmp6 = ly.i;
        stringbuffer.append(dxcontextwrapper2.getString(0x7f0a0232));
        mTimeContentText.setText(stringbuffer.toString());
        if (mBatteryStatus == 0)
        {
            textview2 = mTimeContentText;
            resources1 = getResources();
            com.dianxinos.dxbs.R.color _tmp7 = ly.c;
            textview2.setTextColor(resources1.getColor(0x7f090087));
            return;
        } else
        {
            textview1 = mTimeContentText;
            resources = getResources();
            com.dianxinos.dxbs.R.color _tmp8 = ly.c;
            textview1.setTextColor(resources.getColor(0x7f090085));
            return;
        }
    }

    private void registReceiver()
    {
        if (!mIsReceiverRegitstered)
        {
            IntentFilter intentfilter = new IntentFilter();
            intentfilter.addAction("broadcast_actiono_refresh_go_widget");
            mContext.registerReceiver(mReceiver, intentfilter);
            mIsReceiverRegitstered = true;
        }
    }

    private void showLog(String s)
    {
    }

    private void startRefreshServices()
    {
        mContext.startService(new Intent(mContext, com/dianxinos/powermanager/PowerMgrService));
        mContext.startService(new Intent(mContext, com/dianxinos/powermanager/WidgetUpdataService1x4));
    }

    private void unregisterReceiver()
    {
        if (mIsReceiverRegitstered)
        {
            mContext.unregisterReceiver(mReceiver);
            mIsReceiverRegitstered = false;
        }
    }

    public boolean onApplyTheme(Bundle bundle)
    {
        return false;
    }

    public void onDelete(int i)
    {
    }

    public void onPause(int i)
    {
        unregisterReceiver();
    }

    public void onRemove(int i)
    {
        unregisterReceiver();
    }

    public void onResume(int i)
    {
        registReceiver();
        startRefreshServices();
    }

    public void onStart(Bundle bundle)
    {
        mWidgetId = bundle.getInt("gowidget_Id", -1);
        initView();
        registReceiver();
        startRefreshServices();
    }

    protected void refreshWidgetUI()
    {
        refreshBatteryImage();
        refreshBatteryDigitPercent();
        refreshTimeView();
    }



    private class _cls1 extends BroadcastReceiver
    {

        final GOPowerMgrMidWidget this$0;

        public void onReceive(Context context, Intent intent)
        {
            if (intent.getAction().equals("broadcast_actiono_refresh_go_widget"))
            {
                processRefreshIntent(intent);
            }
        }

        _cls1()
        {
            this$0 = GOPowerMgrMidWidget.this;
            super();
        }
    }


    private class _cls2
        implements android.view.View.OnClickListener
    {

        final GOPowerMgrMidWidget this$0;

        public void onClick(View view)
        {
            Intent intent = new Intent(mContext, com/dianxinos/powermanager/PowerMgrTabActivity);
            intent.putExtra("From", 2);
            intent.setFlags(0x10200000);
            mContext.startActivity(intent);
        }

        _cls2()
        {
            this$0 = GOPowerMgrMidWidget.this;
            super();
        }
    }


    private class _cls3
        implements android.view.View.OnClickListener
    {

        final GOPowerMgrMidWidget this$0;

        public void onClick(View view)
        {
            Intent intent = new Intent("com.dianxinos.dxbs.ONEKEY");
            mContext.sendBroadcast(intent);
        }

        _cls3()
        {
            this$0 = GOPowerMgrMidWidget.this;
            super();
        }
    }

}
