.class public Laui;
.super Lauu;
.source "CoinsAboutDialog.java"


# instance fields
.field private c:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lauu;-><init>(Landroid/content/Context;)V

    .line 12
    new-instance v0, Lauj;

    invoke-direct {v0, p0}, Lauj;-><init>(Laui;)V

    iput-object v0, p0, Laui;->c:Landroid/view/View$OnClickListener;

    .line 26
    invoke-virtual {p0}, Laui;->h()V

    .line 27
    invoke-virtual {p0}, Laui;->i()V

    .line 28
    invoke-virtual {p0}, Laui;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget-object v1, Lly;->g:Lcom/dianxinos/dxbs/R$layout;

    const v1, 0x7f030019

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 29
    sget-object v1, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v1, 0x7f070026

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 30
    iget-object v2, p0, Laui;->c:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    invoke-virtual {p0, v0}, Laui;->b(Landroid/view/View;)V

    .line 33
    return-void
.end method
