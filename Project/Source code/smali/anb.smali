.class public Lanb;
.super Ljava/lang/Object;
.source "ModeSettingsMgr.java"


# static fields
.field private static a:Lamh;

.field private static b:Lanb;


# instance fields
.field private c:Lamx;

.field private d:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;Lamp;Lamh;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    sput-object p3, Lanb;->a:Lamh;

    .line 59
    new-instance v0, Lamx;

    invoke-direct {v0, p1}, Lamx;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lanb;->c:Lamx;

    .line 60
    sget-boolean v0, Lazw;->i:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lazf;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lanb;->d:Z

    .line 61
    return-void

    .line 60
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lanb;)Lamx;
    .locals 1
    .parameter

    .prologue
    .line 16
    iget-object v0, p0, Lanb;->c:Lamx;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lamp;Lamh;)Lanb;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 47
    sget-object v0, Lanb;->b:Lanb;

    if-nez v0, :cond_1

    .line 48
    const-class v1, Lanb;

    monitor-enter v1

    .line 49
    :try_start_0
    sget-object v0, Lanb;->b:Lanb;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lanb;

    invoke-direct {v0, p0, p1, p2}, Lanb;-><init>(Landroid/content/Context;Lamp;Lamh;)V

    sput-object v0, Lanb;->b:Lanb;

    .line 52
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    :cond_1
    sget-object v0, Lanb;->b:Lanb;

    return-object v0

    .line 52
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic b()Lamh;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lanb;->a:Lamh;

    return-object v0
.end method


# virtual methods
.method public a(II)Ljava/lang/Integer;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 87
    new-instance v0, Lanc;

    invoke-direct {v0, p0, p1}, Lanc;-><init>(Lanb;I)V

    .line 88
    invoke-virtual {v0}, Lanc;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public a()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lanb;->a:Lamh;

    invoke-virtual {v0}, Lamh;->g()V

    .line 68
    sget-object v0, Lanb;->a:Lamh;

    invoke-virtual {v0}, Lamh;->f()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 82
    new-instance v0, Lanc;

    invoke-direct {v0, p0, p1}, Lanc;-><init>(Lanb;I)V

    .line 83
    invoke-virtual {v0}, Lanc;->a()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public b(I)I
    .locals 1
    .parameter

    .prologue
    .line 98
    const/16 v0, 0xd

    if-ne p1, v0, :cond_1

    .line 99
    iget-boolean v0, p0, Lanb;->d:Z

    if-nez v0, :cond_0

    .line 100
    const/4 v0, 0x0

    .line 113
    :goto_0
    return v0

    .line 102
    :cond_0
    sget-object v0, Lanb;->a:Lamh;

    invoke-virtual {v0}, Lamh;->l()Lahd;

    move-result-object v0

    invoke-virtual {v0}, Lahd;->g()I

    move-result v0

    .line 103
    rsub-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 107
    :cond_1
    sget-object v0, Lanb;->a:Lamh;

    invoke-virtual {v0}, Lamh;->f()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_2

    .line 108
    sget-object v0, Lanb;->a:Lamh;

    invoke-virtual {v0}, Lamh;->f()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 110
    :cond_2
    sget-object v0, Lanb;->a:Lamh;

    invoke-virtual {v0, p1}, Lamh;->a(I)Lahp;

    move-result-object v0

    invoke-virtual {v0}, Lahp;->g()I

    move-result v0

    goto :goto_0
.end method
