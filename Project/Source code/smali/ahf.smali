.class public Lahf;
.super Lahp;
.source "AutoSyncCommand.java"


# instance fields
.field private final a:Landroid/os/Handler;

.field private h:Ljava/lang/Object;

.field private i:Landroid/content/SyncStatusObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lahp;-><init>(Landroid/content/Context;)V

    .line 15
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lahf;->a:Landroid/os/Handler;

    .line 26
    new-instance v0, Lahg;

    invoke-direct {v0, p0}, Lahg;-><init>(Lahf;)V

    iput-object v0, p0, Lahf;->i:Landroid/content/SyncStatusObserver;

    .line 21
    sget-boolean v0, Lazw;->a:Z

    iput-boolean v0, p0, Lahf;->f:Z

    .line 22
    iget-boolean v0, p0, Lahf;->f:Z

    if-nez v0, :cond_0

    .line 24
    :cond_0
    return-void
.end method

.method static synthetic a(Lahf;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 12
    iget-object v0, p0, Lahf;->a:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public a(Lahq;)V
    .locals 2
    .parameter

    .prologue
    .line 65
    iget-boolean v0, p0, Lahf;->f:Z

    if-nez v0, :cond_0

    .line 74
    :goto_0
    return-void

    .line 69
    :cond_0
    const/16 v0, 0xd

    iget-object v1, p0, Lahf;->i:Landroid/content/SyncStatusObserver;

    invoke-static {v0, v1}, Landroid/content/ContentResolver;->addStatusChangeListener(ILandroid/content/SyncStatusObserver;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lahf;->h:Ljava/lang/Object;

    .line 73
    iput-object p1, p0, Lahf;->e:Lahq;

    goto :goto_0
.end method

.method public a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-boolean v0, p0, Lahf;->f:Z

    if-nez v0, :cond_0

    .line 46
    :goto_0
    return-void

    .line 45
    :cond_0
    invoke-static {p1}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lahf;->f:Z

    if-nez v0, :cond_0

    .line 51
    const/4 v0, 0x0

    .line 55
    :goto_0
    return v0

    .line 53
    :cond_0
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v0

    iput-boolean v0, p0, Lahf;->g:Z

    .line 55
    iget-boolean v0, p0, Lahf;->g:Z

    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lahf;->d:Landroid/content/Context;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a00c2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    const-string v0, "AutoSyncCommand "

    return-object v0
.end method
