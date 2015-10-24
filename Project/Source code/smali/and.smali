.class public Land;
.super Ljava/lang/Object;
.source "ModeSwitcher.java"


# static fields
.field private static e:Land;


# instance fields
.field private a:Lamh;

.field private b:Lamp;

.field private c:Landroid/content/Context;

.field private d:Z

.field private f:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Land;->c:Landroid/content/Context;

    .line 36
    invoke-static {p1}, Lamp;->a(Landroid/content/Context;)Lamp;

    move-result-object v0

    iput-object v0, p0, Land;->b:Lamp;

    .line 37
    iget-object v0, p0, Land;->b:Lamp;

    invoke-virtual {v0}, Lamp;->g()Lamh;

    move-result-object v0

    iput-object v0, p0, Land;->a:Lamh;

    .line 38
    return-void
.end method

.method public static a(Landroid/content/Context;)Land;
    .locals 2
    .parameter

    .prologue
    .line 24
    sget-object v0, Land;->e:Land;

    if-nez v0, :cond_1

    .line 25
    const-class v1, Land;

    monitor-enter v1

    .line 26
    :try_start_0
    sget-object v0, Land;->e:Land;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Land;

    invoke-direct {v0, p0}, Land;-><init>(Landroid/content/Context;)V

    sput-object v0, Land;->e:Land;

    .line 29
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    :cond_1
    sget-object v0, Land;->e:Land;

    return-object v0

    .line 29
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private b()Z
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Land;->a:Lamh;

    invoke-virtual {v0}, Lamh;->g()V

    .line 74
    iget-object v0, p0, Land;->b:Lamp;

    invoke-virtual {v0}, Lamp;->b()I

    move-result v0

    iput v0, p0, Land;->f:I

    .line 75
    iget-object v0, p0, Land;->a:Lamh;

    iget-object v1, p0, Land;->b:Lamp;

    invoke-virtual {v1}, Lamp;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lamh;->c(I)V

    .line 76
    iget-object v0, p0, Land;->a:Lamh;

    invoke-virtual {v0}, Lamh;->h()Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Land;->d:Z

    .line 81
    :goto_0
    iget-boolean v0, p0, Land;->d:Z

    return v0

    .line 79
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Land;->d:Z

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 68
    iget-object v0, p0, Land;->c:Landroid/content/Context;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a00f4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 69
    iget-object v1, p0, Land;->c:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 70
    return-void
.end method

.method public a(II)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-direct {p0}, Land;->b()Z

    .line 46
    iget v0, p0, Land;->f:I

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Land;->d:Z

    if-nez v0, :cond_0

    .line 47
    const/4 v0, 0x0

    .line 54
    :goto_0
    return v0

    .line 50
    :cond_0
    iget-object v0, p0, Land;->b:Lamp;

    invoke-virtual {v0, p1}, Lamp;->a(I)V

    .line 51
    iget-object v0, p0, Land;->a:Lamh;

    iget-boolean v1, p0, Land;->d:Z

    invoke-virtual {v0, v1}, Lamh;->a(Z)V

    .line 52
    iget-object v0, p0, Land;->a:Lamh;

    invoke-virtual {v0, p1}, Lamh;->c(I)V

    .line 53
    iget-object v0, p0, Land;->a:Lamh;

    invoke-virtual {v0, p1, p2}, Lamh;->a(II)Z

    .line 54
    const/4 v0, 0x1

    goto :goto_0
.end method
