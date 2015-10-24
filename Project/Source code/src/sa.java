// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.accounts.Account;
import android.accounts.AccountManager;
import android.content.Context;
import android.util.Log;
import java.util.ArrayList;
import java.util.List;
import org.apache.http.message.BasicNameValuePair;
import org.json.JSONObject;

public class sa
{

    public static String a(Context context)
    {
        String s;
        try
        {
            s = ui.a(context.getApplicationContext()).a();
        }
        catch (Exception exception)
        {
            if (Log.isLoggable("stat.DXApi", 6))
            {
                Log.e("stat.DXApi", "Failed to get the token.", exception);
            }
            return null;
        }
        return s;
    }

    private static void a(JSONObject jsonobject, String s, Object obj)
    {
        if (obj != null)
        {
            jsonobject.put(s, obj);
        }
    }

    public static boolean a(Context context, String s, String s1, String s2, JSONObject jsonobject)
    {
        boolean flag = true;
        Context context1 = context.getApplicationContext();
        ug ug1 = new ug(context1, ud.a("feedback", context1), "DXApiFeedback", "stat.DXApi");
        JSONObject jsonobject1 = new JSONObject();
        a(jsonobject1, "token", a(context1));
        a(jsonobject1, "account", b(context1));
        a(jsonobject1, "message", s2);
        a(jsonobject1, "appName", s);
        a(jsonobject1, "appVersion", s1);
        a(jsonobject1, "extra", jsonobject);
        ArrayList arraylist = new ArrayList(flag);
        arraylist.add(new BasicNameValuePair("question", jsonobject1.toString()));
        if (!ug1.a(arraylist, null))
        {
            if (Log.isLoggable("stat.DXApi", 6))
            {
                Log.e("stat.DXApi", "failed to post feedback!");
            }
            flag = false;
        }
        return flag;
    }

    public static String b(Context context)
    {
        Account aaccount[] = AccountManager.get(context.getApplicationContext()).getAccountsByType("com.dianxinos.checkin");
        if (aaccount == null)
        {
            break MISSING_BLOCK_LABEL_51;
        }
        String s;
        if (aaccount.length == 0)
        {
            break MISSING_BLOCK_LABEL_51;
        }
        s = aaccount[0].name;
        return s;
        Exception exception;
        exception;
        if (Log.isLoggable("stat.DXApi", 5))
        {
            Log.w("stat.DXApi", "Failed to get dianxin account.");
        }
        return null;
    }
}
