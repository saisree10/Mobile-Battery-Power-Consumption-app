.class public Lcom/dianxinos/powermanager/usage/HwPowerUsageDetails;
.super Laao;
.source "HwPowerUsageDetails.java"

# interfaces
.implements Layu;


# instance fields
.field private a:Landroid/view/LayoutInflater;

.field private b:Lato;

.field private c:Lcom/dianxinos/powermanager/ui/MainTitle;

.field private d:Lcom/dianxinos/powermanager/usage/MonitorTitleView;

.field private e:Landroid/view/ViewGroup;

.field private f:Lcom/dianxinos/powermanager/usage/MonitorTitleView;

.field private g:Landroid/view/ViewGroup;

.field private h:Lcom/dianxinos/powermanager/usage/MonitorTitleView;

.field private i:Landroid/view/ViewGroup;

.field private j:Landroid/widget/Button;

.field private k:I

.field private l:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Laao;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/dianxinos/powermanager/usage/HwPowerUsageDetails;)I
    .locals 1
    .parameter

    .prologue
    .line 40
    iget v0, p0, Lcom/dianxinos/powermanager/usage/HwPowerUsageDetails;->k:I

    return v0
.end method

.method private a()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/16 v9, 0x8

    .line 77
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/usage/HwPowerUsageDetails;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 78
    const-string v1, "position"

    invoke-virtual {v0, v1, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/dianxinos/powermanager/usage/HwPowerUsageDetails;->l:I

    .line 79
    const-string v1, "bar_percent"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v5

    .line 86
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/usage/HwPowerUsageDetails;->a:Landroid/view/LayoutInflater;

    .line 87
    invoke-static {p0}, Lato;->a(Landroid/content/Context;)Lato;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/usage/HwPowerUsageDetails;->b:Lato;

    .line 89
    iget-object v0, p0, Lcom/dianxinos/powermanager/usage/HwPowerUsageDetails;->b:Lato;

    invoke-virtual {v0}, Lato;->a()Latr;

    move-result-object v0

    .line 91
    iget-object v0, v0, Latr;->d:Latl;

    iget-object v0, v0, Latl;->g:Ljava/util/ArrayList;

    iget v1, p0, Lcom/dianxinos/powermanager/usage/HwPowerUsageDetails;->l:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Latd;

    .line 93
    iget v1, v0, Latd;->a:I

    iput v1, p0, Lcom/dianxinos/powermanager/usage/HwPowerUsageDetails;->k:I

    .line 95
    sget-object v1, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v1, 0x7f0701b8

    invoke-virtual {p0, v1}, Lcom/dianxinos/powermanager/usage/HwPowerUsageDetails;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 96
    sget-object v1, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v1, 0x7f070014

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 97
    sget-object v2, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v2, 0x7f07001f

    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 98
    sget-object v3, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v3, 0x7f0701b6

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 99
    sget-object v7, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v7, 0x7f0701b5

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 101
    iget v7, p0, Lcom/dianxinos/powermanager/usage/HwPowerUsageDetails;->k:I

    invoke-static {v7}, Latg;->b(I)I

    move-result v7

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 102
    sget-object v7, Layl;->a:[I

    iget v8, p0, Lcom/dianxinos/powermanager/usage/HwPowerUsageDetails;->l:I

    rem-int/lit8 v8, v8, 0x9

    aget v7, v7, v8

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 103
    iget v1, p0, Lcom/dianxinos/powermanager/usage/HwPowerUsageDetails;->k:I

    invoke-static {v1}, Latg;->a(I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    .line 105
    sget-object v1, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v1, 0x7f0701b7

    invoke-virtual {p0, v1}, Lcom/dianxinos/powermanager/usage/HwPowerUsageDetails;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/dianxinos/powermanager/ui/MainTitle;

    iput-object v1, p0, Lcom/dianxinos/powermanager/usage/HwPowerUsageDetails;->c:Lcom/dianxinos/powermanager/ui/MainTitle;

    .line 106
    iget-object v1, p0, Lcom/dianxinos/powermanager/usage/HwPowerUsageDetails;->c:Lcom/dianxinos/powermanager/ui/MainTitle;

    sget-object v2, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v2, 0x7f0a025b

    invoke-virtual {v1, v2}, Lcom/dianxinos/powermanager/ui/MainTitle;->setTitleText(I)V

    .line 107
    iget-object v1, p0, Lcom/dianxinos/powermanager/usage/HwPowerUsageDetails;->c:Lcom/dianxinos/powermanager/ui/MainTitle;

    invoke-virtual {v1}, Lcom/dianxinos/powermanager/ui/MainTitle;->a()V

    .line 108
    iget-object v1, p0, Lcom/dianxinos/powermanager/usage/HwPowerUsageDetails;->c:Lcom/dianxinos/powermanager/ui/MainTitle;

    sget-object v2, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v2, 0x7f020450

    invoke-virtual {v1, v2}, Lcom/dianxinos/powermanager/ui/MainTitle;->setLeftButtonIcon(I)V

    .line 109
    iget-object v1, p0, Lcom/dianxinos/powermanager/usage/HwPowerUsageDetails;->c:Lcom/dianxinos/powermanager/ui/MainTitle;

    new-instance v2, Layp;

    invoke-direct {v2, p0}, Layp;-><init>(Lcom/dianxinos/powermanager/usage/HwPowerUsageDetails;)V

    invoke-virtual {v1, v2}, Lcom/dianxinos/powermanager/ui/MainTitle;->setLeftButtonOnclickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    const-string v1, "%.1f%%"

    new-array v2, v11, [Ljava/lang/Object;

    iget-wide v7, v0, Latd;->e:D

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v2, v10

    invoke-static {v1, v2}, Lazq;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/usage/HwPowerUsageDetails;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v2, 0x7f0201e4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 117
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/usage/HwPowerUsageDetails;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v4, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v4, 0x7f0201e5

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 118
    new-instance v4, Lawc;

    invoke-direct {v4, v1, v2, v5, v6}, Lawc;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;D)V

    .line 119
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 122
    sget-object v1, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v1, 0x7f0701b9

    invoke-virtual {p0, v1}, Lcom/dianxinos/powermanager/usage/HwPowerUsageDetails;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/dianxinos/powermanager/usage/MonitorTitleView;

    iput-object v1, p0, Lcom/dianxinos/powermanager/usage/HwPowerUsageDetails;->d:Lcom/dianxinos/powermanager/usage/MonitorTitleView;

    .line 123
    iget-object v1, p0, Lcom/dianxinos/powermanager/usage/HwPowerUsageDetails;->d:Lcom/dianxinos/powermanager/usage/MonitorTitleView;

    invoke-virtual {v1, p0}, Lcom/dianxinos/powermanager/usage/MonitorTitleView;->setOnClickListener(Layu;)V

    .line 124
    sget-object v1, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v1, 0x7f0701ba

    invoke-virtual {p0, v1}, Lcom/dianxinos/powermanager/usage/HwPowerUsageDetails;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/dianxinos/powermanager/usage/HwPowerUsageDetails;->e:Landroid/view/ViewGroup;

    .line 125
    sget-object v1, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v1, 0x7f0701bb

    invoke-virtual {p0, v1}, Lcom/dianxinos/powermanager/usage/HwPowerUsageDetails;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/dianxinos/powermanager/usage/MonitorTitleView;

    iput-object v1, p0, Lcom/dianxinos/powermanager/usage/HwPowerUsageDetails;->f:Lcom/dianxinos/powermanager/usage/MonitorTitleView;

    .line 126
    iget-object v1, p0, Lcom/dianxinos/powermanager/usage/HwPowerUsageDetails;->f:Lcom/dianxinos/powermanager/usage/MonitorTitleView;

    invoke-virtual {v1, p0}, Lcom/dianxinos/powermanager/usage/MonitorTitleView;->setOnClickListener(Layu;)V

    .line 127
    sget-object v1, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v1, 0x7f0701bc

    invoke-virtual {p0, v1}, Lcom/dianxinos/powermanager/usage/HwPowerUsageDetails;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/dianxinos/powermanager/usage/HwPowerUsageDetails;->g:Landroid/view/ViewGroup;

    .line 128
    sget-object v1, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v1, 0x7f0701bf

    invoke-virtual {p0, v1}, Lcom/dianxinos/powermanager/usage/HwPowerUsageDetails;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/dianxinos/powermanager/usage/MonitorTitleView;

    iput-object v1, p0, Lcom/dianxinos/powermanager/usage/HwPowerUsageDetails;->h:Lcom/dianxinos/powermanager/usage/MonitorTitleView;

    .line 129
    iget-object v1, p0, Lcom/dianxinos/powermanager/usage/HwPowerUsageDetails;->h:Lcom/dianxinos/powermanager/usage/MonitorTitleView;

    invoke-virtual {v1, p0}, Lcom/dianxinos/powermanager/usage/MonitorTitleView;->setOnClickListener(Layu;)V

    .line 130
    sget-object v1, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v1, 0x7f0701c0

    invoke-virtual {p0, v1}, Lcom/dianxinos/powermanager/usage/HwPowerUsageDetails;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/dianxinos/powermanager/usage/HwPowerUsageDetails;->i:Landroid/view/ViewGroup;

    .line 133
    iget-object v1, p0, Lcom/dianxinos/powermanager/usage/HwPowerUsageDetails;->e:Landroid/view/ViewGroup;

    iget-wide v2, v0, Latd;->b:J

    sget-object v4, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v4, 0x7f0a00a8

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/dianxinos/powermanager/usage/HwPowerUsageDetails;->a(Landroid/view/ViewGroup;JI)V

    .line 134
    iget-object v1, p0, Lcom/dianxinos/powermanager/usage/HwPowerUsageDetails;->e:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 135
    iget-object v1, p0, Lcom/dianxinos/powermanager/usage/HwPowerUsageDetails;->d:Lcom/dianxinos/powermanager/usage/MonitorTitleView;

    invoke-virtual {v1, v9}, Lcom/dianxinos/powermanager/usage/MonitorTitleView;->setVisibility(I)V

    .line 136
    iget-object v1, p0, Lcom/dianxinos/powermanager/usage/HwPowerUsageDetails;->e:Landroid/view/ViewGroup;

    invoke-virtual {v1, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 140
    :cond_0
    sget-object v1, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v1, 0x7f0701bd

    invoke-virtual {p0, v1}, Lcom/dianxinos/powermanager/usage/HwPowerUsageDetails;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 141
    sget-object v2, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v2, 0x7f0701be

    invoke-virtual {p0, v2}, Lcom/dianxinos/powermanager/usage/HwPowerUsageDetails;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/dianxinos/powermanager/usage/HwPowerUsageDetails;->j:Landroid/widget/Button;

    .line 142
    iget-object v2, p0, Lcom/dianxinos/powermanager/usage/HwPowerUsageDetails;->j:Landroid/widget/Button;

    new-instance v3, Layq;

    invoke-direct {v3, p0}, Layq;-><init>(Lcom/dianxinos/powermanager/usage/HwPowerUsageDetails;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    iget-object v2, p0, Lcom/dianxinos/powermanager/usage/HwPowerUsageDetails;->j:Landroid/widget/Button;

    sget-object v3, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v3, 0x7f0a00a9

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 149
    iget v2, p0, Lcom/dianxinos/powermanager/usage/HwPowerUsageDetails;->k:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 150
    sget-object v2, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v2, 0x7f0a00aa

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 170
    :cond_1
    :goto_0
    invoke-direct {p0, v0}, Lcom/dianxinos/powermanager/usage/HwPowerUsageDetails;->a(Latd;)V

    .line 172
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f0701c1

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/usage/HwPowerUsageDetails;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 173
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f0701c3

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/usage/HwPowerUsageDetails;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 174
    return-void

    .line 151
    :cond_2
    iget v2, p0, Lcom/dianxinos/powermanager/usage/HwPowerUsageDetails;->k:I

    if-ne v2, v11, :cond_3

    .line 152
    sget-object v2, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v2, 0x7f0a00ab

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 153
    :cond_3
    iget v2, p0, Lcom/dianxinos/powermanager/usage/HwPowerUsageDetails;->k:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4

    .line 154
    sget-object v2, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v2, 0x7f0a00ad

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 155
    :cond_4
    iget v2, p0, Lcom/dianxinos/powermanager/usage/HwPowerUsageDetails;->k:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_5

    .line 156
    sget-object v2, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v2, 0x7f0a00ac

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 157
    :cond_5
    iget v2, p0, Lcom/dianxinos/powermanager/usage/HwPowerUsageDetails;->k:I

    const/16 v3, 0x9

    if-ne v2, v3, :cond_6

    .line 158
    sget-object v2, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v2, 0x7f0a00ae

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 160
    invoke-static {p0}, Lazh;->a(Landroid/content/Context;)Lazh;

    move-result-object v1

    invoke-virtual {v1}, Lazh;->c()I

    move-result v1

    if-nez v1, :cond_1

    .line 161
    iget-object v1, p0, Lcom/dianxinos/powermanager/usage/HwPowerUsageDetails;->j:Landroid/widget/Button;

    invoke-virtual {v1, v9}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 164
    :cond_6
    iget-object v1, p0, Lcom/dianxinos/powermanager/usage/HwPowerUsageDetails;->f:Lcom/dianxinos/powermanager/usage/MonitorTitleView;

    invoke-virtual {v1, v9}, Lcom/dianxinos/powermanager/usage/MonitorTitleView;->setVisibility(I)V

    .line 165
    iget-object v1, p0, Lcom/dianxinos/powermanager/usage/HwPowerUsageDetails;->g:Landroid/view/ViewGroup;

    invoke-virtual {v1, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method private a(I)V
    .locals 2
    .parameter

    .prologue
    .line 323
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 324
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIFI_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 325
    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/usage/HwPowerUsageDetails;->startActivity(Landroid/content/Intent;)V

    .line 347
    :cond_0
    :goto_0
    return-void

    .line 326
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 327
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.DISPLAY_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 328
    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/usage/HwPowerUsageDetails;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 329
    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 330
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.BLUETOOTH_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 331
    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/usage/HwPowerUsageDetails;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 332
    :cond_3
    const/4 v0, 0x7

    if-ne p1, v0, :cond_4

    .line 333
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 334
    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/usage/HwPowerUsageDetails;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 335
    :cond_4
    const/16 v0, 0x9

    if-ne p1, v0, :cond_0

    .line 336
    invoke-static {p0}, Lazh;->a(Landroid/content/Context;)Lazh;

    move-result-object v0

    .line 337
    invoke-virtual {v0}, Lazh;->e()V

    .line 338
    invoke-virtual {v0}, Lazh;->a()I

    move-result v0

    if-nez v0, :cond_5

    .line 339
    sget-object v0, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v0, 0x7f0a007a

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 343
    :cond_5
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dianxinos/powermanager/smart/CpuSelectDialog;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 344
    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/usage/HwPowerUsageDetails;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private a(Landroid/view/ViewGroup;JI)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 177
    const-wide/16 v0, 0x3e8

    div-long v0, p2, v0

    long-to-int v0, v0

    .line 178
    if-nez v0, :cond_0

    .line 179
    const/4 v0, 0x1

    .line 180
    :cond_0
    invoke-static {p0, v0}, Lazq;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 181
    invoke-direct {p0, p1, v0, p4}, Lcom/dianxinos/powermanager/usage/HwPowerUsageDetails;->a(Landroid/view/ViewGroup;Ljava/lang/String;I)V

    .line 182
    return-void
.end method

.method private a(Landroid/view/ViewGroup;Ljava/lang/String;I)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 185
    iget-object v0, p0, Lcom/dianxinos/powermanager/usage/HwPowerUsageDetails;->a:Landroid/view/LayoutInflater;

    sget-object v1, Lly;->g:Lcom/dianxinos/dxbs/R$layout;

    const v1, 0x7f03005e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 186
    sget-object v0, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v0, 0x7f0203d8

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 187
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 189
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f07018b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 190
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(I)V

    .line 191
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070156

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 192
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    return-void
.end method

.method private a(Latd;)V
    .locals 14
    .parameter

    .prologue
    .line 196
    new-instance v7, Layr;

    invoke-direct {v7, p0}, Layr;-><init>(Lcom/dianxinos/powermanager/usage/HwPowerUsageDetails;)V

    .line 209
    invoke-static {p0}, Lath;->a(Landroid/content/Context;)Lath;

    move-result-object v8

    .line 211
    iget-object v0, p1, Latd;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 212
    const/4 v1, 0x0

    .line 213
    const/4 v0, 0x0

    move v5, v0

    move-object v0, v1

    :goto_0
    if-ge v5, v9, :cond_0

    const/16 v1, 0xa

    if-ge v5, v1, :cond_0

    .line 214
    iget-object v1, p1, Latd;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Latl;

    .line 216
    const/4 v3, 0x0

    .line 219
    iget-wide v10, v2, Latl;->e:D

    const-wide v12, 0x3fb99999a0000000L

    cmpg-double v1, v10, v12

    if-gez v1, :cond_3

    .line 252
    :cond_0
    if-eqz v0, :cond_1

    .line 253
    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f0203d7

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 254
    iget-object v0, p0, Lcom/dianxinos/powermanager/usage/HwPowerUsageDetails;->i:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/dianxinos/powermanager/usage/HwPowerUsageDetails;->i:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 256
    :cond_1
    iget-object v0, p0, Lcom/dianxinos/powermanager/usage/HwPowerUsageDetails;->i:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 257
    iget-object v0, p0, Lcom/dianxinos/powermanager/usage/HwPowerUsageDetails;->h:Lcom/dianxinos/powermanager/usage/MonitorTitleView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/usage/MonitorTitleView;->setVisibility(I)V

    .line 258
    iget-object v0, p0, Lcom/dianxinos/powermanager/usage/HwPowerUsageDetails;->i:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 260
    :cond_2
    return-void

    .line 222
    :cond_3
    iget-object v0, p0, Lcom/dianxinos/powermanager/usage/HwPowerUsageDetails;->a:Landroid/view/LayoutInflater;

    sget-object v1, Lly;->g:Lcom/dianxinos/dxbs/R$layout;

    const v1, 0x7f030067

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 223
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070014

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 224
    instance-of v1, v2, Latf;

    if-eqz v1, :cond_4

    move-object v1, v2

    .line 225
    check-cast v1, Latf;

    .line 227
    iget v3, v1, Latf;->a:I

    iget-object v1, v1, Latf;->b:Ljava/lang/String;

    invoke-virtual {v8, v3, v1}, Lath;->a(ILjava/lang/String;)Lati;

    move-result-object v1

    .line 229
    iget-object v4, v1, Lati;->a:Ljava/lang/String;

    .line 230
    iget-object v3, v1, Lati;->b:Ljava/lang/String;

    .line 231
    iget-object v1, v1, Lati;->c:Landroid/graphics/drawable/Drawable;

    .line 240
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 241
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f07001f

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 242
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f0701b5

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 244
    const-string v1, "%.1f%%"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-wide v11, v2, Latl;->e:D

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v4, v10

    invoke-static {v1, v4}, Lazq;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    invoke-virtual {v6, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 247
    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    iget-object v0, p0, Lcom/dianxinos/powermanager/usage/HwPowerUsageDetails;->i:Landroid/view/ViewGroup;

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 250
    iget-object v0, p0, Lcom/dianxinos/powermanager/usage/HwPowerUsageDetails;->i:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lcom/dianxinos/powermanager/usage/HwPowerUsageDetails;->b()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 213
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    move-object v0, v6

    goto/16 :goto_0

    :cond_4
    move-object v1, v2

    .line 233
    check-cast v1, Late;

    .line 235
    iget-object v4, v1, Late;->b:Ljava/lang/String;

    .line 236
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/usage/HwPowerUsageDetails;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    iget v1, v1, Late;->a:I

    invoke-static {v1}, Latg;->b(I)I

    move-result v1

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 237
    sget-object v10, Layl;->a:[I

    iget v11, p0, Lcom/dianxinos/powermanager/usage/HwPowerUsageDetails;->l:I

    rem-int/lit8 v11, v11, 0x9

    aget v10, v10, v11

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1
.end method

.method public static synthetic a(Lcom/dianxinos/powermanager/usage/HwPowerUsageDetails;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/dianxinos/powermanager/usage/HwPowerUsageDetails;->a(I)V

    return-void
.end method

.method private b()Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 263
    const/4 v0, 0x1

    invoke-static {p0, v0}, Liq;->a(Landroid/content/Context;I)I

    move-result v0

    .line 264
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 266
    invoke-virtual {v1, v0, v4, v0, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 268
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 269
    sget-object v2, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v2, 0x7f0203e1

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 270
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 272
    return-object v0
.end method


# virtual methods
.method public a(Lcom/dianxinos/powermanager/usage/MonitorTitleView;)V
    .locals 4
    .parameter

    .prologue
    const/16 v2, 0x8

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 352
    iget-object v3, p0, Lcom/dianxinos/powermanager/usage/HwPowerUsageDetails;->d:Lcom/dianxinos/powermanager/usage/MonitorTitleView;

    if-ne p1, v3, :cond_3

    .line 353
    iget-object v3, p0, Lcom/dianxinos/powermanager/usage/HwPowerUsageDetails;->e:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    .line 354
    :goto_0
    iget-object v3, p0, Lcom/dianxinos/powermanager/usage/HwPowerUsageDetails;->e:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    move v1, v2

    :cond_0
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 362
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v1

    .line 353
    goto :goto_0

    .line 355
    :cond_3
    iget-object v3, p0, Lcom/dianxinos/powermanager/usage/HwPowerUsageDetails;->f:Lcom/dianxinos/powermanager/usage/MonitorTitleView;

    if-ne p1, v3, :cond_6

    .line 356
    iget-object v3, p0, Lcom/dianxinos/powermanager/usage/HwPowerUsageDetails;->g:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v3

    if-nez v3, :cond_4

    .line 357
    :goto_2
    iget-object v3, p0, Lcom/dianxinos/powermanager/usage/HwPowerUsageDetails;->g:Landroid/view/ViewGroup;

    if-eqz v0, :cond_5

    :goto_3
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1

    :cond_4
    move v0, v1

    .line 356
    goto :goto_2

    :cond_5
    move v2, v1

    .line 357
    goto :goto_3

    .line 358
    :cond_6
    iget-object v3, p0, Lcom/dianxinos/powermanager/usage/HwPowerUsageDetails;->h:Lcom/dianxinos/powermanager/usage/MonitorTitleView;

    if-ne p1, v3, :cond_1

    .line 359
    iget-object v3, p0, Lcom/dianxinos/powermanager/usage/HwPowerUsageDetails;->i:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v3

    if-nez v3, :cond_7

    .line 360
    :goto_4
    iget-object v3, p0, Lcom/dianxinos/powermanager/usage/HwPowerUsageDetails;->i:Landroid/view/ViewGroup;

    if-eqz v0, :cond_8

    :goto_5
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1

    :cond_7
    move v0, v1

    .line 359
    goto :goto_4

    :cond_8
    move v2, v1

    .line 360
    goto :goto_5
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    .line 65
    invoke-super {p0, p1}, Laao;->onCreate(Landroid/os/Bundle;)V

    .line 66
    sget-object v0, Lly;->g:Lcom/dianxinos/dxbs/R$layout;

    const v0, 0x7f030064

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/usage/HwPowerUsageDetails;->setContentView(I)V

    .line 69
    :try_start_0
    invoke-direct {p0}, Lcom/dianxinos/powermanager/usage/HwPowerUsageDetails;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :goto_0
    return-void

    .line 70
    :catch_0
    move-exception v0

    .line 71
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/usage/HwPowerUsageDetails;->finish()V

    .line 72
    const-string v1, "HwPowerUsageDetails"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Process killed??? Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lazt;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 318
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dianxinos/powermanager/usage/HwPowerUsageDetails;->b:Lato;

    .line 319
    invoke-super {p0}, Laao;->onDestroy()V

    .line 320
    return-void
.end method

.method protected onResume()V
    .locals 10

    .prologue
    const v9, 0x7f0700ed

    const/16 v8, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 277
    invoke-super {p0}, Laao;->onResume()V

    .line 281
    iget-object v0, p0, Lcom/dianxinos/powermanager/usage/HwPowerUsageDetails;->i:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    move v5, v2

    move v4, v1

    .line 282
    :goto_0
    if-ge v5, v6, :cond_3

    .line 283
    iget-object v0, p0, Lcom/dianxinos/powermanager/usage/HwPowerUsageDetails;->i:Landroid/view/ViewGroup;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 284
    instance-of v0, v3, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    move v0, v4

    .line 282
    :goto_1
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    move v4, v0

    goto :goto_0

    .line 287
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 289
    if-eqz v0, :cond_7

    .line 290
    invoke-static {p0, v0}, Lazy;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/dianxinos/powermanager/usage/HwPowerUsageDetails;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lazf;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 294
    :goto_2
    invoke-virtual {v3, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 295
    invoke-virtual {v3, v0}, Landroid/view/View;->setClickable(Z)V

    .line 296
    sget-object v7, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    if-eqz v0, :cond_2

    move v3, v2

    :goto_3
    invoke-virtual {v7, v3}, Landroid/view/View;->setVisibility(I)V

    .line 299
    if-eqz v0, :cond_6

    move v0, v2

    .line 300
    goto :goto_1

    :cond_1
    move v0, v2

    .line 290
    goto :goto_2

    .line 296
    :cond_2
    const/4 v3, 0x4

    goto :goto_3

    .line 304
    :cond_3
    if-eqz v4, :cond_5

    .line 305
    :goto_4
    if-ge v2, v6, :cond_5

    .line 306
    iget-object v0, p0, Lcom/dianxinos/powermanager/usage/HwPowerUsageDetails;->i:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 307
    instance-of v1, v0, Landroid/widget/ImageView;

    if-eqz v1, :cond_4

    .line 308
    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 305
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 311
    :cond_4
    sget-object v1, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    .line 314
    :cond_5
    return-void

    :cond_6
    move v0, v4

    goto :goto_1

    :cond_7
    move v0, v2

    goto :goto_2
.end method
