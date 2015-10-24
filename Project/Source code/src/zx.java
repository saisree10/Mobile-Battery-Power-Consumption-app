// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.os.Environment;
import java.io.File;

public class zx
{

    private static final String a = (new StringBuilder()).append(b()).append("/external_sd").toString();

    public static boolean a()
    {
        return Environment.getExternalStorageState().equals("mounted");
    }

    public static String b()
    {
        return Environment.getExternalStorageDirectory().getAbsolutePath();
    }

}
