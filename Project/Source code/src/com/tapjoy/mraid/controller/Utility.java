// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy.mraid.controller;

import android.app.AlertDialog;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import android.widget.SimpleAdapter;
import android.widget.Toast;
import com.tapjoy.TapjoyLog;
import com.tapjoy.mraid.view.MraidView;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.tapjoy.mraid.controller:
//            Abstract, Assets, Display, MraidLocation, 
//            Network, MraidSensor

public class Utility extends Abstract
{

    private static final String TAG = "MRAID Utility";
    private Assets mAssetController;
    private Display mDisplayController;
    private MraidLocation mLocationController;
    private Network mNetworkController;
    private MraidSensor mSensorController;

    public Utility(MraidView mraidview, Context context)
    {
        super(mraidview, context);
        mAssetController = new Assets(mraidview, context);
        mDisplayController = new Display(mraidview, context);
        mLocationController = new MraidLocation(mraidview, context);
        mNetworkController = new Network(mraidview, context);
        mSensorController = new MraidSensor(mraidview, context);
        mraidview.addJavascriptInterface(mAssetController, "MRAIDAssetsControllerBridge");
        mraidview.addJavascriptInterface(mDisplayController, "MRAIDDisplayControllerBridge");
        mraidview.addJavascriptInterface(mLocationController, "MRAIDLocationControllerBridge");
        mraidview.addJavascriptInterface(mNetworkController, "MRAIDNetworkControllerBridge");
        mraidview.addJavascriptInterface(mSensorController, "MRAIDSensorControllerBridge");
    }

    private void addCalendarEvent(int i, String s, String s1, String s2)
    {
        ContentResolver contentresolver = mContext.getContentResolver();
        long l = Long.parseLong(s);
        long l1 = 0x36ee80L + l;
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("calendar_id", Integer.valueOf(i));
        contentvalues.put("title", s1);
        contentvalues.put("description", s2);
        contentvalues.put("dtstart", Long.valueOf(l));
        contentvalues.put("hasAlarm", Integer.valueOf(1));
        contentvalues.put("dtend", Long.valueOf(l1));
        Uri uri;
        if (Integer.parseInt(android.os.Build.VERSION.SDK) == 8)
        {
            uri = contentresolver.insert(Uri.parse("content://com.android.calendar/events"), contentvalues);
        } else
        {
            uri = contentresolver.insert(Uri.parse("content://calendar/events"), contentvalues);
        }
        if (uri != null)
        {
            long l2 = Long.parseLong(uri.getLastPathSegment());
            ContentValues contentvalues1 = new ContentValues();
            contentvalues1.put("event_id", Long.valueOf(l2));
            contentvalues1.put("method", Integer.valueOf(1));
            contentvalues1.put("minutes", Integer.valueOf(15));
            if (Integer.parseInt(android.os.Build.VERSION.SDK) == 8)
            {
                contentresolver.insert(Uri.parse("content://com.android.calendar/reminders"), contentvalues1);
            } else
            {
                contentresolver.insert(Uri.parse("content://calendar/reminders"), contentvalues1);
            }
        }
        Toast.makeText(mContext, "Event added to calendar", 0).show();
    }

    private String createTelUrl(String s)
    {
        if (TextUtils.isEmpty(s))
        {
            return null;
        } else
        {
            StringBuilder stringbuilder = new StringBuilder("tel:");
            stringbuilder.append(s);
            return stringbuilder.toString();
        }
    }

