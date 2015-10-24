.class public Lani;
.super Ljava/lang/Object;
.source "SettingItem.java"


# static fields
.field private static g:[I


# instance fields
.field public a:Landroid/widget/TextView;

.field private b:Landroid/content/Context;

.field private c:I

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x2

    new-array v0, v0, [I

    sput-object v0, Lani;->g:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, -0x2

    iput v0, p0, Lani;->c:I

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZZLjava/lang/String;Landroid/view/View;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lani;->b:Landroid/content/Context;

    .line 36
    iput p2, p0, Lani;->c:I

    .line 37
    iput-boolean p3, p0, Lani;->f:Z

    .line 38
    invoke-direct {p0}, Lani;->d()V

    .line 40
    iput-boolean p4, p0, Lani;->d:Z

    .line 41
    iput-object p5, p0, Lani;->e:Ljava/lang/String;

    .line 42
    check-cast p6, Landroid/widget/TextView;

    iput-object p6, p0, Lani;->a:Landroid/widget/TextView;

    .line 43
    iget-boolean v0, p0, Lani;->f:Z

    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {p0, p4}, Lani;->a(Z)V

    .line 47
    :cond_0
    return-void
.end method

.method private d()V
    .locals 4

    .prologue
    .line 25
    iget-object v0, p0, Lani;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 26
    sget-object v1, Lani;->g:[I

    const/4 v2, 0x0

    sget-object v3, Lly;->c:Lcom/dianxinos/dxbs/R$color;

    const v3, 0x7f090023

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    aput v3, v1, v2

    .line 27
    sget-object v1, Lani;->g:[I

    const/4 v2, 0x1

    sget-object v3, Lly;->c:Lcom/dianxinos/dxbs/R$color;

    const v3, 0x7f090026

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    aput v0, v1, v2

    .line 28
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0
    .parameter

    .prologue
    .line 59
    iput p1, p0, Lani;->c:I

    .line 60
    return-void
.end method

.method public a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lani;->a:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    iput-boolean p1, p0, Lani;->d:Z

    .line 78
    iget-object v0, p0, Lani;->a:Landroid/widget/TextView;

    instance-of v0, v0, Lcom/dianxinos/powermanager/ui/DXSwitchButton;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lani;->a:Landroid/widget/TextView;

    check-cast v0, Lcom/dianxinos/powermanager/ui/DXSwitchButton;

    iget-boolean v1, p0, Lani;->d:Z

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/ui/DXSwitchButton;->setStatus(Z)V

    .line 82
    iget-boolean v0, p0, Lani;->d:Z

    if-nez v0, :cond_2

    .line 83
    const/4 v0, 0x0

    iput v0, p0, Lani;->c:I

    goto :goto_0

    .line 85
    :cond_2
    const/4 v0, 0x1

    iput v0, p0, Lani;->c:I

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lani;->f:Z

    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lani;->c:I

    return v0
.end method

.method public c()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 91
    iget-object v2, p0, Lani;->a:Landroid/widget/TextView;

    if-nez v2, :cond_1

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    iget-object v2, p0, Lani;->a:Landroid/widget/TextView;

    instance-of v2, v2, Lcom/dianxinos/powermanager/ui/DXSwitchButton;

    if-eqz v2, :cond_0

    .line 96
    iget-boolean v2, p0, Lani;->d:Z

    if-ne v2, v0, :cond_2

    .line 97
    iput v1, p0, Lani;->c:I

    .line 101
    :goto_1
    iget-boolean v2, p0, Lani;->d:Z

    if-nez v2, :cond_3

    :goto_2
    iput-boolean v0, p0, Lani;->d:Z

    .line 102
    iget-object v0, p0, Lani;->a:Landroid/widget/TextView;

    check-cast v0, Lcom/dianxinos/powermanager/ui/DXSwitchButton;

    iget-boolean v1, p0, Lani;->d:Z

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/ui/DXSwitchButton;->setStatus(Z)V

    goto :goto_0

    .line 99
    :cond_2
    iput v0, p0, Lani;->c:I

    goto :goto_1

    :cond_3
    move v0, v1

    .line 101
    goto :goto_2
.end method
