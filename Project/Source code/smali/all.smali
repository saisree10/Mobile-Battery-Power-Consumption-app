.class public Lall;
.super Landroid/os/AsyncTask;
.source "AppWhiteListActivity.java"


# instance fields
.field final synthetic a:Lcom/dianxinos/powermanager/menu/AppWhiteListActivity;


# direct methods
.method public constructor <init>(Lcom/dianxinos/powermanager/menu/AppWhiteListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lall;->a:Lcom/dianxinos/powermanager/menu/AppWhiteListActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private a()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 153
    iget-object v0, p0, Lall;->a:Lcom/dianxinos/powermanager/menu/AppWhiteListActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/menu/AppWhiteListActivity;->a(Lcom/dianxinos/powermanager/menu/AppWhiteListActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 154
    iget-object v0, p0, Lall;->a:Lcom/dianxinos/powermanager/menu/AppWhiteListActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/menu/AppWhiteListActivity;->c(Lcom/dianxinos/powermanager/menu/AppWhiteListActivity;)Laln;

    move-result-object v0

    invoke-virtual {v0}, Laln;->a()Ljava/util/ArrayList;

    move-result-object v0

    .line 156
    iget-object v1, p0, Lall;->a:Lcom/dianxinos/powermanager/menu/AppWhiteListActivity;

    invoke-virtual {v1}, Lcom/dianxinos/powermanager/menu/AppWhiteListActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 158
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 159
    invoke-virtual {p0}, Lall;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 182
    :goto_1
    return-void

    .line 162
    :cond_1
    new-instance v2, Lali;

    iget-object v3, p0, Lall;->a:Lcom/dianxinos/powermanager/menu/AppWhiteListActivity;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lali;-><init>(Lcom/dianxinos/powermanager/menu/AppWhiteListActivity;Lalf;)V

    .line 163
    invoke-static {v2, v0}, Lali;->a(Lali;Ljava/lang/String;)Ljava/lang/String;

    .line 164
    iput-boolean v5, v2, Lali;->a:Z

    .line 167
    :try_start_0
    invoke-static {v0}, Lacq;->e(Ljava/lang/String;)Lacn;

    move-result-object v0

    .line 168
    iget-boolean v3, v0, Lacn;->c:Z

    if-nez v3, :cond_0

    .line 171
    invoke-virtual {v0}, Lacn;->e()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lali;->b(Lali;Ljava/lang/String;)Ljava/lang/String;

    .line 172
    invoke-virtual {v0}, Lacn;->d()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v2, v0}, Lali;->a(Lali;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    iget-object v0, p0, Lall;->a:Lcom/dianxinos/powermanager/menu/AppWhiteListActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/menu/AppWhiteListActivity;->a(Lcom/dianxinos/powermanager/menu/AppWhiteListActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 173
    :catch_0
    move-exception v0

    .line 174
    const-string v2, "AppWhiteListActivity"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lazt;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 180
    :cond_2
    new-array v0, v5, [Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lall;->publishProgress([Ljava/lang/Object;)V

    goto :goto_1
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .parameter

    .prologue
    .line 134
    invoke-direct {p0}, Lall;->a()V

    .line 135
    const/4 v0, 0x0

    return-object v0
.end method

.method protected a(Ljava/lang/Void;)V
    .locals 2
    .parameter

    .prologue
    .line 191
    iget-object v0, p0, Lall;->a:Lcom/dianxinos/powermanager/menu/AppWhiteListActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/menu/AppWhiteListActivity;->d(Lcom/dianxinos/powermanager/menu/AppWhiteListActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 192
    return-void
.end method

.method protected varargs a([Ljava/lang/Integer;)V
    .locals 2
    .parameter

    .prologue
    .line 140
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 141
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 142
    iget-object v0, p0, Lall;->a:Lcom/dianxinos/powermanager/menu/AppWhiteListActivity;

    new-instance v1, Lalm;

    invoke-direct {v1, p0}, Lalm;-><init>(Lall;)V

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/menu/AppWhiteListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 149
    :cond_0
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 129
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lall;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 129
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lall;->a(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 186
    iget-object v0, p0, Lall;->a:Lcom/dianxinos/powermanager/menu/AppWhiteListActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/menu/AppWhiteListActivity;->d(Lcom/dianxinos/powermanager/menu/AppWhiteListActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 187
    return-void
.end method

.method protected synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 129
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lall;->a([Ljava/lang/Integer;)V

    return-void
.end method