    private String getSupports()
    {
        boolean flag = true;
        String s = "supports: [ 'level-1', 'level-2', 'screen', 'orientation', 'network'";
        boolean flag1;
        boolean flag2;
        boolean flag3;
        String s1;
        String s2;
        String s3;
        String s4;
        if (mLocationController.allowLocationServices() && (mContext.checkCallingOrSelfPermission("android.permission.ACCESS_COARSE_LOCATION") == 0 || mContext.checkCallingOrSelfPermission("android.permission.ACCESS_FINE_LOCATION") == 0))
        {
            flag1 = flag;
        } else
        {
            flag1 = false;
        }
        if (flag1)
        {
            s = (new StringBuilder()).append(s).append(", 'location'").toString();
        }
        if (mContext.checkCallingOrSelfPermission("android.permission.SEND_SMS") == 0)
        {
            flag2 = flag;
        } else
        {
            flag2 = false;
        }
        if (flag2)
        {
            s = (new StringBuilder()).append(s).append(", 'sms'").toString();
        }
        if (mContext.checkCallingOrSelfPermission("android.permission.CALL_PHONE") == 0)
        {
            flag3 = flag;
        } else
        {
            flag3 = false;
        }
        if (flag3)
        {
            s = (new StringBuilder()).append(s).append(", 'phone'").toString();
        }
        if (mContext.checkCallingOrSelfPermission("android.permission.WRITE_CALENDAR") != 0 || mContext.checkCallingOrSelfPermission("android.permission.READ_CALENDAR") != 0 || android.os.Build.VERSION.SDK_INT < 14)
        {
            flag = false;
        }
        if (flag)
        {
            s = (new StringBuilder()).append(s).append(", 'calendar'").toString();
        }
        s1 = (new StringBuilder()).append(s).append(", 'video'").toString();
        s2 = (new StringBuilder()).append(s1).append(", 'audio'").toString();
        s3 = (new StringBuilder()).append(s2).append(", 'map'").toString();
        s4 = (new StringBuilder()).append(s3).append(", 'email' ]").toString();
        TapjoyLog.d("MRAID Utility", (new StringBuilder()).append("getSupports: ").append(s4).toString());
        return s4;
    }

    public void activate(String s)
    {
        TapjoyLog.d("MRAID Utility", (new StringBuilder()).append("activate: ").append(s).toString());
        if (s.equalsIgnoreCase("networkChange"))
        {
            mNetworkController.startNetworkListener();
        } else
        {
            if (mLocationController.allowLocationServices() && s.equalsIgnoreCase("locationChange"))
            {
                mLocationController.startLocationListener();
                return;
            }
            if (s.equalsIgnoreCase("shake"))
            {
                mSensorController.startShakeListener();
                return;
            }
            if (s.equalsIgnoreCase("tiltChange"))
            {
                mSensorController.startTiltListener();
                return;
            }
            if (s.equalsIgnoreCase("headingChange"))
            {
                mSensorController.startHeadingListener();
                return;
            }
            if (s.equalsIgnoreCase("orientationChange"))
            {
                mDisplayController.startConfigurationListener();
                return;
            }
        }
    }

    public String copyTextFromJarIntoAssetDir(String s, String s1)
    {
        return mAssetController.copyTextFromJarIntoAssetDir(s, s1);
    }

    public void createEvent(final String date, final String title, final String body)
    {
        TapjoyLog.d("MRAID Utility", (new StringBuilder()).append("createEvent: date: ").append(date).append(" title: ").append(title).append(" body: ").append(body).toString());
        ContentResolver contentresolver = mContext.getContentResolver();
        String as[] = {
            "_id", "displayName", "_sync_account"
        };
        Cursor cursor;
        if (Integer.parseInt(android.os.Build.VERSION.SDK) == 8)
        {
            cursor = contentresolver.query(Uri.parse("content://com.android.calendar/calendars"), as, null, null, null);
        } else
        {
            cursor = contentresolver.query(Uri.parse("content://calendar/calendars"), as, null, null, null);
        }
        if (cursor == null || cursor != null && !cursor.moveToFirst())
        {
            Toast.makeText(mContext, "No calendar account found", 1).show();
            if (cursor != null)
            {
                cursor.close();
            }
            return;
        }
        if (cursor.getCount() == 1)
        {
            addCalendarEvent(cursor.getInt(0), date, title, body);
        } else
        {
            final ArrayList entries = new ArrayList();
            for (int i = 0; i < cursor.getCount(); i++)
            {
                HashMap hashmap = new HashMap();
                hashmap.put("ID", cursor.getString(0));
                hashmap.put("NAME", cursor.getString(1));
                hashmap.put("EMAILID", cursor.getString(2));
                entries.add(hashmap);
                cursor.moveToNext();
            }

            android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(mContext);
            builder.setTitle("Choose Calendar to save event to");
            builder.setSingleChoiceItems(new SimpleAdapter(mContext, entries, 0x109000d, new String[] {
                "NAME", "EMAILID"
            }, new int[] {
                0x1020014, 0x1020015
            }), -1, new _cls1());
            builder.create().show();
        }
        cursor.close();
    }

