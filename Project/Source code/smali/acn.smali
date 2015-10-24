.class public Lacn;
.super Ljava/lang/Object;
.source "AppInfo2.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:Z

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/ref/WeakReference;

.field private f:Ljava/lang/ref/WeakReference;

.field private g:Ljava/io/File;

.field private h:I

.field private i:I

.field private j:J

.field private k:J

.field private l:J

.field private m:Z


# direct methods
.method constructor <init>(Landroid/content/pm/PackageInfo;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    const-wide/16 v1, -0x1

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const/4 v0, -0x1

    iput v0, p0, Lacn;->b:I

    .line 81
    iput v3, p0, Lacn;->h:I

    .line 82
    iput v3, p0, Lacn;->i:I

    .line 83
    iput-wide v1, p0, Lacn;->j:J

    .line 84
    iput-wide v1, p0, Lacn;->k:J

    .line 85
    iput-wide v1, p0, Lacn;->l:J

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lacn;->m:Z

    .line 94
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lacn;->a:Ljava/lang/String;

    .line 95
    invoke-direct {p0, p1}, Lacn;->a(Landroid/content/pm/PackageInfo;)V

    .line 96
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const/4 v0, -0x1

    iput v0, p0, Lacn;->b:I

    .line 81
    iput v1, p0, Lacn;->h:I

    .line 82
    iput v1, p0, Lacn;->i:I

    .line 83
    iput-wide v2, p0, Lacn;->j:J

    .line 84
    iput-wide v2, p0, Lacn;->k:J

    .line 85
    iput-wide v2, p0, Lacn;->l:J

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lacn;->m:Z

    .line 89
    iput-object p1, p0, Lacn;->a:Ljava/lang/String;

    .line 90
    iput-boolean v1, p0, Lacn;->m:Z

    .line 91
    return-void
.end method

.method static synthetic a(Lacn;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, Lacn;->i()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lacn;Lacp;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lacn;->b(Lacp;)V

    return-void
.end method

.method private declared-synchronized a(Landroid/content/pm/PackageInfo;)V
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 105
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lacn;->e:Ljava/lang/ref/WeakReference;

    .line 106
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    iput v1, p0, Lacn;->h:I

    .line 107
    iget-object v1, p0, Lacn;->a:Ljava/lang/String;

    invoke-static {v1}, Lacq;->b(Ljava/lang/String;)I

    move-result v1

    .line 112
    if-eqz v1, :cond_0

    if-ne v1, v0, :cond_3

    :cond_0
    move v1, v0

    :goto_0
    iput v1, p0, Lacn;->i:I

    .line 115
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v1, p0, Lacn;->b:I

    .line 116
    iget v1, p0, Lacn;->h:I

    and-int/lit8 v1, v1, 0x1

    if-eq v1, v0, :cond_1

    iget v1, p0, Lacn;->h:I

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_4

    :cond_1
    :goto_1
    iput-boolean v0, p0, Lacn;->c:Z

    .line 119
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 120
    if-eqz v1, :cond_5

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_2
    iput-object v0, p0, Lacn;->g:Ljava/io/File;

    .line 121
    iget-wide v0, p0, Lacn;->k:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    .line 122
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lacn;->k:J

    .line 123
    invoke-virtual {p0}, Lacn;->f()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    :cond_2
    monitor-exit p0

    return-void

    .line 112
    :cond_3
    const/4 v1, -0x1

    goto :goto_0

    .line 116
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 120
    :cond_5
    const/4 v0, 0x0

    goto :goto_2

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private b(Lacp;)V
    .locals 0
    .parameter

    .prologue
    .line 190
    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Lacp;->a(Lacn;)V

    .line 191
    :cond_0
    return-void
.end method

.method private declared-synchronized h()V
    .locals 1

    .prologue
    .line 99
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lacn;->m:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lacn;->e:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    .line 100
    invoke-virtual {p0}, Lacn;->c()Landroid/content/pm/PackageInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    :cond_0
    monitor-exit p0

    return-void

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private i()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 173
    invoke-static {p0}, Lacq;->b(Lacn;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 174
    if-eqz v0, :cond_0

    .line 175
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lacn;->f:Ljava/lang/ref/WeakReference;

    .line 177
    :cond_0
    return-object v0
.end method


# virtual methods
.method public a(Lacp;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 200
    iget-boolean v0, p0, Lacn;->m:Z

    if-nez v0, :cond_0

    .line 201
    invoke-direct {p0, p1}, Lacn;->b(Lacp;)V

    .line 202
    invoke-static {p0}, Lacq;->b(Lacn;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 224
    :goto_0
    return-object v1

    .line 204
    :cond_0
    invoke-direct {p0}, Lacn;->h()V

    .line 206
    iget-object v0, p0, Lacn;->f:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lacn;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_3

    .line 207
    :goto_1
    iget-object v2, p0, Lacn;->g:Ljava/io/File;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lacn;->g:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 208
    :cond_1
    invoke-direct {p0, p1}, Lacn;->b(Lacp;)V

    goto :goto_0

    .line 211
    :cond_2
    if-eqz p1, :cond_4

    .line 212
    new-instance v1, Laco;

    invoke-direct {v1, p0, p1}, Laco;-><init>(Lacn;Lacp;)V

    invoke-virtual {v1}, Laco;->start()V

    :cond_3
    :goto_2
    move-object v1, v0

    .line 224
    goto :goto_0

    .line 220
    :cond_4
    invoke-direct {p0}, Lacn;->i()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 221
    invoke-direct {p0, p1}, Lacn;->b(Lacp;)V

    goto :goto_2

    :cond_5
    move-object v0, v1

    goto :goto_1
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 128
    iget-boolean v0, p0, Lacn;->m:Z

    return v0
.end method

.method public b()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 143
    invoke-direct {p0}, Lacn;->h()V

    .line 144
    iget v1, p0, Lacn;->i:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Landroid/content/pm/PackageInfo;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 152
    .line 153
    iget-boolean v0, p0, Lacn;->m:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lacn;->e:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lacn;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    if-nez v0, :cond_2

    .line 154
    :cond_0
    invoke-static {}, Lacq;->a()Lacq;

    move-result-object v0

    iget-object v2, p0, Lacn;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lacq;->a(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 155
    if-nez v0, :cond_1

    .line 158
    :goto_0
    return-object v1

    .line 156
    :cond_1
    invoke-direct {p0, v0}, Lacn;->a(Landroid/content/pm/PackageInfo;)V

    :cond_2
    :goto_1
    move-object v1, v0

    .line 158
    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method public d()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 186
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lacn;->a(Lacp;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 228
    iget-boolean v0, p0, Lacn;->m:Z

    if-nez v0, :cond_0

    .line 229
    invoke-static {p0}, Lacq;->a(Lacn;)Ljava/lang/String;

    move-result-object v0

    .line 240
    :goto_0
    return-object v0

    .line 231
    :cond_0
    invoke-direct {p0}, Lacn;->h()V

    .line 232
    iget-object v0, p0, Lacn;->d:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 233
    iget-object v0, p0, Lacn;->g:Ljava/io/File;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lacn;->g:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lacn;->a:Ljava/lang/String;

    goto :goto_0

    .line 234
    :cond_2
    invoke-virtual {p0}, Lacn;->c()Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 235
    if-nez v0, :cond_3

    iget-object v0, p0, Lacn;->a:Ljava/lang/String;

    goto :goto_0

    .line 236
    :cond_3
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {}, Lacq;->a()Lacq;

    move-result-object v1

    invoke-virtual {v1}, Lacq;->b()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lzy;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lacn;->d:Ljava/lang/String;

    .line 238
    iget-object v0, p0, Lacn;->a:Ljava/lang/String;

    iget-object v1, p0, Lacn;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lacq;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    :cond_4
    iget-object v0, p0, Lacn;->d:Ljava/lang/String;

    goto :goto_0
.end method

.method public f()J
    .locals 4

    .prologue
    const-wide/16 v0, 0x0

    .line 285
    iget-boolean v2, p0, Lacn;->m:Z

    if-nez v2, :cond_0

    .line 294
    :goto_0
    return-wide v0

    .line 286
    :cond_0
    iget-wide v2, p0, Lacn;->k:J

    cmp-long v2, v2, v0

    if-gez v2, :cond_2

    .line 287
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x9

    if-ge v2, v3, :cond_3

    .line 288
    invoke-direct {p0}, Lacn;->h()V

    .line 289
    iget-object v2, p0, Lacn;->g:Ljava/io/File;

    if-eqz v2, :cond_1

    iget-object v0, p0, Lacn;->g:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    :cond_1
    iput-wide v0, p0, Lacn;->k:J

    .line 294
    :cond_2
    :goto_1
    iget-wide v0, p0, Lacn;->k:J

    goto :goto_0

    .line 291
    :cond_3
    invoke-virtual {p0}, Lacn;->c()Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-wide v0, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    iput-wide v0, p0, Lacn;->k:J

    goto :goto_1
.end method

.method public g()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 320
    iput-object v2, p0, Lacn;->e:Ljava/lang/ref/WeakReference;

    .line 321
    iput-object v2, p0, Lacn;->f:Ljava/lang/ref/WeakReference;

    .line 322
    iput-object v2, p0, Lacn;->d:Ljava/lang/String;

    .line 323
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lacn;->j:J

    .line 324
    iput-object v2, p0, Lacn;->g:Ljava/io/File;

    .line 325
    const/4 v0, 0x0

    iput v0, p0, Lacn;->i:I

    .line 326
    return-void
.end method
