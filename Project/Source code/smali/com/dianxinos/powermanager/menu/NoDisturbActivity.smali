.class public Lcom/dianxinos/powermanager/menu/NoDisturbActivity;
.super Laao;
.source "NoDisturbActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lawz;


# instance fields
.field private a:Lamb;

.field private b:Lcom/dianxinos/powermanager/ui/DXSwitchButton;

.field private c:Lcom/dianxinos/powermanager/ui/TimePickerView;

.field private d:Lcom/dianxinos/powermanager/ui/TimePickerView;

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:Z

.field private j:Landroid/view/View;

.field private k:Lcom/dianxinos/powermanager/ui/MainTitle;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Laao;-><init>()V

    return-void
.end method

.method private static a(II)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/16 v3, 0xa

    const/4 v2, 0x0

    .line 139
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 140
    if-ge p0, v3, :cond_0

    .line 141
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 143
    :cond_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 144
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 145
    if-ge p1, v3, :cond_1

    .line 146
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 148
    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 149
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 127
    invoke-static {p0}, Lamb;->a(Landroid/content/Context;)Lamb;

    move-result-object v0

    .line 128
    invoke-virtual {v0}, Lamb;->n()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 129
    invoke-virtual {v0}, Lamb;->o()[I

    move-result-object v0

    .line 130
    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0371

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aget v3, v0, v5

    div-int/lit8 v3, v3, 0x64

    aget v4, v0, v5

    rem-int/lit8 v4, v4, 0x64

    invoke-static {v3, v4}, Lcom/dianxinos/powermanager/menu/NoDisturbActivity;->a(II)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aget v3, v0, v6

    div-int/lit8 v3, v3, 0x64

    aget v0, v0, v6

    rem-int/lit8 v0, v0, 0x64

    invoke-static {v3, v0}, Lcom/dianxinos/powermanager/menu/NoDisturbActivity;->a(II)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v6

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 134
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v0, 0x7f0a00d0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 106
    if-eqz p1, :cond_0

    .line 107
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/NoDisturbActivity;->b:Lcom/dianxinos/powermanager/ui/DXSwitchButton;

    invoke-virtual {v0, p1}, Lcom/dianxinos/powermanager/ui/DXSwitchButton;->setStatus(Z)V

    .line 108
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/NoDisturbActivity;->j:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 113
    :goto_0
    return-void

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/NoDisturbActivity;->b:Lcom/dianxinos/powermanager/ui/DXSwitchButton;

    invoke-virtual {v0, p1}, Lcom/dianxinos/powermanager/ui/DXSwitchButton;->setStatus(Z)V

    .line 111
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/NoDisturbActivity;->j:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/dianxinos/powermanager/ui/TimePickerView;II)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 88
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/NoDisturbActivity;->c:Lcom/dianxinos/powermanager/ui/TimePickerView;

    if-ne v0, p1, :cond_0

    .line 89
    iput p2, p0, Lcom/dianxinos/powermanager/menu/NoDisturbActivity;->e:I

    .line 90
    iput p3, p0, Lcom/dianxinos/powermanager/menu/NoDisturbActivity;->f:I

    .line 96
    :goto_0
    return-void

    .line 93
    :cond_0
    iput p2, p0, Lcom/dianxinos/powermanager/menu/NoDisturbActivity;->g:I

    .line 94
    iput p3, p0, Lcom/dianxinos/powermanager/menu/NoDisturbActivity;->h:I

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 83
    invoke-super {p0}, Laao;->onBackPressed()V

    .line 84
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 117
    iget-object v1, p0, Lcom/dianxinos/powermanager/menu/NoDisturbActivity;->b:Lcom/dianxinos/powermanager/ui/DXSwitchButton;

    if-ne p1, v1, :cond_2

    .line 118
    iget-boolean v1, p0, Lcom/dianxinos/powermanager/menu/NoDisturbActivity;->i:Z

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/dianxinos/powermanager/menu/NoDisturbActivity;->i:Z

    .line 119
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/menu/NoDisturbActivity;->i:Z

    invoke-direct {p0, v0}, Lcom/dianxinos/powermanager/menu/NoDisturbActivity;->a(Z)V

    .line 120
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/NoDisturbActivity;->a:Lamb;

    iget-boolean v1, p0, Lcom/dianxinos/powermanager/menu/NoDisturbActivity;->i:Z

    invoke-virtual {v0, v1}, Lamb;->l(Z)V

    .line 124
    :cond_1
    :goto_0
    return-void

    .line 121
    :cond_2
    iget-object v1, p0, Lcom/dianxinos/powermanager/menu/NoDisturbActivity;->j:Landroid/view/View;

    if-ne p1, v1, :cond_1

    .line 122
    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0156

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 40
    invoke-super {p0, p1}, Laao;->onCreate(Landroid/os/Bundle;)V

    .line 41
    sget-object v0, Lly;->g:Lcom/dianxinos/dxbs/R$layout;

    const v0, 0x7f030074

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/menu/NoDisturbActivity;->setContentView(I)V

    .line 42
    invoke-static {p0}, Lamb;->a(Landroid/content/Context;)Lamb;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/menu/NoDisturbActivity;->a:Lamb;

    .line 43
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070007

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/menu/NoDisturbActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/powermanager/ui/MainTitle;

    iput-object v0, p0, Lcom/dianxinos/powermanager/menu/NoDisturbActivity;->k:Lcom/dianxinos/powermanager/ui/MainTitle;

    .line 44
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/NoDisturbActivity;->k:Lcom/dianxinos/powermanager/ui/MainTitle;

    sget-object v1, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v1, 0x7f070135

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/ui/MainTitle;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/powermanager/ui/DXSwitchButton;

    iput-object v0, p0, Lcom/dianxinos/powermanager/menu/NoDisturbActivity;->b:Lcom/dianxinos/powermanager/ui/DXSwitchButton;

    .line 45
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/NoDisturbActivity;->b:Lcom/dianxinos/powermanager/ui/DXSwitchButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/ui/DXSwitchButton;->setVisibility(I)V

    .line 46
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/NoDisturbActivity;->b:Lcom/dianxinos/powermanager/ui/DXSwitchButton;

    invoke-virtual {v0, p0}, Lcom/dianxinos/powermanager/ui/DXSwitchButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f07001d

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/menu/NoDisturbActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/menu/NoDisturbActivity;->j:Landroid/view/View;

    .line 49
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/NoDisturbActivity;->j:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/NoDisturbActivity;->a:Lamb;

    invoke-virtual {v0}, Lamb;->n()Z

    move-result v0

    iput-boolean v0, p0, Lcom/dianxinos/powermanager/menu/NoDisturbActivity;->i:Z

    .line 53
    return-void
