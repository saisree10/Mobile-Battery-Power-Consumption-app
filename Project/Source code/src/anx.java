// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.accounts.Account;
import android.accounts.AccountManager;
import android.content.Context;
import android.content.res.AssetManager;
import android.text.TextUtils;
import java.io.DataInputStream;
import java.io.InputStream;

public class anx
{

    private static int a = 2;

    public static boolean a(Context context)
    {
        return aog.c(context) == a;
    }

    public static void b(Context context)
    {
        String s = c(context);
        if (!TextUtils.isEmpty(s)) goto _L2; else goto _L1
_L1:
        return;
_L2:
        DataInputStream datainputstream;
        InputStream inputstream;
        InputStream inputstream1;
        Exception exception2;
        String s1;
        try
        {
            inputstream1 = context.getAssets().open("data/data");
        }
        catch (Exception exception)
        {
            datainputstream = null;
            inputstream = null;
            continue; /* Loop/switch isn't completed */
        }
        datainputstream = new DataInputStream(inputstream1);
_L5:
        s1 = datainputstream.readLine();
        if (s1 == null) goto _L1; else goto _L3
_L3:
        if (!s.equals(s1)) goto _L5; else goto _L4
_L4:
        aog.a(context, a);
        return;
        exception2;
        inputstream = inputstream1;
_L7:
        try
        {
            inputstream.close();
            datainputstream.close();
            return;
        }
        catch (Exception exception1)
        {
            return;
        }
        Exception exception3;
        exception3;
        inputstream = inputstream1;
        datainputstream = null;
        if (true) goto _L7; else goto _L6
_L6:
    }

    private static String c(Context context)
    {
        String s = d(context);
        if (TextUtils.isEmpty(s))
        {
            return null;
        } else
        {
            return aze.a(s);
        }
    }

    private static String d(Context context)
    {
        Account aaccount[] = AccountManager.get(context).getAccounts();
        int i = aaccount.length;
        int j = 0;
        do
        {
label0:
            {
                String s = null;
                if (j < i)
                {
                    Account account = aaccount[j];
                    if (!account.type.equals("com.google"))
                    {
                        break label0;
                    }
                    s = account.name;
                }
                return s;
            }
            j++;
        } while (true);
    }

}
