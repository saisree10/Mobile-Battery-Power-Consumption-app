.class public Lwi;
.super Ljava/lang/Object;
.source "PackageChangeReceiver.java"


# static fields
.field private static a:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lwi;->a:Ljava/util/List;

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 44
    const-string v0, "android.intent.extra.REPLACING"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 50
    invoke-static {p0, p1}, Lwi;->b(Landroid/content/Context;Landroid/content/Intent;)V

    .line 51
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 142
    sget-object v2, Lwi;->a:Ljava/util/List;

    monitor-enter v2

    .line 143
    :try_start_0
    sget-object v0, Lwi;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 144
    const/4 v1, 0x0

    :goto_0
    sget-object v0, Lwi;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 145
    sget-object v0, Lwi;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwj;

    .line 146
    if-nez v0, :cond_0

    .line 147
    sget-object v0, Lwi;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move v0, v1

    :goto_1
    move v1, v0

    .line 152
    goto :goto_0

    .line 149
    :cond_0
    invoke-interface {v0, p0, p1, p2}, Lwj;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 150
    add-int/lit8 v0, v1, 0x1

    goto :goto_1

    .line 153
    :cond_1
    monitor-exit v2

    .line 155
    return-void

    .line 153
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static a(Lwj;)V
    .locals 3
    .parameter

    .prologue
    .line 112
    if-nez p0, :cond_0

    .line 113
    const-string v0, "PackageChangeReceiver"

    const-string v1, "null listener not allowed"

    invoke-static {v0, v1}, Lzs;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    :goto_0
    return-void

    .line 116
    :cond_0
    sget-object v1, Lwi;->a:Ljava/util/List;

    monitor-enter v1

    .line 117
    :try_start_0
    sget-object v0, Lwi;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 118
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p0, :cond_1

    monitor-exit v1

    goto :goto_0

    .line 121
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 120
    :cond_2
    :try_start_1
    sget-object v0, Lwi;->a:Ljava/util/List;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 55
    const-string v1, "android.intent.extra.REPLACING"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 56
    const-string v2, "android.intent.extra.UID"

    const/4 v3, -0x1

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 57
    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URI;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    .line 60
    const-string v4, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 62
    if-nez v1, :cond_0

    .line 63
    invoke-static {p0, v3, v2}, Lwi;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 65
    :cond_0
    invoke-static {p0}, Lka;->a(Landroid/content/Context;)Lka;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lka;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 74
    :cond_1
    :goto_0
    return-void

    .line 66
    :cond_2
    const-string v4, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-nez v1, :cond_3

    .line 68
    invoke-static {p0, v3, v2}, Lwi;->b(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 69
    :cond_3
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    invoke-static {p0, v3, v2}, Lwi;->c(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 159
    sget-object v2, Lwi;->a:Ljava/util/List;

    monitor-enter v2

    .line 160
    :try_start_0
    sget-object v0, Lwi;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 161
    const/4 v1, 0x0

    :goto_0
    sget-object v0, Lwi;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 162
    sget-object v0, Lwi;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwj;

    .line 163
    if-nez v0, :cond_0

    .line 164
    sget-object v0, Lwi;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move v0, v1

    :goto_1
    move v1, v0

    .line 169
    goto :goto_0

    .line 166
    :cond_0
    invoke-interface {v0, p0, p1, p2}, Lwj;->b(Landroid/content/Context;Ljava/lang/String;I)V

    .line 167
    add-int/lit8 v0, v1, 0x1

    goto :goto_1

    .line 170
    :cond_1
    monitor-exit v2

    .line 172
    return-void

    .line 170
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static c(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 176
    sget-object v2, Lwi;->a:Ljava/util/List;

    monitor-enter v2

    .line 177
    :try_start_0
    sget-object v0, Lwi;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 178
    const/4 v1, 0x0

    :goto_0
    sget-object v0, Lwi;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 179
    sget-object v0, Lwi;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwj;

    .line 180
    if-nez v0, :cond_0

    .line 181
    sget-object v0, Lwi;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move v0, v1

    :goto_1
    move v1, v0

    .line 186
    goto :goto_0

    .line 183
    :cond_0
    invoke-interface {v0, p0, p1, p2}, Lwj;->c(Landroid/content/Context;Ljava/lang/String;I)V

    .line 184
    add-int/lit8 v0, v1, 0x1

    goto :goto_1

    .line 187
    :cond_1
    monitor-exit v2

    .line 189
    return-void

    .line 187
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
