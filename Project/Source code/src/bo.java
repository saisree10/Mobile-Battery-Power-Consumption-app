// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public class bo
{

    public static void a(Object obj, StringBuilder stringbuilder)
    {
        if (obj == null)
        {
            stringbuilder.append("null");
            return;
        }
        String s = obj.getClass().getSimpleName();
        if (s == null || s.length() <= 0)
        {
            s = obj.getClass().getName();
            int i = s.lastIndexOf('.');
            if (i > 0)
            {
                s = s.substring(i + 1);
            }
        }
        stringbuilder.append(s);
        stringbuilder.append('{');
        stringbuilder.append(Integer.toHexString(System.identityHashCode(obj)));
    }
}