    public void deactivate(String s)
    {
        TapjoyLog.d("MRAID Utility", (new StringBuilder()).append("deactivate: ").append(s).toString());
        if (s.equalsIgnoreCase("networkChange"))
        {
            mNetworkController.stopNetworkListener();
        } else
        {
            if (s.equalsIgnoreCase("locationChange"))
            {
                mLocationController.stopAllListeners();
                return;
            }
            if (s.equalsIgnoreCase("shake"))
            {
                mSensorController.stopShakeListener();
                return;
            }
            if (s.equalsIgnoreCase("tiltChange"))
            {
                mSensorController.stopTiltListener();
                return;
            }
            if (s.equalsIgnoreCase("headingChange"))
            {
                mSensorController.stopHeadingListener();
                return;
            }
            if (s.equalsIgnoreCase("orientationChange"))
            {
                mDisplayController.stopConfigurationListener();
                return;
            }
        }
    }

    public void deleteOldAds()
    {
        mAssetController.deleteOldAds();
    }

    public void init(float f)
    {
        String s = (new StringBuilder()).append("window.mraidview.fireChangeEvent({ state: 'default', network: '").append(mNetworkController.getNetwork()).append("',").append(" size: ").append(mDisplayController.getSize()).append(",").append(" placement: ").append("'").append(mMraidView.getPlacementType()).append("',").append(" maxSize: ").append(mDisplayController.getMaxSize()).append(",expandProperties: ").append(mDisplayController.getMaxSize()).append(",").append(" screenSize: ").append(mDisplayController.getScreenSize()).append(",").append(" defaultPosition: { x:").append((int)((float)mMraidView.getLeft() / f)).append(", y: ").append((int)((float)mMraidView.getTop() / f)).append(", width: ").append((int)((float)mMraidView.getWidth() / f)).append(", height: ").append((int)((float)mMraidView.getHeight() / f)).append(" },").append(" orientation:").append(mDisplayController.getOrientation()).append(",").append(getSupports()).append(",viewable:true });").toString();
        Log.d("MRAID Utility", (new StringBuilder()).append("init: injection: ").append(s).toString());
        mMraidView.injectMraidJavaScript(s);
        ready();
    }

    public void makeCall(String s)
    {
        TapjoyLog.d("MRAID Utility", (new StringBuilder()).append("makeCall: number: ").append(s).toString());
        String s1 = createTelUrl(s);
        if (s1 == null)
        {
            mMraidView.raiseError("Bad Phone Number", "makeCall");
            return;
        } else
        {
            Intent intent = new Intent("android.intent.action.CALL", Uri.parse(s1.toString()));
            intent.addFlags(0x10000000);
            mContext.startActivity(intent);
            return;
        }
    }

