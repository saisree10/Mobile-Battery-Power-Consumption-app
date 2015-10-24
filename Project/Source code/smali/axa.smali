.class public Laxa;
.super Ljava/lang/Object;
.source "ToastShower.java"


# static fields
.field private static a:Laxa;


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Laxa;->b:Landroid/content/Context;

    .line 15
    return-void
.end method

.method public static a(Landroid/content/Context;)Laxa;
    .locals 2
    .parameter

    .prologue
    .line 18
    sget-object v0, Laxa;->a:Laxa;

    if-nez v0, :cond_1

    .line 19
    const-class v1, Laxa;

    monitor-enter v1

    .line 20
    :try_start_0
    sget-object v0, Laxa;->a:Laxa;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Laxa;

    invoke-direct {v0, p0}, Laxa;-><init>(Landroid/content/Context;)V

    sput-object v0, Laxa;->a:Laxa;

    .line 23
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    :cond_1
    sget-object v0, Laxa;->a:Laxa;

    return-object v0

    .line 23
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 29
    iget-object v0, p0, Laxa;->b:Landroid/content/Context;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0109

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 30
    return-void
.end method
