.class public Laou;
.super Ljava/lang/Object;
.source "PowerSettingsHelperBase.java"


# static fields
.field public static final a:[Ljava/lang/String;

.field private static d:Landroid/content/Context;


# instance fields
.field public final b:Ljava/util/HashMap;

.field public c:Z

.field private e:Lahp;

.field private f:Lahp;

.field private g:Lahp;

.field private h:Ljava/lang/String;

.field private i:Ljava/util/List;

.field private j:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 53
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "brightness"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "screenTimeout"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "wifi"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "bluetooth"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "mobileData"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "sync"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "vibrate"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "haptic"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "autoclean"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "GPS"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "bkgData"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "only2g"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "autoRotate"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "airplane"

    aput-object v2, v0, v1

    sput-object v0, Laou;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Laou;->b:Ljava/util/HashMap;

    .line 156
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Laou;->i:Ljava/util/List;

    .line 194
    new-instance v0, Laov;

    invoke-direct {v0, p0}, Laov;-><init>(Laou;)V

    iput-object v0, p0, Laou;->j:Landroid/content/BroadcastReceiver;

    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Laou;->d:Landroid/content/Context;

    .line 99
    invoke-direct {p0}, Laou;->c()V

    .line 101
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 102
    const-string v1, "com.dianxinos.dxbs.MODEMODIFIED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 103
    const-string v1, "com.dianxinos.dxbs.MODECHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 104
    sget-object v1, Laou;->d:Landroid/content/Context;

    iget-object v2, p0, Laou;->j:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 106
    return-void
.end method

.method static synthetic a(Laou;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    iput-object p1, p0, Laou;->h:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Laou;)V
    .locals 0
    .parameter

    .prologue
    .line 24
    invoke-direct {p0}, Laou;->c()V

    return-void
.end method

.method static synthetic b()Landroid/content/Context;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Laou;->d:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Laou;)V
    .locals 0
    .parameter

    .prologue
    .line 24
    invoke-direct {p0}, Laou;->d()V

    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 121
    sget-object v0, Laou;->d:Landroid/content/Context;

    invoke-static {v0}, Lamp;->a(Landroid/content/Context;)Lamp;

    move-result-object v0

    .line 122
    invoke-virtual {v0}, Lamp;->g()Lamh;

    move-result-object v0

    .line 124
    invoke-virtual {v0}, Lamh;->l()Lahd;

    move-result-object v1

    invoke-virtual {v1}, Lahd;->a()Z

    move-result v1

    iput-boolean v1, p0, Laou;->c:Z

    .line 126
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lamh;->a(I)Lahp;

    move-result-object v1

    invoke-virtual {v1}, Lahp;->a()Z

    move-result v1

    invoke-virtual {p0, v1}, Laou;->a(Z)V

    .line 128
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lamh;->a(I)Lahp;

    move-result-object v1

    iput-object v1, p0, Laou;->g:Lahp;

    .line 129
    iget-object v1, p0, Laou;->g:Lahp;

    invoke-virtual {v1}, Lahp;->a()Z

    move-result v1

    invoke-virtual {p0, v1}, Laou;->b(Z)V

    .line 130
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lamh;->a(I)Lahp;

    move-result-object v1

    invoke-virtual {v1}, Lahp;->g()I

    move-result v1

    invoke-virtual {p0, v1}, Laou;->a(I)V

    .line 131
    sget-object v1, Laou;->d:Landroid/content/Context;

    invoke-static {v1}, Lapi;->a(Landroid/content/Context;)Lapi;

    move-result-object v1

    invoke-virtual {v1}, Lapi;->b()I

    move-result v1

    invoke-virtual {p0, v1}, Laou;->b(I)V

    .line 133
    invoke-virtual {v0}, Lamh;->l()Lahd;

    move-result-object v1

    invoke-virtual {v1}, Lahd;->a()Z

    move-result v1

    invoke-virtual {p0, v1}, Laou;->c(Z)V

    .line 134
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lamh;->a(I)Lahp;

    move-result-object v1

    iput-object v1, p0, Laou;->f:Lahp;

    .line 135
    iget-object v1, p0, Laou;->f:Lahp;

    invoke-virtual {v1}, Lahp;->a()Z

    move-result v1

    invoke-virtual {p0, v1}, Laou;->d(Z)V

    .line 136
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lamh;->a(I)Lahp;

    move-result-object v1

    invoke-virtual {v1}, Lahp;->a()Z

    move-result v1

    invoke-virtual {p0, v1}, Laou;->e(Z)V

    .line 137
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lamh;->a(I)Lahp;

    move-result-object v1

    invoke-virtual {v1}, Lahp;->a()Z

    move-result v1

    invoke-virtual {p0, v1}, Laou;->f(Z)V

    .line 138
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lamh;->a(I)Lahp;

    move-result-object v0

    iput-object v0, p0, Laou;->e:Lahp;

    .line 140
    invoke-virtual {p0}, Laou;->a()V

    .line 141
    return-void
