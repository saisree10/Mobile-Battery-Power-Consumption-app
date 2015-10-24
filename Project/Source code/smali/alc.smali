.class public Lalc;
.super Landroid/os/AsyncTask;
.source "AppListActivity.java"


# instance fields
.field final synthetic a:Lcom/dianxinos/powermanager/menu/AppListActivity;


# direct methods
.method public constructor <init>(Lcom/dianxinos/powermanager/menu/AppListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lalc;->a:Lcom/dianxinos/powermanager/menu/AppListActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private a()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 128
    iget-object v0, p0, Lalc;->a:Lcom/dianxinos/powermanager/menu/AppListActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/menu/AppListActivity;->a(Lcom/dianxinos/powermanager/menu/AppListActivity;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    .line 129
    :try_start_0
    iget-object v0, p0, Lalc;->a:Lcom/dianxinos/powermanager/menu/AppListActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/menu/AppListActivity;->a(Lcom/dianxinos/powermanager/menu/AppListActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 130
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 133
    invoke-static {}, Lacq;->c()Ljava/util/ArrayList;

    move-result-object v0

    .line 135
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lacn;

    .line 136
    invoke-virtual {p0}, Lalc;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 178
    :goto_1
    return-void

    .line 130
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 139
    :cond_1
    const-string v3, "com.dianxinos.dxbs"

    iget-object v4, v0, Lacn;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 143
    new-instance v3, Lakz;

    iget-object v4, p0, Lalc;->a:Lcom/dianxinos/powermanager/menu/AppListActivity;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lakz;-><init>(Lcom/dianxinos/powermanager/menu/AppListActivity;Laky;)V

    .line 145
    iget-object v4, p0, Lalc;->a:Lcom/dianxinos/powermanager/menu/AppListActivity;

    invoke-static {v4}, Lcom/dianxinos/powermanager/menu/AppListActivity;->c(Lcom/dianxinos/powermanager/menu/AppListActivity;)Laln;

    move-result-object v4

    iget-object v5, v0, Lacn;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Laln;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 146
    iput-boolean v6, v3, Lakz;->a:Z

    .line 150
    :cond_2
    :try_start_2
    iget-boolean v4, v0, Lacn;->c:Z

    invoke-static {v3, v4}, Lakz;->a(Lakz;Z)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 159
    iget-object v4, p0, Lalc;->a:Lcom/dianxinos/powermanager/menu/AppListActivity;

    invoke-static {v4}, Lcom/dianxinos/powermanager/menu/AppListActivity;->d(Lcom/dianxinos/powermanager/menu/AppListActivity;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {v3}, Lakz;->a(Lakz;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 163
    :cond_3
    iget-object v4, v0, Lacn;->a:Ljava/lang/String;

    invoke-static {v3, v4}, Lakz;->a(Lakz;Ljava/lang/String;)Ljava/lang/String;

    .line 164
    invoke-virtual {v0}, Lacn;->e()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lakz;->b(Lakz;Ljava/lang/String;)Ljava/lang/String;

    .line 165
    invoke-virtual {v0}, Lacn;->d()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v3, v0}, Lakz;->a(Lakz;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 167
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x3

    if-lt v0, v3, :cond_4

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    rem-int/lit8 v0, v0, 0x3

    if-nez v0, :cond_0

    .line 170
    :cond_4
    iget-object v0, p0, Lalc;->a:Lcom/dianxinos/powermanager/menu/AppListActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/menu/AppListActivity;->a(Lcom/dianxinos/powermanager/menu/AppListActivity;)Ljava/util/ArrayList;

    move-result-object v3

    monitor-enter v3

    .line 171
    :try_start_3
    iget-object v0, p0, Lalc;->a:Lcom/dianxinos/powermanager/menu/AppListActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/menu/AppListActivity;->a(Lcom/dianxinos/powermanager/menu/AppListActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v4, p0, Lalc;->a:Lcom/dianxinos/powermanager/menu/AppListActivity;

    invoke-static {v4}, Lcom/dianxinos/powermanager/menu/AppListActivity;->a(Lcom/dianxinos/powermanager/menu/AppListActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v0, v4, v1}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 172
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 173
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 174
    new-array v0, v6, [Ljava/lang/Integer;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    invoke-virtual {p0, v0}, Lalc;->publishProgress([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 152
    :catch_0
    move-exception v0

    .line 153
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 173
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 177
    :cond_5
    new-array v0, v6, [Ljava/lang/Integer;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v7

    invoke-virtual {p0, v0}, Lalc;->publishProgress([Ljava/lang/Object;)V

    goto/16 :goto_1
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .parameter

    .prologue
    .line 109
    invoke-direct {p0}, Lalc;->a()V

    .line 110
    const/4 v0, 0x0

    return-object v0
.end method

.method protected a(Ljava/lang/Void;)V
    .locals 2
    .parameter

    .prologue
    .line 182
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 183
    iget-object v0, p0, Lalc;->a:Lcom/dianxinos/powermanager/menu/AppListActivity;

    new-instance v1, Lale;

    invoke-direct {v1, p0}, Lale;-><init>(Lalc;)V

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/menu/AppListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 188
    return-void
.end method

.method protected varargs a([Ljava/lang/Integer;)V
    .locals 2
    .parameter

    .prologue
    .line 115
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 116
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 117
    iget-object v0, p0, Lalc;->a:Lcom/dianxinos/powermanager/menu/AppListActivity;

    new-instance v1, Lald;

    invoke-direct {v1, p0}, Lald;-><init>(Lalc;)V

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/menu/AppListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 124
    :cond_0
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 104
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lalc;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 104
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lalc;->a(Ljava/lang/Void;)V

    return-void
.end method

.method protected synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 104
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lalc;->a([Ljava/lang/Integer;)V

    return-void
.end method
