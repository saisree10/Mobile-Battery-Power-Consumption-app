// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.widget;

import af;
import com.facebook.Request;

// Referenced classes of package com.facebook.widget:
//            PickerFragment, GraphObjectPagingLoader, GraphObjectAdapter, SimpleGraphObjectCursor

abstract class this._cls0
{

    protected static final int CACHED_RESULT_REFRESH_DELAY = 2000;
    protected GraphObjectAdapter adapter;
    protected GraphObjectPagingLoader loader;
    final PickerFragment this$0;

    public void attach(GraphObjectAdapter graphobjectadapter)
    {
        class _cls1
            implements ag
        {

            final PickerFragment.LoadingStrategy this$1;

            public ba onCreateLoader(int i, Bundle bundle)
            {
                return PickerFragment.LoadingStrategy.this.onCreateLoader();
            }

            public void onLoadFinished(ba ba, SimpleGraphObjectCursor simplegraphobjectcursor)
            {
                if (ba != loader)
                {
                    throw new FacebookException("Received callback for unknown loader.");
                } else
                {
                    PickerFragment.LoadingStrategy.this.onLoadFinished((GraphObjectPagingLoader)ba, simplegraphobjectcursor);
                    return;
                }
            }

            public volatile void onLoadFinished(ba ba, Object obj)
            {
                onLoadFinished(ba, (SimpleGraphObjectCursor)obj);
            }

            public void onLoaderReset(ba ba)
            {
                if (ba != loader)
                {
                    throw new FacebookException("Received callback for unknown loader.");
                } else
                {
                    onLoadReset((GraphObjectPagingLoader)ba);
                    return;
                }
            }

            _cls1()
            {
                this$1 = PickerFragment.LoadingStrategy.this;
                super();
            }
        }

        loader = (GraphObjectPagingLoader)getLoaderManager().a(0, null, new _cls1());
        class _cls2
            implements GraphObjectPagingLoader.OnErrorListener
        {

            final PickerFragment.LoadingStrategy this$1;

            public void onError(FacebookException facebookexception, GraphObjectPagingLoader graphobjectpagingloader)
            {
                hideActivityCircle();
                if (PickerFragment.access$500(this$0) != null)
                {
                    PickerFragment.access$500(this$0).onError(this$0, facebookexception);
                }
            }

            _cls2()
            {
                this$1 = PickerFragment.LoadingStrategy.this;
                super();
            }
        }

        loader.setOnErrorListener(new _cls2());
        adapter = graphobjectadapter;
        adapter.changeCursor(loader.getCursor());
        class _cls3
            implements GraphObjectAdapter.OnErrorListener
        {

            final PickerFragment.LoadingStrategy this$1;

            public void onError(GraphObjectAdapter graphobjectadapter1, FacebookException facebookexception)
            {
                if (PickerFragment.access$500(this$0) != null)
                {
                    PickerFragment.access$500(this$0).onError(this$0, facebookexception);
                }
            }

            _cls3()
            {
                this$1 = PickerFragment.LoadingStrategy.this;
                super();
            }
        }

        adapter.setOnErrorListener(new _cls3());
    }

    public void clearResults()
    {
        if (loader != null)
        {
            loader.clearResults();
        }
    }

    public void detach()
    {
        adapter.setDataNeededListener(null);
        adapter.setOnErrorListener(null);
        loader.setOnErrorListener(null);
        loader = null;
        adapter = null;
    }

    public boolean isDataPresentOrLoading()
    {
        return !adapter.isEmpty() || loader.isLoading();
    }

    protected GraphObjectPagingLoader onCreateLoader()
    {
        return new GraphObjectPagingLoader(getActivity(), PickerFragment.access$600(PickerFragment.this));
    }

    protected void onLoadFinished(GraphObjectPagingLoader graphobjectpagingloader, SimpleGraphObjectCursor simplegraphobjectcursor)
    {
        updateAdapter(simplegraphobjectcursor);
    }

    protected void onLoadReset(GraphObjectPagingLoader graphobjectpagingloader)
    {
        adapter.changeCursor(null);
    }

    protected void onStartLoading(GraphObjectPagingLoader graphobjectpagingloader, Request request)
    {
        displayActivityCircle();
    }

    public void startLoading(Request request)
    {
        if (loader != null)
        {
            loader.startLoading(request, true);
            onStartLoading(loader, request);
        }
    }

    _cls3()
    {
        this$0 = PickerFragment.this;
        super();
    }
}
