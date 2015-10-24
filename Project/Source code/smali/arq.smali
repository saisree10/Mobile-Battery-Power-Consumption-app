.class Larq;
.super Ljava/lang/Object;
.source "ScreenReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Larp;


# direct methods
.method constructor <init>(Larp;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Larq;->c:Larp;

    iput-object p2, p0, Larq;->a:Landroid/content/Context;

    iput-object p3, p0, Larq;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 35
    iget-object v0, p0, Larq;->a:Landroid/content/Context;

    invoke-static {v0}, Lazh;->a(Landroid/content/Context;)Lazh;

    move-result-object v3

    .line 36
    invoke-virtual {v3}, Lazh;->e()V

    .line 37
    invoke-virtual {v3}, Lazh;->a()I

    move-result v0

    if-gtz v0, :cond_1

    .line 38
    const-string v0, "CpuSettingsScreenReceiver"

    const-string v1, "cpu not found"

    invoke-static {v0, v1}, Lazt;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 42
    :cond_1
    invoke-static {}, Lazf;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v3}, Lazh;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 44
    const v0, 0x668a0

    invoke-static {v0}, Larp;->a(I)I

    .line 47
    :cond_2
    iget-object v0, p0, Larq;->b:Ljava/lang/String;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 48
    invoke-virtual {v3, v2}, Lazh;->b(I)I

    move-result v4

    .line 49
    invoke-virtual {v3, v2}, Lazh;->b(I)I

    move-result v1

    .line 50
    invoke-static {}, Larp;->a()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 51
    invoke-virtual {v3, v2}, Lazh;->e(I)Ljava/util/ArrayList;

    move-result-object v5

    .line 52
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 53
    const/4 v0, 0x1

    move v2, v0

    :goto_1
    if-ge v2, v6, :cond_5

    .line 54
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {}, Larp;->a()I

    move-result v7

    if-lt v0, v7, :cond_3

    .line 55
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 61
    :goto_2
    invoke-virtual {v3, v4, v0}, Lazh;->b(II)Z

    goto :goto_0

    .line 53
    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 64
    :cond_4
    iget-object v0, p0, Larq;->b:Ljava/lang/String;

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {v3}, Lazh;->f()Z

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_2
.end method
