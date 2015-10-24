.class public Laqo;
.super Laqf;
.source "SkinShopAdapter.java"


# instance fields
.field final synthetic a:Laqj;

.field private b:Landroid/content/Context;

.field private c:I


# direct methods
.method public constructor <init>(Laqj;Landroid/content/Context;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Laqo;->a:Laqj;

    invoke-direct {p0}, Laqf;-><init>()V

    .line 41
    iput-object p2, p0, Laqo;->b:Landroid/content/Context;

    .line 42
    iput p3, p0, Laqo;->c:I

    .line 43
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0
    .parameter

    .prologue
    .line 47
    iput p1, p0, Laqo;->c:I

    .line 48
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Laqo;->a:Laqj;

    invoke-static {v0}, Laqj;->a(Laqj;)Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;

    move-result-object v0

    invoke-static {v0}, Lbal;->h(Landroid/content/Context;)V

    .line 53
    iget-object v0, p0, Laqo;->a:Laqj;

    invoke-static {v0}, Laqj;->b(Laqj;)Ladp;

    move-result-object v1

    iget v0, p0, Laqo;->c:I

    if-nez v0, :cond_0

    const-string v0, "dt"

    :goto_0
    invoke-virtual {v1, v0}, Ladp;->a(Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Laqo;->a:Laqj;

    invoke-static {v0}, Laqj;->b(Laqj;)Ladp;

    move-result-object v0

    iget v1, p0, Laqo;->c:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ladp;->a(I)V

    .line 57
    iget-object v0, p0, Laqo;->b:Landroid/content/Context;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a02bd

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 58
    iget-object v0, p0, Laqo;->a:Laqj;

    invoke-virtual {v0}, Laqj;->a()V

    .line 59
    iget-object v0, p0, Laqo;->b:Landroid/content/Context;

    invoke-static {v0}, Lbc;->a(Landroid/content/Context;)Lbc;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "use_default_skin"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lbc;->a(Landroid/content/Intent;)Z

    .line 61
    return-void

    .line 53
    :cond_0
    const-string v0, "pt_"

    goto :goto_0
.end method
