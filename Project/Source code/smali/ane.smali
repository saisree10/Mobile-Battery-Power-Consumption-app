.class public Lane;
.super Landroid/os/Handler;
.source "ModeTipsHandler.java"


# instance fields
.field public a:Landroid/content/Context;

.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 19
    iput-object p1, p0, Lane;->a:Landroid/content/Context;

    .line 20
    iput p2, p0, Lane;->b:I

    .line 21
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 30
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v5, :cond_0

    .line 31
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lanf;

    .line 32
    iget-object v1, p0, Lane;->a:Landroid/content/Context;

    sget-object v2, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v2, 0x7f0a00f4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 33
    iget-boolean v2, v0, Lanf;->a:Z

    if-nez v2, :cond_3

    .line 34
    iget v1, v0, Lanf;->b:I

    iget v2, p0, Lane;->b:I

    if-ne v1, v2, :cond_1

    .line 35
    iget-object v0, p0, Lane;->a:Landroid/content/Context;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a00f5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 50
    :goto_0
    iget-object v1, p0, Lane;->a:Landroid/content/Context;

    invoke-static {v1, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 53
    :cond_0
    return-void

    .line 37
    :cond_1
    iget v1, v0, Lanf;->b:I

    iget v2, p0, Lane;->b:I

    if-le v1, v2, :cond_2

    .line 38
    iget v1, v0, Lanf;->b:I

    iget v2, p0, Lane;->b:I

    sub-int/2addr v1, v2

    .line 39
    iget-object v2, p0, Lane;->a:Landroid/content/Context;

    invoke-static {v2, v1}, Lazq;->c(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 40
    iget-object v2, p0, Lane;->a:Landroid/content/Context;

    sget-object v3, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v3, 0x7f0a00f6

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v1, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 41
    iget v0, v0, Lanf;->b:I

    iput v0, p0, Lane;->b:I

    move-object v0, v1

    .line 42
    goto :goto_0

    .line 44
    :cond_2
    iget v1, p0, Lane;->b:I

    iget v2, v0, Lanf;->b:I

    sub-int/2addr v1, v2

    .line 45
    iget-object v2, p0, Lane;->a:Landroid/content/Context;

    invoke-static {v2, v1}, Lazq;->c(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 46
    iget-object v2, p0, Lane;->a:Landroid/content/Context;

    sget-object v3, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v3, 0x7f0a00f7

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v1, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 47
    iget v0, v0, Lanf;->b:I

    iput v0, p0, Lane;->b:I

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method
