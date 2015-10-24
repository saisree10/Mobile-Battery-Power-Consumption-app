// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import java.io.FileDescriptor;
import java.io.PrintWriter;

public class ba
{

    boolean mAbandoned;
    boolean mContentChanged;
    Context mContext;
    int mId;
    bb mListener;
    boolean mProcessingChange;
    boolean mReset;
    boolean mStarted;

    public ba(Context context)
    {
        mStarted = false;
        mAbandoned = false;
        mReset = true;
        mContentChanged = false;
        mProcessingChange = false;
        mContext = context.getApplicationContext();
    }

    public void abandon()
    {
        mAbandoned = true;
        onAbandon();
    }

    public void commitContentChanged()
    {
        mProcessingChange = false;
    }

    public String dataToString(Object obj)
    {
        StringBuilder stringbuilder = new StringBuilder(64);
        bo.a(obj, stringbuilder);
        stringbuilder.append("}");
        return stringbuilder.toString();
    }

    public void deliverResult(Object obj)
    {
        if (mListener != null)
        {
            mListener.a(this, obj);
        }
    }

    public void dump(String s, FileDescriptor filedescriptor, PrintWriter printwriter, String as[])
    {
        printwriter.print(s);
        printwriter.print("mId=");
        printwriter.print(mId);
        printwriter.print(" mListener=");
        printwriter.println(mListener);
        if (mStarted || mContentChanged || mProcessingChange)
        {
            printwriter.print(s);
            printwriter.print("mStarted=");
            printwriter.print(mStarted);
            printwriter.print(" mContentChanged=");
            printwriter.print(mContentChanged);
            printwriter.print(" mProcessingChange=");
            printwriter.println(mProcessingChange);
        }
        if (mAbandoned || mReset)
        {
            printwriter.print(s);
            printwriter.print("mAbandoned=");
            printwriter.print(mAbandoned);
            printwriter.print(" mReset=");
            printwriter.println(mReset);
        }
    }

    public void forceLoad()
    {
        onForceLoad();
    }

    public Context getContext()
    {
        return mContext;
    }

    public int getId()
    {
        return mId;
    }

    public boolean isAbandoned()
    {
        return mAbandoned;
    }

    public boolean isReset()
    {
        return mReset;
    }

    public boolean isStarted()
    {
        return mStarted;
    }

    protected void onAbandon()
    {
    }

    public void onContentChanged()
    {
        if (mStarted)
        {
            forceLoad();
            return;
        } else
        {
            mContentChanged = true;
            return;
        }
    }

    protected void onForceLoad()
    {
    }

    protected void onReset()
    {
    }

    public void onStartLoading()
    {
    }

    protected void onStopLoading()
    {
    }

    public void registerListener(int i, bb bb1)
    {
        if (mListener != null)
        {
            throw new IllegalStateException("There is already a listener registered");
        } else
        {
            mListener = bb1;
            mId = i;
            return;
        }
    }

    public void reset()
    {
        onReset();
        mReset = true;
        mStarted = false;
        mAbandoned = false;
        mContentChanged = false;
        mProcessingChange = false;
    }

    public void rollbackContentChanged()
    {
        if (mProcessingChange)
        {
            mContentChanged = true;
        }
    }

    public final void startLoading()
    {
        mStarted = true;
        mReset = false;
        mAbandoned = false;
        onStartLoading();
    }

    public void stopLoading()
    {
        mStarted = false;
        onStopLoading();
    }

    public boolean takeContentChanged()
    {
        boolean flag = mContentChanged;
        mContentChanged = false;
        mProcessingChange = flag | mProcessingChange;
        return flag;
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder(64);
        bo.a(this, stringbuilder);
        stringbuilder.append(" id=");
        stringbuilder.append(mId);
        stringbuilder.append("}");
        return stringbuilder.toString();
    }

    public void unregisterListener(bb bb1)
    {
        if (mListener == null)
        {
            throw new IllegalStateException("No listener register");
        }
        if (mListener != bb1)
        {
            throw new IllegalArgumentException("Attempting to unregister the wrong listener");
        } else
        {
            mListener = null;
            return;
        }
    }
}
