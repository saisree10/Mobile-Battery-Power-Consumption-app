.class public abstract Lrc;
.super Landroid/support/v4/app/Fragment;
.source "DxFragment.java"


# instance fields
.field public a:I

.field protected b:Landroid/app/Activity;

.field protected c:Landroid/content/res/Resources;

.field protected d:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 15
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 20
    iput-object v0, p0, Lrc;->b:Landroid/app/Activity;

    .line 21
    iput-object v0, p0, Lrc;->c:Landroid/content/res/Resources;

    return-void
.end method


# virtual methods
.method protected a(I)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lrc;->d:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public a_()V
    .locals 0

    .prologue
    .line 50
    return-void
.end method

.method public b_()V
    .locals 0

    .prologue
    .line 57
    return-void
.end method

.method public d()V
    .locals 0

    .prologue
    .line 64
    return-void
.end method

.method public e()V
    .locals 0

    .prologue
    .line 72
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .parameter

    .prologue
    .line 26
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 27
    iput-object p1, p0, Lrc;->b:Landroid/app/Activity;

    .line 28
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lrc;->c:Landroid/content/res/Resources;

    .line 29
    return-void
.end method

.method public onDetach()V
    .locals 0

    .prologue
    .line 33
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 35
    return-void
.end method
