// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;

public final class vh
{

    public static String a = "com.dianxinos.feedback.provider";

    public static void a(Context context)
    {
        a = (new StringBuilder()).append(context.getPackageName()).append(".feedback.provider.feedback").toString();
    }

}