    public void mraidCreateEvent(String s)
    {
        Calendar calendar;
        Calendar calendar1;
        if (android.os.Build.VERSION.SDK_INT < 14)
        {
            return;
        }
        calendar = Calendar.getInstance();
        calendar1 = Calendar.getInstance();
        JSONObject jsonobject;
        JSONObject jsonobject1;
        JSONObject jsonobject2;
        jsonobject = new JSONObject(s);
        jsonobject1 = jsonobject.getJSONObject("start");
        jsonobject2 = jsonobject.optJSONObject("end");
        JSONException jsonexception;
        JSONException jsonexception1;
        String s1;
        String s2;
        String s3;
        String s4;
        JSONObject jsonobject3;
        String s5;
        JSONException jsonexception2;
        String s6;
        JSONException jsonexception3;
        String s7;
        JSONException jsonexception4;
        String s8;
        JSONException jsonexception5;
        if (jsonobject2 == null)
        {
            jsonobject3 = jsonobject1;
        } else
        {
            jsonobject3 = jsonobject2;
        }
        s5 = jsonobject.getString("description");
        s6 = jsonobject.optString("location");
        s7 = jsonobject.optString("summary");
        s8 = jsonobject.optString("status");
        calendar.set(jsonobject1.getInt("year"), jsonobject1.getInt("month"), jsonobject1.getInt("day"), jsonobject1.getInt("hour"), jsonobject1.getInt("min"));
        calendar1.set(jsonobject3.getInt("year"), jsonobject3.getInt("month"), jsonobject3.getInt("day"), jsonobject3.getInt("hour"), jsonobject3.getInt("min"));
        s4 = s8;
        s1 = s7;
        s2 = s6;
        s3 = s5;
_L2:
        Intent intent = (new Intent("android.intent.action.INSERT")).setData(android.provider.CalendarContract.Events.CONTENT_URI).putExtra("beginTime", calendar.getTimeInMillis()).putExtra("endTime", calendar1.getTimeInMillis()).putExtra("title", s1).putExtra("description", s3).putExtra("eventLocation", s2).putExtra("eventStatus", s4);
        mMraidView.getContext().startActivity(intent);
        return;
        jsonexception;
        jsonexception1 = jsonexception;
        s1 = null;
        s2 = null;
        s3 = null;
        s4 = null;
_L3:
        jsonexception1.printStackTrace();
        if (true) goto _L2; else goto _L1
_L1:
        jsonexception2;
        jsonexception1 = jsonexception2;
        s3 = s5;
        s4 = null;
        s1 = null;
        s2 = null;
          goto _L3
        jsonexception3;
        jsonexception1 = jsonexception3;
        s2 = s6;
        s3 = s5;
        s4 = null;
        s1 = null;
          goto _L3
        jsonexception4;
        jsonexception1 = jsonexception4;
        s1 = s7;
        s2 = s6;
        s3 = s5;
        s4 = null;
          goto _L3
        jsonexception5;
        jsonexception1 = jsonexception5;
        s1 = s7;
        s2 = s6;
        s3 = s5;
        s4 = s8;
          goto _L3
    }

    public void ready()
    {
        mMraidView.injectMraidJavaScript((new StringBuilder()).append("mraid.setState(\"").append(mMraidView.getState()).append("\");").toString());
        mMraidView.injectMraidJavaScript("mraidview.fireReadyEvent();");
    }

    public void sendMail(String s, String s1, String s2)
    {
        TapjoyLog.d("MRAID Utility", (new StringBuilder()).append("sendMail: recipient: ").append(s).append(" subject: ").append(s1).append(" body: ").append(s2).toString());
        Intent intent = new Intent("android.intent.action.SEND");
        intent.setType("plain/text");
        intent.putExtra("android.intent.extra.EMAIL", new String[] {
            s
        });
        intent.putExtra("android.intent.extra.SUBJECT", s1);
        intent.putExtra("android.intent.extra.TEXT", s2);
        intent.addFlags(0x10000000);
        mContext.startActivity(intent);
    }

    public void sendSMS(String s, String s1)
    {
        TapjoyLog.d("MRAID Utility", (new StringBuilder()).append("sendSMS: recipient: ").append(s).append(" body: ").append(s1).toString());
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.putExtra("address", s);
        intent.putExtra("sms_body", s1);
        intent.setType("vnd.android-dir/mms-sms");
        intent.addFlags(0x10000000);
        mContext.startActivity(intent);
    }

    public void setMaxSize(int i, int j)
    {
        mDisplayController.setMaxSize(i, j);
    }

    public void showAlert(String s)
    {
        TapjoyLog.e("MRAID Utility", s);
    }

    public void stopAllListeners()
    {
        try
        {
            mAssetController.stopAllListeners();
            mDisplayController.stopAllListeners();
            mLocationController.stopAllListeners();
            mNetworkController.stopAllListeners();
            mSensorController.stopAllListeners();
            return;
        }
        catch (Exception exception)
        {
            return;
        }
    }

    public String writeToDiskWrap(InputStream inputstream, String s, boolean flag, String s1, String s2)
    {
        return mAssetController.writeToDiskWrap(inputstream, s, flag, s1, s2);
    }


    private class _cls1
        implements android.content.DialogInterface.OnClickListener
    {

        final Utility this$0;
        final String val$body;
        final String val$date;
        final List val$entries;
        final String val$title;

        public void onClick(DialogInterface dialoginterface, int i)
        {
            Map map = (Map)entries.get(i);
            addCalendarEvent(Integer.parseInt((String)map.get("ID")), date, title, body);
            dialoginterface.cancel();
        }

        _cls1()
        {
            this$0 = Utility.this;
            entries = list;
            date = s;
            title = s1;
            body = s2;
            super();
        }
    }

}
