.class Lor;
.super Ljava/lang/Object;
.source "ToolboxCacheManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Loq;


# direct methods
.method constructor <init>(Loq;)V
    .locals 0
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lor;->a:Loq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 103
    iget-object v1, p0, Lor;->a:Loq;

    invoke-static {v1}, Loq;->a(Loq;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 106
    :try_start_0
    const-string v1, "ToolboxCacheMgr"

    const-string v3, "restore image list start."

    invoke-static {v1, v3}, Lnz;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-object v1, p0, Lor;->a:Loq;

    invoke-static {v1}, Loq;->b(Loq;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v3, "dxtoolbox/images"

    invoke-virtual {v1, v3}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 109
    array-length v3, v1

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v1, v0

    .line 110
    iget-object v5, p0, Lor;->a:Loq;

    invoke-static {v5}, Loq;->c(Loq;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 112
    :cond_0
    const-string v0, "ToolboxCacheMgr"

    const-string v1, "restore image list end."

    invoke-static {v0, v1}, Lnz;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 118
    :goto_1
    :try_start_1
    iget-object v0, p0, Lor;->a:Loq;

    invoke-static {v0}, Loq;->b(Loq;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "toolbox.json"

    invoke-static {v0, v1}, Lom;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 120
    invoke-static {}, Lpa;->b()I

    move-result v3

    .line 122
    const-string v1, "ToolboxCacheMgr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Preload version old = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; new = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lnz;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 126
    if-ge v0, v3, :cond_3

    .line 128
    :try_start_2
    const-string v0, "ToolboxCacheMgr"

    const-string v1, "restore data start."

    invoke-static {v0, v1}, Lnz;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lor;->a:Loq;

    invoke-static {v0}, Loq;->b(Loq;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Loc;->a(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    .line 132
    const-string v1, "ToolboxCacheMgr"

    const-string v4, "restore data read completed. update cache."

    invoke-static {v1, v4}, Lnz;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 135
    iget-object v5, p0, Lor;->a:Loq;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v5, v1, v0}, Loq;->a(Loq;Ljava/lang/String;Ljava/util/List;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 138
    :catch_0
    move-exception v0

    .line 139
    :try_start_3
    const-string v0, "ToolboxCacheMgr"

    const-string v1, "no prelaod data : assets/dxtoolbox/toolbox.json"

    invoke-static {v0, v1}, Lnz;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    :goto_3
    iget-object v0, p0, Lor;->a:Loq;

    invoke-static {v0}, Loq;->b(Loq;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "toolbox.json"

    invoke-static {v0, v1, v3}, Lom;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 153
    :cond_1
    iget-object v0, p0, Lor;->a:Loq;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Loq;->a(Loq;Z)Z

    .line 154
    iget-object v0, p0, Lor;->a:Loq;

    invoke-static {v0}, Loq;->a(Loq;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 155
    monitor-exit v2

    .line 156
    return-void

    .line 113
    :catch_1
    move-exception v0

    .line 114
    const-string v1, "ToolboxCacheMgr"

    const-string v3, "restore image list failed:"

    invoke-static {v1, v3, v0}, Lnz;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 155
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 137
    :cond_2
    :try_start_4
    const-string v0, "ToolboxCacheMgr"

    const-string v1, "restore data update cache completed."

    invoke-static {v0, v1}, Lnz;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    .line 140
    :catch_2
    move-exception v0

    .line 141
    :try_start_5
    const-string v1, "ToolboxCacheMgr"

    const-string v4, "restore data failed:"

    invoke-static {v1, v4, v0}, Lnz;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 148
    :cond_3
    iget-object v0, p0, Lor;->a:Loq;

    invoke-virtual {v0}, Loq;->b()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 149
    iget-object v3, p0, Lor;->a:Loq;

    invoke-static {v3, v0}, Loq;->a(Loq;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4
.end method
