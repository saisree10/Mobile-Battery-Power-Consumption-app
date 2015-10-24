// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.lang.reflect.Field;

public class jq
{

    public static Field a(Class class1, String s)
    {
        Field field1 = class1.getField(s);
label0:
        {
            if (field1 != null)
            {
                return field1;
            }
            break label0;
        }
        Exception exception;
        exception;
_L2:
        if (class1 == null)
        {
            break; /* Loop/switch isn't completed */
        }
        Field field;
        field = class1.getDeclaredField(s);
        field.setAccessible(true);
        return field;
        NoSuchFieldException nosuchfieldexception;
        nosuchfieldexception;
        class1 = class1.getSuperclass();
        if (true) goto _L2; else goto _L1
_L1:
        throw new NoSuchFieldException();
    }

    public static Field b(Class class1, String s)
    {
        Field field;
        try
        {
            field = a(class1, s);
        }
        catch (NoSuchFieldException nosuchfieldexception)
        {
            return null;
        }
        return field;
    }
}