.end method

.method private d()V
    .locals 4

    .prologue
    .line 187
    iget-object v1, p0, Laou;->i:Ljava/util/List;

    monitor-enter v1

    .line 188
    :try_start_0
    iget-object v0, p0, Laou;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laox;

    .line 189
    iget-object v3, p0, Laou;->b:Ljava/util/HashMap;

    invoke-interface {v0, v3}, Laox;->a(Ljava/util/HashMap;)V

    goto :goto_0

    .line 191
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 192
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .parameter

    .prologue
    .line 308
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "\\|"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method protected a()V
    .locals 0

    .prologue
    .line 112
    return-void
.end method

.method protected a(I)V
    .locals 0
    .parameter

    .prologue
    .line 110
    return-void
.end method

.method public a(Laox;)V
    .locals 2
    .parameter

    .prologue
    .line 164
    iget-object v0, p0, Laou;->f:Lahp;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Laou;->f:Lahp;

    invoke-virtual {v0}, Lahp;->a()Z

    move-result v0

    invoke-virtual {p0, v0}, Laou;->d(Z)V

    .line 168
    :cond_0
    iget-object v0, p0, Laou;->g:Lahp;

    if-eqz v0, :cond_1

    .line 169
    iget-object v0, p0, Laou;->g:Lahp;

    invoke-virtual {v0}, Lahp;->a()Z

    move-result v0

    invoke-virtual {p0, v0}, Laou;->b(Z)V

    .line 171
    :cond_1
    iget-object v1, p0, Laou;->i:Ljava/util/List;

    monitor-enter v1

    .line 172
    :try_start_0
    iget-object v0, p0, Laou;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    const-string v0, ""

    iput-object v0, p0, Laou;->h:Ljava/lang/String;

    .line 177
    iget-object v0, p0, Laou;->b:Ljava/util/HashMap;

    invoke-interface {p1, v0}, Laox;->a(Ljava/util/HashMap;)V

    .line 178
    return-void

    .line 173
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 108
    return-void
.end method

.method public b(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 273
    invoke-static {p1}, Lapg;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 274
    if-nez v0, :cond_0

    .line 275
    const-string v0, "wifi|mobileData|brightness|vibrate|airplane|GPS|bluetooth|sync|bkgData|autoRotate"

    .line 277
    :cond_0
    return-object v0
.end method

.method protected b(I)V
    .locals 0
    .parameter

    .prologue
    .line 111
    return-void
.end method

.method public b(Laox;)V
    .locals 2
    .parameter

    .prologue
    .line 181
    iget-object v1, p0, Laou;->i:Ljava/util/List;

    monitor-enter v1

    .line 182
    :try_start_0
    iget-object v0, p0, Laou;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 183
    monitor-exit v1

    .line 184
    return-void

    .line 183
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected b(Z)V
    .locals 0
    .parameter

    .prologue
    .line 109
    return-void
.end method

.method protected c(Z)V
    .locals 0
    .parameter

    .prologue
    .line 113
    return-void
.end method

.method protected d(Z)V
    .locals 0
    .parameter

    .prologue
    .line 114
    return-void
.end method

.method protected e(Z)V
    .locals 0
    .parameter

    .prologue
    .line 115
    return-void
.end method

.method protected f(Z)V
    .locals 0
    .parameter

    .prologue
    .line 116
    return-void
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 145
    :try_start_0
    sget-object v0, Laou;->d:Landroid/content/Context;

    iget-object v1, p0, Laou;->j:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :goto_0
    return-void

    .line 146
    :catch_0
    move-exception v0

    goto :goto_0
.end method
