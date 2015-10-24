// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.SharedPreferences;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Set;

public class gm
{

    private static Method a;
    private static Method b;
    private static Method c;

    public static void a(android.content.SharedPreferences.Editor editor)
    {
        if (a != null)
        {
            try
            {
                a.invoke(editor, new Object[0]);
                return;
            }
            catch (IllegalAccessException illegalaccessexception) { }
            catch (InvocationTargetException invocationtargetexception) { }
        }
        editor.commit();
    }

    static 
    {
        try
        {
            a = android/content/SharedPreferences$Editor.getMethod("apply", new Class[0]);
        }
        catch (NoSuchMethodException nosuchmethodexception)
        {
            a = null;
        }
        try
        {
            Class aclass[] = {
                java/lang/String, java/util/Set
            };
            b = android/content/SharedPreferences.getMethod("getStringSet", aclass);
            c = android/content/SharedPreferences$Editor.getMethod("putStringSet", aclass);
        }
        catch (NoSuchMethodException nosuchmethodexception1)
        {
            b = null;
            c = null;
        }
    }
}
