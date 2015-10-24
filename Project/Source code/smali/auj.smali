.class Lauj;
.super Ljava/lang/Object;
.source "CoinsAboutDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Laui;


# direct methods
.method constructor <init>(Laui;)V
    .locals 0
    .parameter

    .prologue
    .line 12
    iput-object p1, p0, Lauj;->a:Laui;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 16
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 17
    sget-object v1, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v1, 0x7f070026

    if-ne v0, v1, :cond_0

    .line 18
    iget-object v0, p0, Lauj;->a:Laui;

    invoke-virtual {v0}, Laui;->dismiss()V

    .line 21
    :cond_0
    return-void
.end method
