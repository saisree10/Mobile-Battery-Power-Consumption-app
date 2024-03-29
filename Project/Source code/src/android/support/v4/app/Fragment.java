// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.app;

import af;
import ah;
import android.app.Activity;
import android.content.ComponentCallbacks;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.ContextMenu;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import az;
import bo;
import bx;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import k;
import l;
import n;
import t;
import v;

public class Fragment
    implements ComponentCallbacks, android.view.View.OnCreateContextMenuListener
{

    static final int ACTIVITY_CREATED = 2;
    static final int CREATED = 1;
    static final int INITIALIZING = 0;
    static final int RESUMED = 5;
    static final int STARTED = 4;
    static final int STOPPED = 3;
    private static final bx sClassMap = new bx();
    public n mActivity;
    public boolean mAdded;
    public View mAnimatingAway;
    Bundle mArguments;
    public int mBackStackNesting;
    public boolean mCalled;
    boolean mCheckedForLoaderManager;
    public v mChildFragmentManager;
    public ViewGroup mContainer;
    public int mContainerId;
    public boolean mDeferStart;
    public boolean mDetached;
    public int mFragmentId;
    public v mFragmentManager;
    public boolean mFromLayout;
    public boolean mHasMenu;
    public boolean mHidden;
    public boolean mInLayout;
    public int mIndex;
    public View mInnerView;
    public ah mLoaderManager;
    boolean mLoadersStarted;
    public boolean mMenuVisible;
    public int mNextAnim;
    public Fragment mParentFragment;
    public boolean mRemoving;
    public boolean mRestored;
    public boolean mResumed;
    public boolean mRetainInstance;
    public boolean mRetaining;
    public Bundle mSavedFragmentState;
    public SparseArray mSavedViewState;
    public int mState;
    public int mStateAfterAnimating;
    public String mTag;
    public Fragment mTarget;
    public int mTargetIndex;
    public int mTargetRequestCode;
    public boolean mUserVisibleHint;
    public View mView;
    public String mWho;

    public Fragment()
    {
        mState = 0;
        mIndex = -1;
        mTargetIndex = -1;
        mMenuVisible = true;
        mUserVisibleHint = true;
    }

    public static Fragment instantiate(Context context, String s)
    {
        return instantiate(context, s, null);
    }

    public static Fragment instantiate(Context context, String s, Bundle bundle)
    {
        Class class1;
        Fragment fragment;
        try
        {
            class1 = (Class)sClassMap.get(s);
        }
        catch (ClassNotFoundException classnotfoundexception)
        {
            throw new l((new StringBuilder()).append("Unable to instantiate fragment ").append(s).append(": make sure class name exists, is public, and has an").append(" empty constructor that is public").toString(), classnotfoundexception);
        }
        catch (InstantiationException instantiationexception)
        {
            throw new l((new StringBuilder()).append("Unable to instantiate fragment ").append(s).append(": make sure class name exists, is public, and has an").append(" empty constructor that is public").toString(), instantiationexception);
        }
        catch (IllegalAccessException illegalaccessexception)
        {
            throw new l((new StringBuilder()).append("Unable to instantiate fragment ").append(s).append(": make sure class name exists, is public, and has an").append(" empty constructor that is public").toString(), illegalaccessexception);
        }
        if (class1 != null)
        {
            break MISSING_BLOCK_LABEL_37;
        }
        class1 = context.getClassLoader().loadClass(s);
        sClassMap.put(s, class1);
        fragment = (Fragment)class1.newInstance();
        if (bundle == null)
        {
            break MISSING_BLOCK_LABEL_69;
        }
        bundle.setClassLoader(fragment.getClass().getClassLoader());
        fragment.mArguments = bundle;
        return fragment;
    }

    public static boolean isSupportFragmentClass(Context context, String s)
    {
        Class class1;
        boolean flag;
        try
        {
            class1 = (Class)sClassMap.get(s);
        }
        catch (ClassNotFoundException classnotfoundexception)
        {
            return false;
        }
        if (class1 != null)
        {
            break MISSING_BLOCK_LABEL_33;
        }
        class1 = context.getClassLoader().loadClass(s);
        sClassMap.put(s, class1);
        flag = android/support/v4/app/Fragment.isAssignableFrom(class1);
        return flag;
    }

    public void dump(String s, FileDescriptor filedescriptor, PrintWriter printwriter, String as[])
    {
        printwriter.print(s);
        printwriter.print("mFragmentId=#");
        printwriter.print(Integer.toHexString(mFragmentId));
        printwriter.print(" mContainerId=#");
        printwriter.print(Integer.toHexString(mContainerId));
        printwriter.print(" mTag=");
        printwriter.println(mTag);
        printwriter.print(s);
        printwriter.print("mState=");
        printwriter.print(mState);
        printwriter.print(" mIndex=");
        printwriter.print(mIndex);
        printwriter.print(" mWho=");
        printwriter.print(mWho);
        printwriter.print(" mBackStackNesting=");
        printwriter.println(mBackStackNesting);
        printwriter.print(s);
        printwriter.print("mAdded=");
        printwriter.print(mAdded);
        printwriter.print(" mRemoving=");
        printwriter.print(mRemoving);
        printwriter.print(" mResumed=");
        printwriter.print(mResumed);
        printwriter.print(" mFromLayout=");
        printwriter.print(mFromLayout);
        printwriter.print(" mInLayout=");
        printwriter.println(mInLayout);
        printwriter.print(s);
        printwriter.print("mHidden=");
        printwriter.print(mHidden);
        printwriter.print(" mDetached=");
        printwriter.print(mDetached);
        printwriter.print(" mMenuVisible=");
        printwriter.print(mMenuVisible);
        printwriter.print(" mHasMenu=");
        printwriter.println(mHasMenu);
        printwriter.print(s);
        printwriter.print("mRetainInstance=");
        printwriter.print(mRetainInstance);
        printwriter.print(" mRetaining=");
        printwriter.print(mRetaining);
        printwriter.print(" mUserVisibleHint=");
        printwriter.println(mUserVisibleHint);
        if (mFragmentManager != null)
        {
            printwriter.print(s);
            printwriter.print("mFragmentManager=");
            printwriter.println(mFragmentManager);
        }
        if (mActivity != null)
        {
            printwriter.print(s);
            printwriter.print("mActivity=");
            printwriter.println(mActivity);
        }
        if (mParentFragment != null)
        {
            printwriter.print(s);
            printwriter.print("mParentFragment=");
            printwriter.println(mParentFragment);
        }
        if (mArguments != null)
        {
            printwriter.print(s);
            printwriter.print("mArguments=");
            printwriter.println(mArguments);
        }
        if (mSavedFragmentState != null)
        {
            printwriter.print(s);
            printwriter.print("mSavedFragmentState=");
            printwriter.println(mSavedFragmentState);
        }
        if (mSavedViewState != null)
        {
            printwriter.print(s);
            printwriter.print("mSavedViewState=");
            printwriter.println(mSavedViewState);
        }
        if (mTarget != null)
        {
            printwriter.print(s);
            printwriter.print("mTarget=");
            printwriter.print(mTarget);
            printwriter.print(" mTargetRequestCode=");
            printwriter.println(mTargetRequestCode);
        }
        if (mNextAnim != 0)
        {
            printwriter.print(s);
            printwriter.print("mNextAnim=");
            printwriter.println(mNextAnim);
        }
        if (mContainer != null)
        {
            printwriter.print(s);
            printwriter.print("mContainer=");
            printwriter.println(mContainer);
        }
        if (mView != null)
        {
            printwriter.print(s);
            printwriter.print("mView=");
            printwriter.println(mView);
        }
        if (mInnerView != null)
        {
            printwriter.print(s);
            printwriter.print("mInnerView=");
            printwriter.println(mView);
        }
        if (mAnimatingAway != null)
        {
            printwriter.print(s);
            printwriter.print("mAnimatingAway=");
            printwriter.println(mAnimatingAway);
            printwriter.print(s);
            printwriter.print("mStateAfterAnimating=");
            printwriter.println(mStateAfterAnimating);
        }
        if (mLoaderManager != null)
        {
            printwriter.print(s);
            printwriter.println("Loader Manager:");
            mLoaderManager.a((new StringBuilder()).append(s).append("  ").toString(), filedescriptor, printwriter, as);
        }
        if (mChildFragmentManager != null)
        {
            printwriter.print(s);
            printwriter.println((new StringBuilder()).append("Child ").append(mChildFragmentManager).append(":").toString());
            mChildFragmentManager.a((new StringBuilder()).append(s).append("  ").toString(), filedescriptor, printwriter, as);
        }
    }

    public final boolean equals(Object obj)
    {
        return super.equals(obj);
    }

    public Fragment findFragmentByWho(String s)
    {
        if (s.equals(mWho))
        {
            return this;
        }
        if (mChildFragmentManager != null)
        {
            return mChildFragmentManager.b(s);
        } else
        {
            return null;
        }
    }

    public final n getActivity()
    {
        return mActivity;
    }

    public final Bundle getArguments()
    {
        return mArguments;
    }

    public final t getChildFragmentManager()
    {
        if (mChildFragmentManager != null) goto _L2; else goto _L1
_L1:
        instantiateChildFragmentManager();
        if (mState < 5) goto _L4; else goto _L3
_L3:
        mChildFragmentManager.m();
_L2:
        return mChildFragmentManager;
_L4:
        if (mState >= 4)
        {
            mChildFragmentManager.l();
        } else
        if (mState >= 2)
        {
            mChildFragmentManager.k();
        } else
        if (mState >= 1)
        {
            mChildFragmentManager.j();
        }
        if (true) goto _L2; else goto _L5
_L5:
    }

    public final t getFragmentManager()
    {
        return mFragmentManager;
    }

    public final int getId()
    {
        return mFragmentId;
    }

    public LayoutInflater getLayoutInflater(Bundle bundle)
    {
        return mActivity.getLayoutInflater();
    }

    public af getLoaderManager()
    {
        if (mLoaderManager != null)
        {
            return mLoaderManager;
        }
        if (mActivity == null)
        {
            throw new IllegalStateException((new StringBuilder()).append("Fragment ").append(this).append(" not attached to Activity").toString());
        } else
        {
            mCheckedForLoaderManager = true;
            mLoaderManager = mActivity.a(mWho, mLoadersStarted, true);
            return mLoaderManager;
        }
    }

    public final Fragment getParentFragment()
    {
        return mParentFragment;
    }

    public final Resources getResources()
    {
        if (mActivity == null)
        {
            throw new IllegalStateException((new StringBuilder()).append("Fragment ").append(this).append(" not attached to Activity").toString());
        } else
        {
            return mActivity.getResources();
        }
    }

    public final boolean getRetainInstance()
    {
        return mRetainInstance;
    }

    public final String getString(int i)
    {
        return getResources().getString(i);
    }

    public final transient String getString(int i, Object aobj[])
    {
        return getResources().getString(i, aobj);
    }

    public final String getTag()
    {
        return mTag;
    }

    public final Fragment getTargetFragment()
    {
        return mTarget;
    }

    public final int getTargetRequestCode()
    {
        return mTargetRequestCode;
    }

    public final CharSequence getText(int i)
    {
        return getResources().getText(i);
    }

    public boolean getUserVisibleHint()
    {
        return mUserVisibleHint;
    }

    public View getView()
    {
        return mView;
    }

    public final boolean hasOptionsMenu()
    {
        return mHasMenu;
    }

    public final int hashCode()
    {
        return super.hashCode();
    }

    public void initState()
    {
        mIndex = -1;
        mWho = null;
        mAdded = false;
        mRemoving = false;
        mResumed = false;
        mFromLayout = false;
        mInLayout = false;
        mRestored = false;
        mBackStackNesting = 0;
        mFragmentManager = null;
        mActivity = null;
        mFragmentId = 0;
        mContainerId = 0;
        mTag = null;
        mHidden = false;
        mDetached = false;
        mRetaining = false;
        mLoaderManager = null;
        mLoadersStarted = false;
        mCheckedForLoaderManager = false;
    }

    void instantiateChildFragmentManager()
    {
        mChildFragmentManager = new v();
        mChildFragmentManager.a(mActivity, new k(this), this);
    }

    public final boolean isAdded()
    {
        return mActivity != null && mAdded;
    }

    public final boolean isDetached()
    {
        return mDetached;
    }

    public final boolean isHidden()
    {
        return mHidden;
    }

    public final boolean isInBackStack()
    {
        return mBackStackNesting > 0;
    }

    public final boolean isInLayout()
    {
        return mInLayout;
    }

    public final boolean isMenuVisible()
    {
        return mMenuVisible;
    }

    public final boolean isRemoving()
    {
        return mRemoving;
    }

    public final boolean isResumed()
    {
        return mResumed;
    }

    public final boolean isVisible()
    {
        return isAdded() && !isHidden() && mView != null && mView.getWindowToken() != null && mView.getVisibility() == 0;
    }

    public void onActivityCreated(Bundle bundle)
    {
        mCalled = true;
    }

    public void onActivityResult(int i, int j, Intent intent)
    {
    }

    public void onAttach(Activity activity)
    {
        mCalled = true;
    }

    public void onConfigurationChanged(Configuration configuration)
    {
        mCalled = true;
    }

    public boolean onContextItemSelected(MenuItem menuitem)
    {
        return false;
    }

    public void onCreate(Bundle bundle)
    {
        mCalled = true;
    }

    public Animation onCreateAnimation(int i, boolean flag, int j)
    {
        return null;
    }

    public void onCreateContextMenu(ContextMenu contextmenu, View view, android.view.ContextMenu.ContextMenuInfo contextmenuinfo)
    {
        getActivity().onCreateContextMenu(contextmenu, view, contextmenuinfo);
    }

    public void onCreateOptionsMenu(Menu menu, MenuInflater menuinflater)
    {
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        return null;
    }

    public void onDestroy()
    {
        mCalled = true;
        if (!mCheckedForLoaderManager)
        {
            mCheckedForLoaderManager = true;
            mLoaderManager = mActivity.a(mWho, mLoadersStarted, false);
        }
        if (mLoaderManager != null)
        {
            mLoaderManager.h();
        }
    }

    public void onDestroyOptionsMenu()
    {
    }

    public void onDestroyView()
    {
        mCalled = true;
    }

    public void onDetach()
    {
        mCalled = true;
    }

    public void onHiddenChanged(boolean flag)
    {
    }

    public void onInflate(Activity activity, AttributeSet attributeset, Bundle bundle)
    {
        mCalled = true;
    }

    public void onLowMemory()
    {
        mCalled = true;
    }

    public boolean onOptionsItemSelected(MenuItem menuitem)
    {
        return false;
    }

    public void onOptionsMenuClosed(Menu menu)
    {
    }

    public void onPause()
    {
        mCalled = true;
    }

    public void onPrepareOptionsMenu(Menu menu)
    {
    }

    public void onResume()
    {
        mCalled = true;
    }

    public void onSaveInstanceState(Bundle bundle)
    {
    }

    public void onStart()
    {
        mCalled = true;
        if (!mLoadersStarted)
        {
            mLoadersStarted = true;
            if (!mCheckedForLoaderManager)
            {
                mCheckedForLoaderManager = true;
                mLoaderManager = mActivity.a(mWho, mLoadersStarted, false);
            }
            if (mLoaderManager != null)
            {
                mLoaderManager.b();
            }
        }
    }

    public void onStop()
    {
        mCalled = true;
    }

    public void onViewCreated(View view, Bundle bundle)
    {
    }

    public void onViewStateRestored(Bundle bundle)
    {
        mCalled = true;
    }

    public void performActivityCreated(Bundle bundle)
    {
        if (mChildFragmentManager != null)
        {
            mChildFragmentManager.i();
        }
        mCalled = false;
        onActivityCreated(bundle);
        if (!mCalled)
        {
            throw new az((new StringBuilder()).append("Fragment ").append(this).append(" did not call through to super.onActivityCreated()").toString());
        }
        if (mChildFragmentManager != null)
        {
            mChildFragmentManager.k();
        }
    }

    public void performConfigurationChanged(Configuration configuration)
    {
        onConfigurationChanged(configuration);
        if (mChildFragmentManager != null)
        {
            mChildFragmentManager.a(configuration);
        }
    }

    public boolean performContextItemSelected(MenuItem menuitem)
    {
        while (!mHidden && (onContextItemSelected(menuitem) || mChildFragmentManager != null && mChildFragmentManager.b(menuitem))) 
        {
            return true;
        }
        return false;
    }

    public void performCreate(Bundle bundle)
    {
        if (mChildFragmentManager != null)
        {
            mChildFragmentManager.i();
        }
        mCalled = false;
        onCreate(bundle);
        if (!mCalled)
        {
            throw new az((new StringBuilder()).append("Fragment ").append(this).append(" did not call through to super.onCreate()").toString());
        }
        if (bundle != null)
        {
            android.os.Parcelable parcelable = bundle.getParcelable("android:support:fragments");
            if (parcelable != null)
            {
                if (mChildFragmentManager == null)
                {
                    instantiateChildFragmentManager();
                }
                mChildFragmentManager.a(parcelable, null);
                mChildFragmentManager.j();
            }
        }
    }

    public boolean performCreateOptionsMenu(Menu menu, MenuInflater menuinflater)
    {
        boolean flag = mHidden;
        boolean flag1 = false;
        if (!flag)
        {
            boolean flag2 = mHasMenu;
            flag1 = false;
            if (flag2)
            {
                boolean flag3 = mMenuVisible;
                flag1 = false;
                if (flag3)
                {
                    flag1 = true;
                    onCreateOptionsMenu(menu, menuinflater);
                }
            }
            if (mChildFragmentManager != null)
            {
                flag1 |= mChildFragmentManager.a(menu, menuinflater);
            }
        }
        return flag1;
    }

    public View performCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        if (mChildFragmentManager != null)
        {
            mChildFragmentManager.i();
        }
        return onCreateView(layoutinflater, viewgroup, bundle);
    }

    public void performDestroy()
    {
        if (mChildFragmentManager != null)
        {
            mChildFragmentManager.r();
        }
        mCalled = false;
        onDestroy();
        if (!mCalled)
        {
            throw new az((new StringBuilder()).append("Fragment ").append(this).append(" did not call through to super.onDestroy()").toString());
        } else
        {
            return;
        }
    }

    public void performDestroyView()
    {
        if (mChildFragmentManager != null)
        {
            mChildFragmentManager.q();
        }
        mCalled = false;
        onDestroyView();
        if (!mCalled)
        {
            throw new az((new StringBuilder()).append("Fragment ").append(this).append(" did not call through to super.onDestroyView()").toString());
        }
        if (mLoaderManager != null)
        {
            mLoaderManager.f();
        }
    }

    public void performLowMemory()
    {
        onLowMemory();
        if (mChildFragmentManager != null)
        {
            mChildFragmentManager.s();
        }
    }

    public boolean performOptionsItemSelected(MenuItem menuitem)
    {
        while (!mHidden && (mHasMenu && mMenuVisible && onOptionsItemSelected(menuitem) || mChildFragmentManager != null && mChildFragmentManager.a(menuitem))) 
        {
            return true;
        }
        return false;
    }

    public void performOptionsMenuClosed(Menu menu)
    {
        if (!mHidden)
        {
            if (mHasMenu && mMenuVisible)
            {
                onOptionsMenuClosed(menu);
            }
            if (mChildFragmentManager != null)
            {
                mChildFragmentManager.b(menu);
            }
        }
    }

    public void performPause()
    {
        if (mChildFragmentManager != null)
        {
            mChildFragmentManager.n();
        }
        mCalled = false;
        onPause();
        if (!mCalled)
        {
            throw new az((new StringBuilder()).append("Fragment ").append(this).append(" did not call through to super.onPause()").toString());
        } else
        {
            return;
        }
    }

    public boolean performPrepareOptionsMenu(Menu menu)
    {
        boolean flag = mHidden;
        boolean flag1 = false;
        if (!flag)
        {
            boolean flag2 = mHasMenu;
            flag1 = false;
            if (flag2)
            {
                boolean flag3 = mMenuVisible;
                flag1 = false;
                if (flag3)
                {
                    flag1 = true;
                    onPrepareOptionsMenu(menu);
                }
            }
            if (mChildFragmentManager != null)
            {
                flag1 |= mChildFragmentManager.a(menu);
            }
        }
        return flag1;
    }

    public void performReallyStop()
    {
label0:
        {
            if (mChildFragmentManager != null)
            {
                mChildFragmentManager.p();
            }
            if (mLoadersStarted)
            {
                mLoadersStarted = false;
                if (!mCheckedForLoaderManager)
                {
                    mCheckedForLoaderManager = true;
                    mLoaderManager = mActivity.a(mWho, mLoadersStarted, false);
                }
                if (mLoaderManager != null)
                {
                    if (mActivity.h)
                    {
                        break label0;
                    }
                    mLoaderManager.c();
                }
            }
            return;
        }
        mLoaderManager.d();
    }

    public void performResume()
    {
        if (mChildFragmentManager != null)
        {
            mChildFragmentManager.i();
            mChildFragmentManager.e();
        }
        mCalled = false;
        onResume();
        if (!mCalled)
        {
            throw new az((new StringBuilder()).append("Fragment ").append(this).append(" did not call through to super.onResume()").toString());
        }
        if (mChildFragmentManager != null)
        {
            mChildFragmentManager.m();
            mChildFragmentManager.e();
        }
    }

    public void performSaveInstanceState(Bundle bundle)
    {
        onSaveInstanceState(bundle);
        if (mChildFragmentManager != null)
        {
            android.os.Parcelable parcelable = mChildFragmentManager.h();
            if (parcelable != null)
            {
                bundle.putParcelable("android:support:fragments", parcelable);
            }
        }
    }

    public void performStart()
    {
        if (mChildFragmentManager != null)
        {
            mChildFragmentManager.i();
            mChildFragmentManager.e();
        }
        mCalled = false;
        onStart();
        if (!mCalled)
        {
            throw new az((new StringBuilder()).append("Fragment ").append(this).append(" did not call through to super.onStart()").toString());
        }
        if (mChildFragmentManager != null)
        {
            mChildFragmentManager.l();
        }
        if (mLoaderManager != null)
        {
            mLoaderManager.g();
        }
    }

    public void performStop()
    {
        if (mChildFragmentManager != null)
        {
            mChildFragmentManager.o();
        }
        mCalled = false;
        onStop();
        if (!mCalled)
        {
            throw new az((new StringBuilder()).append("Fragment ").append(this).append(" did not call through to super.onStop()").toString());
        } else
        {
            return;
        }
    }

    public void registerForContextMenu(View view)
    {
        view.setOnCreateContextMenuListener(this);
    }

    public final void restoreViewState(Bundle bundle)
    {
        if (mSavedViewState != null)
        {
            mInnerView.restoreHierarchyState(mSavedViewState);
            mSavedViewState = null;
        }
        mCalled = false;
        onViewStateRestored(bundle);
        if (!mCalled)
        {
            throw new az((new StringBuilder()).append("Fragment ").append(this).append(" did not call through to super.onViewStateRestored()").toString());
        } else
        {
            return;
        }
    }

    public void setArguments(Bundle bundle)
    {
        if (mIndex >= 0)
        {
            throw new IllegalStateException("Fragment already active");
        } else
        {
            mArguments = bundle;
            return;
        }
    }

    public void setHasOptionsMenu(boolean flag)
    {
        if (mHasMenu != flag)
        {
            mHasMenu = flag;
            if (isAdded() && !isHidden())
            {
                mActivity.c();
            }
        }
    }

    public final void setIndex(int i, Fragment fragment)
    {
        mIndex = i;
        if (fragment != null)
        {
            mWho = (new StringBuilder()).append(fragment.mWho).append(":").append(mIndex).toString();
            return;
        } else
        {
            mWho = (new StringBuilder()).append("android:fragment:").append(mIndex).toString();
            return;
        }
    }

    public void setInitialSavedState(SavedState savedstate)
    {
        if (mIndex >= 0)
        {
            throw new IllegalStateException("Fragment already active");
        }
        Bundle bundle;
        if (savedstate != null && savedstate.a != null)
        {
            bundle = savedstate.a;
        } else
        {
            bundle = null;
        }
        mSavedFragmentState = bundle;
    }

    public void setMenuVisibility(boolean flag)
    {
        if (mMenuVisible != flag)
        {
            mMenuVisible = flag;
            if (mHasMenu && isAdded() && !isHidden())
            {
                mActivity.c();
            }
        }
    }

    public void setRetainInstance(boolean flag)
    {
        if (flag && mParentFragment != null)
        {
            throw new IllegalStateException("Can't retain fragements that are nested in other fragments");
        } else
        {
            mRetainInstance = flag;
            return;
        }
    }

    public void setTargetFragment(Fragment fragment, int i)
    {
        mTarget = fragment;
        mTargetRequestCode = i;
    }

    public void setUserVisibleHint(boolean flag)
    {
        if (!mUserVisibleHint && flag && mState < 4)
        {
            mFragmentManager.a(this);
        }
        mUserVisibleHint = flag;
        boolean flag1;
        if (!flag)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        mDeferStart = flag1;
    }

    public void startActivity(Intent intent)
    {
        if (mActivity == null)
        {
            throw new IllegalStateException((new StringBuilder()).append("Fragment ").append(this).append(" not attached to Activity").toString());
        } else
        {
            mActivity.a(this, intent, -1);
            return;
        }
    }

    public void startActivityForResult(Intent intent, int i)
    {
        if (mActivity == null)
        {
            throw new IllegalStateException((new StringBuilder()).append("Fragment ").append(this).append(" not attached to Activity").toString());
        } else
        {
            mActivity.a(this, intent, i);
            return;
        }
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder(128);
        bo.a(this, stringbuilder);
        if (mIndex >= 0)
        {
            stringbuilder.append(" #");
            stringbuilder.append(mIndex);
        }
        if (mFragmentId != 0)
        {
            stringbuilder.append(" id=0x");
            stringbuilder.append(Integer.toHexString(mFragmentId));
        }
        if (mTag != null)
        {
            stringbuilder.append(" ");
            stringbuilder.append(mTag);
        }
        stringbuilder.append('}');
        return stringbuilder.toString();
    }

    public void unregisterForContextMenu(View view)
    {
        view.setOnCreateContextMenuListener(null);
    }


    private class SavedState
        implements Parcelable
    {

        public static final android.os.Parcelable.Creator CREATOR = new m();
        final Bundle a;

        public int describeContents()
        {
            return 0;
        }

        public void writeToParcel(Parcel parcel, int i)
        {
            parcel.writeBundle(a);
        }


        public SavedState(Parcel parcel, ClassLoader classloader)
        {
            a = parcel.readBundle();
            if (classloader != null && a != null)
            {
                a.setClassLoader(classloader);
            }
        }
    }

}
