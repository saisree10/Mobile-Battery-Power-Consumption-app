.class public Lpa;
.super Ljava/lang/Object;
.source "ToolboxManager.java"


# static fields
.field public static a:Z

.field private static b:I

.field private static c:Lpd;

.field private static d:Lpa;

.field private static f:Z

.field private static g:Z

.field private static h:I

.field private static final i:Ljava/lang/Object;


# instance fields
.field private e:Lny;

.field private j:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 37
    sput v2, Lpa;->b:I

    .line 38
    sput-boolean v1, Lpa;->a:Z

    .line 39
    sget-object v0, Lpd;->b:Lpd;

    sput-object v0, Lpa;->c:Lpd;

    .line 45
    sput-boolean v2, Lpa;->f:Z

    .line 46
    sput-boolean v1, Lpa;->g:Z

    .line 48
    const/16 v0, 0x1f4

    sput v0, Lpa;->h:I

    .line 53
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lpa;->i:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lpa;->j:Landroid/content/Context;

    .line 59
    invoke-static {p1}, Loq;->a(Landroid/content/Context;)Loq;

    move-result-object v0

    .line 60
    invoke-static {p1, v0}, Lnq;->a(Landroid/content/Context;Loq;)Lnq;

    move-result-object v0

    iput-object v0, p0, Lpa;->e:Lny;

    .line 62
    invoke-direct {p0, p1}, Lpa;->b(Landroid/content/Context;)V

    .line 63
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lpa;
    .locals 3
    .parameter

    .prologue
    .line 70
    const-class v1, Lpa;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lpa;->d:Lpa;

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Lpa;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lpa;-><init>(Landroid/content/Context;)V

    sput-object v0, Lpa;->d:Lpa;

    .line 74
    :cond_0
    sget-object v0, Lpa;->d:Lpa;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(I)V
    .locals 2
    .parameter

    .prologue
    .line 138
    sget-object v0, Lpa;->d:Lpa;

    if-eqz v0, :cond_0

    .line 139
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Call this method befor getInstance()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_0
    sput p0, Lpa;->b:I

    .line 142
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 208
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 209
    :cond_0
    const-string v0, "ToolboxManager"

    const-string v1, "Params error."

    invoke-static {v0, v1}, Lnz;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    :cond_1
    :goto_0
    return-void

    .line 213
    :cond_2
    invoke-static {p0}, Lom;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 214
    const-string v0, "ToolboxManager"

    const-string v1, "Not need show toolbox!"

    invoke-static {v0, v1}, Lnz;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 218
    :cond_3
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 219
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 220
    const-string v1, "ToolboxManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not ACTION_PACKAGE_ADDED: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lnz;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 224
    :cond_4
    const-string v0, "android.intent.extra.REPLACING"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 225
    const-string v1, "ToolboxManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACTION_PACKAGE_ADDED, replaceing? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnz;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    if-nez v0, :cond_1

    .line 228
    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 229
    invoke-static {p0}, Loq;->a(Landroid/content/Context;)Loq;

    move-result-object v1

    .line 230
    invoke-virtual {v1, v0}, Loq;->g(Ljava/lang/String;)Lns;

    move-result-object v2

    .line 231
    if-nez v2, :cond_5

    .line 232
    const-string v0, "ToolboxManager"

    const-string v1, "Non-click item, skip."

    invoke-static {v0, v1}, Lnz;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 236
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, v2, Lns;->h:J

    sub-long/2addr v3, v5

    .line 237
    const-wide/32 v5, 0x5265c00

    cmp-long v3, v3, v5

    if-gez v3, :cond_6

    .line 238
    invoke-static {p0, v2}, Lop;->a(Landroid/content/Context;Lns;)V

    .line 239
    invoke-static {}, Lpa;->d()Z

    move-result v3

    if-eqz v3, :cond_6

    iget v3, v2, Lns;->e:I

    if-lez v3, :cond_6

    .line 240
    invoke-virtual {v1, v0}, Loq;->i(Ljava/lang/String;)V

    .line 241
    invoke-static {p0, v2}, Lpa;->a(Landroid/content/Context;Lns;)V

    .line 245
    :cond_6
    invoke-static {}, Lpa;->d()Z

    move-result v3

    if-eqz v3, :cond_7

    iget v2, v2, Lns;->e:I

    if-gtz v2, :cond_1

    .line 250
    :cond_7
    invoke-virtual {v1, v0}, Loq;->h(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static a(Landroid/content/Context;Lns;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 257
    invoke-static {}, Lpg;->a()Lpg;

    move-result-object v0

    new-instance v1, Lpb;

    invoke-direct {v1, p1, p0}, Lpb;-><init>(Lns;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lpg;->a(Ljava/lang/Runnable;)V

    .line 313
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 86
    const-string v0, "prod"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    const/4 v0, 0x0

    sput-boolean v0, Lpa;->a:Z

    .line 94
    :cond_0
    :goto_0
    invoke-static {p0}, Lkl;->a(Ljava/lang/String;)V

    .line 96
    sget-boolean v0, Lpa;->a:Z

    invoke-static {v0}, Lnz;->a(Z)V

    .line 97
    return-void

    .line 88
    :cond_1
    const-string v0, "dev"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 89
    sput-boolean v1, Lpa;->a:Z

    goto :goto_0

    .line 90
    :cond_2
    const-string v0, "test"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    sput-boolean v1, Lpa;->a:Z

    goto :goto_0
.end method

.method static synthetic a(Lpa;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lpa;->b(Z)V

    return-void
.end method

.method public static a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 183
    sput-boolean p0, Lpa;->g:Z

    .line 184
    return-void
.end method

.method public static a()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 127
    sget-object v0, Lpa;->c:Lpd;

    sget-object v1, Lpd;->b:Lpd;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b()I
    .locals 1

    .prologue
    .line 150
    sget v0, Lpa;->b:I

    return v0
.end method

.method private b(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 66
    invoke-static {}, Lov;->a()Lov;

    move-result-object v0

    invoke-virtual {v0, p1}, Lov;->a(Landroid/content/Context;)V

    .line 67
    return-void
.end method

.method public static b(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 328
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 329
    :cond_0
    const-string v0, "ToolboxManager"

    const-string v1, "Params error."

    invoke-static {v0, v1}, Lnz;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    :goto_0
    return-void

    .line 333
    :cond_1
    invoke-static {p0}, Lom;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 334
    const-string v0, "ToolboxManager"

    const-string v1, "Not need show toolbox!"

    invoke-static {v0, v1}, Lnz;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 338
    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 339
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 340
    const-string v1, "ToolboxManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not CONNECTIVITY_ACTION: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lnz;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 344
    :cond_3
    invoke-static {p0}, Loa;->a(Landroid/content/Context;)I

    move-result v0

    .line 345
    if-nez v0, :cond_4

    .line 346
    const-string v1, "ToolboxManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not active network: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lnz;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 350
    :cond_4
    const-string v0, "ToolboxManager"

    const-string v1, "Connectivity action received!"

    invoke-static {v0, v1}, Lnz;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    invoke-static {}, Lpg;->a()Lpg;

    move-result-object v0

    new-instance v1, Lpc;

    invoke-direct {v1, p0}, Lpc;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lpg;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private b(Z)V
    .locals 1
    .parameter

    .prologue
    .line 367
    iget-object v0, p0, Lpa;->e:Lny;

    invoke-interface {v0, p1}, Lny;->a(Z)V

    .line 368
    return-void
.end method

.method public static c()Z
    .locals 1

    .prologue
    .line 173
    sget-boolean v0, Lpa;->f:Z

    return v0
.end method

.method public static d()Z
    .locals 1

    .prologue
    .line 192
    sget-boolean v0, Lpa;->g:Z

    return v0
.end method

.method static synthetic f()I
    .locals 1

    .prologue
    .line 18
    sget v0, Lpa;->h:I

    return v0
.end method

.method static synthetic g()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lpa;->i:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public b(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 389
    iget-object v0, p0, Lpa;->e:Lny;

    invoke-interface {v0, p1}, Lny;->b(Ljava/lang/String;)V

    .line 390
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 398
    new-instance v0, Lod;

    invoke-direct {v0, p1}, Lod;-><init>(Ljava/lang/String;)V

    .line 399
    invoke-virtual {v0, v1}, Lod;->a(Z)V

    .line 400
    invoke-virtual {v0, v1}, Lod;->b(Z)V

    .line 401
    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Lod;->a(I)V

    .line 402
    iget-object v1, p0, Lpa;->e:Lny;

    invoke-interface {v1, v0}, Lny;->b(Lod;)V

    .line 403
    return-void
.end method

.method public d(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 411
    iget-object v0, p0, Lpa;->j:Landroid/content/Context;

    invoke-static {v0}, Loq;->a(Landroid/content/Context;)Loq;

    move-result-object v0

    invoke-virtual {v0, p1}, Loq;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public e()V
    .locals 2

    .prologue
    .line 380
    iget-object v0, p0, Lpa;->e:Lny;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lny;->a(Z)V

    .line 381
    return-void
.end method
