.class public Lcom/dianxinos/powermanager/ui/DXSwitchButton;
.super Landroid/widget/TextView;
.source "DXSwitchButton.java"


# static fields
.field private static d:[I


# instance fields
.field private a:Z

.field private b:[I

.field private c:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x2

    new-array v0, v0, [I

    sput-object v0, Lcom/dianxinos/powermanager/ui/DXSwitchButton;->d:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/dianxinos/powermanager/ui/DXSwitchButton;->b:[I

    .line 21
    iput-object p1, p0, Lcom/dianxinos/powermanager/ui/DXSwitchButton;->c:Landroid/content/Context;

    .line 22
    invoke-direct {p0}, Lcom/dianxinos/powermanager/ui/DXSwitchButton;->a()V

    .line 23
    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    .line 26
    iget-object v1, p0, Lcom/dianxinos/powermanager/ui/DXSwitchButton;->c:Landroid/content/Context;

    sget-object v0, Lly;->g:Lcom/dianxinos/dxbs/R$layout;

    const v2, 0x7f030035

    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/DXSwitchButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v1, v2, v0}, Lcom/dianxinos/powermanager/ui/DXSwitchButton;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 27
    return-void
.end method


# virtual methods
.method public getStatus()Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/ui/DXSwitchButton;->a:Z

    return v0
.end method

.method public onFinishInflate()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 31
    invoke-super {p0}, Landroid/widget/TextView;->onFinishInflate()V

    .line 32
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/DXSwitchButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 33
    sget-object v1, Lcom/dianxinos/powermanager/ui/DXSwitchButton;->d:[I

    sget-object v2, Lly;->c:Lcom/dianxinos/dxbs/R$color;

    const v2, 0x7f090023

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    aput v2, v1, v3

    .line 34
    sget-object v1, Lcom/dianxinos/powermanager/ui/DXSwitchButton;->d:[I

    sget-object v2, Lly;->c:Lcom/dianxinos/dxbs/R$color;

    const v2, 0x7f090025

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    aput v0, v1, v4

    .line 36
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/DXSwitchButton;->b:[I

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a00cf

    aput v1, v0, v3

    .line 37
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/DXSwitchButton;->b:[I

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a00d0

    aput v1, v0, v4

    .line 39
    invoke-virtual {p0, v3}, Lcom/dianxinos/powermanager/ui/DXSwitchButton;->setStatus(Z)V

    .line 40
    return-void
.end method

.method public setStatus(Z)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 43
    iput-boolean p1, p0, Lcom/dianxinos/powermanager/ui/DXSwitchButton;->a:Z

    .line 44
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/ui/DXSwitchButton;->a:Z

    if-eqz v0, :cond_0

    .line 45
    sget-object v0, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v0, 0x7f0203e4

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/ui/DXSwitchButton;->setBackgroundResource(I)V

    .line 46
    sget-object v0, Lcom/dianxinos/powermanager/ui/DXSwitchButton;->d:[I

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/ui/DXSwitchButton;->setTextColor(I)V

    .line 47
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/DXSwitchButton;->b:[I

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/ui/DXSwitchButton;->setText(I)V

    .line 53
    :goto_0
    return-void

    .line 49
    :cond_0
    sget-object v0, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v0, 0x7f0203e3

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/ui/DXSwitchButton;->setBackgroundResource(I)V

    .line 50
    sget-object v0, Lcom/dianxinos/powermanager/ui/DXSwitchButton;->d:[I

    aget v0, v0, v2

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/ui/DXSwitchButton;->setTextColor(I)V

    .line 51
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/DXSwitchButton;->b:[I

    aget v0, v0, v2

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/ui/DXSwitchButton;->setText(I)V

    goto :goto_0
.end method