.end method

.method protected onPause()V
    .locals 4

    .prologue
    .line 100
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/NoDisturbActivity;->a:Lamb;

    iget v1, p0, Lcom/dianxinos/powermanager/menu/NoDisturbActivity;->e:I

    mul-int/lit8 v1, v1, 0x64

    iget v2, p0, Lcom/dianxinos/powermanager/menu/NoDisturbActivity;->f:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/dianxinos/powermanager/menu/NoDisturbActivity;->g:I

    mul-int/lit8 v2, v2, 0x64

    iget v3, p0, Lcom/dianxinos/powermanager/menu/NoDisturbActivity;->h:I

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lamb;->a(II)V

    .line 102
    invoke-super {p0}, Laao;->onPause()V

    .line 103
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 57
    invoke-super {p0}, Laao;->onResume()V

    .line 58
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/NoDisturbActivity;->k:Lcom/dianxinos/powermanager/ui/MainTitle;

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f020450

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/ui/MainTitle;->setLeftButtonIcon(I)V

    .line 59
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/NoDisturbActivity;->k:Lcom/dianxinos/powermanager/ui/MainTitle;

    new-instance v1, Lalz;

    invoke-direct {v1, p0}, Lalz;-><init>(Lcom/dianxinos/powermanager/menu/NoDisturbActivity;)V

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/ui/MainTitle;->setLeftButtonOnclickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/NoDisturbActivity;->a:Lamb;

    invoke-virtual {v0}, Lamb;->o()[I

    move-result-object v0

    .line 67
    aget v1, v0, v2

    div-int/lit8 v1, v1, 0x64

    iput v1, p0, Lcom/dianxinos/powermanager/menu/NoDisturbActivity;->e:I

    .line 68
    aget v1, v0, v2

    rem-int/lit8 v1, v1, 0x64

    iput v1, p0, Lcom/dianxinos/powermanager/menu/NoDisturbActivity;->f:I

    .line 69
    aget v1, v0, v3

    div-int/lit8 v1, v1, 0x64

    iput v1, p0, Lcom/dianxinos/powermanager/menu/NoDisturbActivity;->g:I

    .line 70
    aget v0, v0, v3

    rem-int/lit8 v0, v0, 0x64

    iput v0, p0, Lcom/dianxinos/powermanager/menu/NoDisturbActivity;->h:I

    .line 72
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f0701e2

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/menu/NoDisturbActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/powermanager/ui/TimePickerView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/menu/NoDisturbActivity;->c:Lcom/dianxinos/powermanager/ui/TimePickerView;

    .line 73
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/NoDisturbActivity;->c:Lcom/dianxinos/powermanager/ui/TimePickerView;

    invoke-virtual {v0, p0}, Lcom/dianxinos/powermanager/ui/TimePickerView;->setListener(Lawz;)V

    .line 74
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/NoDisturbActivity;->c:Lcom/dianxinos/powermanager/ui/TimePickerView;

    iget v1, p0, Lcom/dianxinos/powermanager/menu/NoDisturbActivity;->e:I

    iget v2, p0, Lcom/dianxinos/powermanager/menu/NoDisturbActivity;->f:I

    invoke-virtual {v0, v1, v2}, Lcom/dianxinos/powermanager/ui/TimePickerView;->a(II)V

    .line 75
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f0701e5

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/menu/NoDisturbActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/powermanager/ui/TimePickerView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/menu/NoDisturbActivity;->d:Lcom/dianxinos/powermanager/ui/TimePickerView;

    .line 76
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/NoDisturbActivity;->d:Lcom/dianxinos/powermanager/ui/TimePickerView;

    invoke-virtual {v0, p0}, Lcom/dianxinos/powermanager/ui/TimePickerView;->setListener(Lawz;)V

    .line 77
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/NoDisturbActivity;->d:Lcom/dianxinos/powermanager/ui/TimePickerView;

    iget v1, p0, Lcom/dianxinos/powermanager/menu/NoDisturbActivity;->g:I

    iget v2, p0, Lcom/dianxinos/powermanager/menu/NoDisturbActivity;->h:I

    invoke-virtual {v0, v1, v2}, Lcom/dianxinos/powermanager/ui/TimePickerView;->a(II)V

    .line 78
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/menu/NoDisturbActivity;->i:Z

    invoke-direct {p0, v0}, Lcom/dianxinos/powermanager/menu/NoDisturbActivity;->a(Z)V

    .line 79
    return-void
.end method
