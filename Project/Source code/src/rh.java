// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public abstract class rh
{

    protected rh()
    {
        if (b())
        {
            break MISSING_BLOCK_LABEL_64;
        }
        rh;
        JVM INSTR monitorenter ;
        boolean flag = b();
        if (flag)
        {
            break MISSING_BLOCK_LABEL_27;
        }
        a();
        a(true);
        rh;
        JVM INSTR monitorexit ;
        return;
        ClassNotFoundException classnotfoundexception;
        classnotfoundexception;
        throw new ri(classnotfoundexception);
        Exception exception;
        exception;
        rh;
        JVM INSTR monitorexit ;
        throw exception;
        NoSuchMethodException nosuchmethodexception;
        nosuchmethodexception;
        throw new ri(nosuchmethodexception);
    }

    protected final transient Object a(Object obj, Method method, Object aobj[])
    {
        if (!b())
        {
            throw new ri("Reflection Class not initialized.");
        }
        Object obj1;
        try
        {
            obj1 = method.invoke(obj, aobj);
        }
        catch (IllegalArgumentException illegalargumentexception)
        {
            throw new ri(illegalargumentexception);
        }
        catch (IllegalAccessException illegalaccessexception)
        {
            throw new ri(illegalaccessexception);
        }
        catch (InvocationTargetException invocationtargetexception)
        {
            throw new ri(invocationtargetexception.getCause());
        }
        return obj1;
    }

    protected final transient Object a(Constructor constructor, Object aobj[])
    {
        if (!b())
        {
            throw new ri("Reflection Class not initialized.");
        }
        Object obj;
        try
        {
            obj = constructor.newInstance(aobj);
        }
        catch (IllegalArgumentException illegalargumentexception)
        {
            throw new ri(illegalargumentexception);
        }
        catch (InstantiationException instantiationexception)
        {
            throw new ri(instantiationexception);
        }
        catch (IllegalAccessException illegalaccessexception)
        {
            throw new ri(illegalaccessexception);
        }
        catch (InvocationTargetException invocationtargetexception)
        {
            throw new ri(invocationtargetexception.getCause());
        }
        return obj;
    }

    protected abstract void a();

    protected abstract void a(boolean flag);

    protected abstract boolean b();
}
