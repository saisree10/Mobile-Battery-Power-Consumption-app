.class public Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;
.super Laao;
.source "AppPowerUsageDetails.java"

# interfaces
.implements Layu;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/view/LayoutInflater;

.field private c:Ljava/lang/String;

.field private d:Lcom/dianxinos/powermanager/ui/MainTitle;

.field private e:Lcom/dianxinos/powermanager/usage/MonitorTitleView;

.field private f:Landroid/view/ViewGroup;

.field private g:Lcom/dianxinos/powermanager/usage/MonitorTitleView;

.field private h:Landroid/view/ViewGroup;

.field private i:Lcom/dianxinos/powermanager/usage/MonitorTitleView;

.field private j:Landroid/view/ViewGroup;

.field private k:Lcom/dianxinos/powermanager/usage/MonitorTitleView;

.field private l:Landroid/view/ViewGroup;

.field private m:Lcom/dianxinos/powermanager/usage/MonitorTitleView;

.field private n:Landroid/view/ViewGroup;

.field private o:Landroid/widget/Button;

.field private p:Z

.field private q:D

.field private r:Z

.field private s:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Laao;-><init>()V

    return-void
.end method

.method private a(D)D
    .locals 4
    .parameter

    .prologue
    .line 386
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;->r:Z

    if-eqz v0, :cond_0

    .line 387
    const-wide/high16 v0, 0x4059

    iget-wide v2, p0, Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;->s:D

    sub-double/2addr v0, v2

    div-double v0, p1, v0

    iget-wide v2, p0, Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;->s:D

    mul-double/2addr v0, v2

    add-double/2addr v0, p1

    .line 391
    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;->q:D

    mul-double/2addr v0, p1

    goto :goto_0
.end method

.method private a(Landroid/view/ViewGroup;Ljava/lang/String;I)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 302
    iget-object v0, p0, Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;->b:Landroid/view/LayoutInflater;

    sget-object v1, Lly;->g:Lcom/dianxinos/dxbs/R$layout;

    const v1, 0x7f03005e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 303
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 305
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f07018b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 306
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(I)V

    .line 307
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070156

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 308
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 310
    return-object v1
.end method

.method public static synthetic a(Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;->c:Ljava/lang/String;

    return-object v0
.end method

.method private a()V
    .locals 12

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 101
    const-string v1, "recent"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 102
    const-string v2, "position"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 103
    const-string v3, "bar_percent"

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v7

    .line 104
    const-string v3, "growth_rate"

    const-wide/high16 v4, 0x3ff0

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v3

    iput-wide v3, p0, Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;->q:D

    .line 105
    const-string v3, "only_has_system"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;->r:Z

    .line 106
    const-string v3, "commu_module_percent"

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v3

    iput-wide v3, p0, Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;->s:D

    .line 107
    const-string v3, "bg"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 108
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v4, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v4, 0x7f0a006c

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;->a:Ljava/lang/String;

    .line 117
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;->b:Landroid/view/LayoutInflater;

    .line 120
    if-eqz v1, :cond_3

    .line 121
    invoke-static {p0}, Latm;->a(Landroid/content/Context;)Latm;

    move-result-object v0

    invoke-virtual {v0}, Latm;->c()Lats;

    move-result-object v0

    .line 129
    :goto_0
    if-eqz v3, :cond_4

    .line 130
    iget-object v0, v0, Lats;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Latu;

    .line 131
    iget-wide v1, v0, Latu;->w:D

    move-wide v4, v1

    move-object v6, v0

    .line 137
    :goto_1
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f0701b8

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 138
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070014

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 139
    sget-object v1, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v1, 0x7f07001f

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 140
    sget-object v2, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v2, 0x7f0701b6

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 141
    sget-object v9, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v9, 0x7f0701b5

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 143
    invoke-static {p0}, Lath;->a(Landroid/content/Context;)Lath;

    move-result-object v9

    .line 144
    iget v10, v6, Latu;->a:I

    iget-object v11, v6, Latu;->b:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Lath;->a(ILjava/lang/String;)Lati;

    move-result-object v10

    .line 146
    iget-object v11, v10, Lati;->b:Ljava/lang/String;

    iput-object v11, p0, Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;->c:Ljava/lang/String;

    .line 148
    iget-object v11, v10, Lati;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 149
    iget-object v0, v10, Lati;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f0701b7

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/powermanager/ui/MainTitle;

    iput-object v0, p0, Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;->d:Lcom/dianxinos/powermanager/ui/MainTitle;

    .line 152
    iget-object v0, p0, Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;->d:Lcom/dianxinos/powermanager/ui/MainTitle;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a025b

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/ui/MainTitle;->setTitleText(I)V

    .line 153
    iget-object v0, p0, Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;->d:Lcom/dianxinos/powermanager/ui/MainTitle;

    invoke-virtual {v0}, Lcom/dianxinos/powermanager/ui/MainTitle;->a()V

    .line 154
    iget-object v0, p0, Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;->d:Lcom/dianxinos/powermanager/ui/MainTitle;

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f020450

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/ui/MainTitle;->setLeftButtonIcon(I)V

    .line 155
    iget-object v0, p0, Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;->d:Lcom/dianxinos/powermanager/ui/MainTitle;

    new-instance v1, Laxv;

    invoke-direct {v1, p0}, Laxv;-><init>(Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;)V

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/ui/MainTitle;->setLeftButtonOnclickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    const-string v0, "%.1f%%"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v1, v10

    invoke-static {v0, v1}, Lazq;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f0201e4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 163
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f0201e5

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 164
    new-instance v3, Lawc;

    invoke-direct {v3, v0, v1, v7, v8}, Lawc;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;D)V

    .line 165
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 168
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f0701b9

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/powermanager/usage/MonitorTitleView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;->e:Lcom/dianxinos/powermanager/usage/MonitorTitleView;

    .line 169
    iget-object v0, p0, Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;->e:Lcom/dianxinos/powermanager/usage/MonitorTitleView;

    invoke-virtual {v0, p0}, Lcom/dianxinos/powermanager/usage/MonitorTitleView;->setOnClickListener(Layu;)V

    .line 170
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f0701ba

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;->f:Landroid/view/ViewGroup;

    .line 171
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f0701bb

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/powermanager/usage/MonitorTitleView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;->g:Lcom/dianxinos/powermanager/usage/MonitorTitleView;

    .line 172
    iget-object v0, p0, Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;->g:Lcom/dianxinos/powermanager/usage/MonitorTitleView;

    invoke-virtual {v0, p0}, Lcom/dianxinos/powermanager/usage/MonitorTitleView;->setOnClickListener(Layu;)V

    .line 173
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f0701bc

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;->h:Landroid/view/ViewGroup;

    .line 174
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f0701bf

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/powermanager/usage/MonitorTitleView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;->i:Lcom/dianxinos/powermanager/usage/MonitorTitleView;

    .line 175
    iget-object v0, p0, Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;->i:Lcom/dianxinos/powermanager/usage/MonitorTitleView;

    invoke-virtual {v0, p0}, Lcom/dianxinos/powermanager/usage/MonitorTitleView;->setOnClickListener(Layu;)V

    .line 176
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f0701c0

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;->j:Landroid/view/ViewGroup;

    .line 177
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f0701c1

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/powermanager/usage/MonitorTitleView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;->k:Lcom/dianxinos/powermanager/usage/MonitorTitleView;

    .line 178
    iget-object v0, p0, Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;->k:Lcom/dianxinos/powermanager/usage/MonitorTitleView;

    invoke-virtual {v0, p0}, Lcom/dianxinos/powermanager/usage/MonitorTitleView;->setOnClickListener(Layu;)V

    .line 179
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f0701c2

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;->l:Landroid/view/ViewGroup;

    .line 180
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f0701c3

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/powermanager/usage/MonitorTitleView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;->m:Lcom/dianxinos/powermanager/usage/MonitorTitleView;

    .line 181
    iget-object v0, p0, Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;->m:Lcom/dianxinos/powermanager/usage/MonitorTitleView;

    invoke-virtual {v0, p0}, Lcom/dianxinos/powermanager/usage/MonitorTitleView;->setOnClickListener(Layu;)V

    .line 182
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f0701c4

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;->n:Landroid/view/ViewGroup;

    .line 190
    iget-object v0, p0, Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;->f:Landroid/view/ViewGroup;

    iget-wide v1, v6, Latu;->i:J

    sget-object v3, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v3, 0x7f0a009a

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;->a(Landroid/view/ViewGroup;JI)V

    .line 191
    iget-object v0, p0, Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;->f:Landroid/view/ViewGroup;

    iget-wide v1, v6, Latu;->m:J

    sget-object v3, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v3, 0x7f0a009d

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;->a(Landroid/view/ViewGroup;JI)V

    .line 192
    iget-object v0, p0, Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;->f:Landroid/view/ViewGroup;

    iget-wide v1, v6, Latu;->l:J

    sget-object v3, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v3, 0x7f0a009c

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;->a(Landroid/view/ViewGroup;JI)V

    .line 193
    iget-object v0, p0, Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;->f:Landroid/view/ViewGroup;

    iget-wide v1, v6, Latu;->n:J

    sget-object v3, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v3, 0x7f0a009e

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;->a(Landroid/view/ViewGroup;JI)V

    .line 194
    iget-object v0, p0, Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;->f:Landroid/view/ViewGroup;

    iget-wide v1, v6, Latu;->o:J

    sget-object v3, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v3, 0x7f0a009f

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;->a(Landroid/view/ViewGroup;JI)V

    .line 195
    iget-object v0, p0, Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;->f:Landroid/view/ViewGroup;

    iget-wide v1, v6, Latu;->p:J

    sget-object v3, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v3, 0x7f0a00a0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;->a(Landroid/view/ViewGroup;JI)V

    .line 196
    iget-object v0, p0, Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;->f:Landroid/view/ViewGroup;

    iget v1, v6, Latu;->s:I

    sget-object v2, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v2, 0x7f0a00a1

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;->a(Landroid/view/ViewGroup;IIZ)V

    .line 198
    iget-object v0, p0, Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;->f:Landroid/view/ViewGroup;

    iget-wide v1, v6, Latu;->t:J

    sget-object v3, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v3, 0x7f0a00a2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;->b(Landroid/view/ViewGroup;JI)V

    .line 200
    iget-object v0, p0, Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;->f:Landroid/view/ViewGroup;

    iget-wide v1, v6, Latu;->u:J

    sget-object v3, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v3, 0x7f0a00a3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;->b(Landroid/view/ViewGroup;JI)V

    .line 201
    iget-wide v0, v6, Latu;->d:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_5

    iget-wide v0, v6, Latu;->v:D

    iget-wide v2, v6, Latu;->d:D

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4059

    mul-double/2addr v0, v2

    .line 202
    :goto_2
    iget-object v2, p0, Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;->f:Landroid/view/ViewGroup;

    const-string v3, "%.1f%%"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Lazq;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a00a4

    invoke-direct {p0, v2, v0, v1}, Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;->a(Landroid/view/ViewGroup;Ljava/lang/String;I)Landroid/view/View;

    move-result-object v0

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f0203d8

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 205
    iget-object v0, p0, Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;->f:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;->e:Lcom/dianxinos/powermanager/usage/MonitorTitleView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/usage/MonitorTitleView;->setVisibility(I)V

    .line 207
    iget-object v0, p0, Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;->f:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 211
    :cond_0
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f0701bd

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 212
    sget-object v1, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v1, 0x7f0701be

    invoke-virtual {p0, v1}, Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;->o:Landroid/widget/Button;

    .line 213
    iget-object v1, p0, Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;->o:Landroid/widget/Button;

    new-instance v2, Laxw;

    invoke-direct {v2, p0}, Laxw;-><init>(Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    iget-object v1, p0, Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;->c:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lazf;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 222
    :cond_1
    iget-object v0, p0, Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;->g:Lcom/dianxinos/powermanager/usage/MonitorTitleView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/usage/MonitorTitleView;->setVisibility(I)V

    .line 223
    iget-object v0, p0, Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;->h:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 231
    :goto_3
    invoke-direct {p0, v6}, Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;->a(Latu;)V

    .line 234
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 235
    iget-object v0, v6, Latu;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 236
    invoke-virtual {v9, v0}, Lath;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 237
    if-eqz v0, :cond_2

    .line 238
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 123
    :cond_3
    invoke-static {p0}, Lato;->a(Landroid/content/Context;)Lato;

    move-result-object v0

    .line 124
    invoke-virtual {v0}, Lato;->a()Latr;

    move-result-object v0

    iget-object v0, v0, Latr;->c:Lats;

    goto/16 :goto_0

    .line 133
    :cond_4
    iget-object v0, v0, Lats;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Latu;

    .line 134
    iget-wide v1, v0, Latu;->f:D

    move-wide v4, v1

    move-object v6, v0

    goto/16 :goto_1

    .line 201
    :cond_5
    const-wide/16 v0, 0x0

    goto/16 :goto_2

    .line 225
    :cond_6
    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a00a5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 226
    iget-object v0, p0, Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;->o:Landroid/widget/Button;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a00a6

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_3

    .line 243
    :cond_7
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_a

    .line 245
    const/4 v0, 0x0

    .line 246
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 247
    iget-object v0, p0, Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;->b:Landroid/view/LayoutInflater;

    sget-object v2, Lly;->g:Lcom/dianxinos/dxbs/R$layout;

    const v2, 0x7f03005e

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 248
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070156

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 249
    iget-object v0, p0, Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;->l:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 250
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f07018b

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 251
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v0, v2

    .line 252
    goto :goto_5

    .line 253
    :cond_8
    if-eqz v0, :cond_9

    .line 254
    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f0203d8

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 272
    :cond_9
    :goto_6
    iget-object v0, p0, Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;->m:Lcom/dianxinos/powermanager/usage/MonitorTitleView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/usage/MonitorTitleView;->setVisibility(I)V

    .line 273
    iget-object v0, p0, Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;->n:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 275
    return-void

    .line 258
    :cond_a
    iget-object v0, p0, Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;->k:Lcom/dianxinos/powermanager/usage/MonitorTitleView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/usage/MonitorTitleView;->setVisibility(I)V

    .line 259
    iget-object v0, p0, Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;->l:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_6
.end method

.method private a(Landroid/view/ViewGroup;IIZ)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 288
    if-nez p4, :cond_0

    if-lez p2, :cond_1

    .line 289
    :cond_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 290
    invoke-direct {p0, p1, v0, p3}, Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;->a(Landroid/view/ViewGroup;Ljava/lang/String;I)Landroid/view/View;

    .line 292
    :cond_1
    return-void
.end method

.method private a(Landroid/view/ViewGroup;JI)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 278
    const-wide/16 v0, 0x3e8

    div-long v0, p2, v0

    long-to-int v0, v0

    .line 279
    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-lez v1, :cond_1

    .line 280
    if-nez v0, :cond_0

    .line 281
    const/4 v0, 0x1

    .line 282
    :cond_0
    invoke-static {p0, v0}, Lazq;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 283
    invoke-direct {p0, p1, v0, p4}, Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;->a(Landroid/view/ViewGroup;Ljava/lang/String;I)Landroid/view/View;

    .line 285
    :cond_1
    return-void
.end method

.method private a(Latu;)V
    .locals 13
    .parameter

    .prologue
    .line 314
    new-instance v7, Laxx;

    invoke-direct {v7, p0}, Laxx;-><init>(Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;)V

    .line 322
    const/4 v4, 0x1

    .line 323
    iget-object v0, p1, Latu;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 324
    const/4 v1, 0x0

    .line 325
    const/4 v0, 0x0

    move v5, v0

    move-object v2, v1

    :goto_0
    if-ge v5, v8, :cond_0

    .line 326
    iget-object v0, p1, Latu;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Latx;

    .line 328
    iget-wide v9, v1, Latx;->e:D

    const-wide v11, 0x3fb99999a0000000L

    cmpg-double v0, v9, v11

    if-gez v0, :cond_2

    .line 362
    :cond_0
    if-eqz v2, :cond_1

    .line 363
    sget-object v0, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v0, 0x7f0203d7

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 364
    iget-object v0, p0, Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;->j:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;->j:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 366
    :cond_1
    if-eqz v4, :cond_7

    .line 367
    iget-object v0, p0, Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;->j:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 368
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_7

    .line 369
    iget-object v2, p0, Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;->j:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 370
    instance-of v3, v2, Landroid/widget/ImageView;

    if-eqz v3, :cond_6

    .line 371
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 368
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 331
    :cond_2
    iget-object v0, p0, Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;->b:Landroid/view/LayoutInflater;

    sget-object v2, Lly;->g:Lcom/dianxinos/dxbs/R$layout;

    const v2, 0x7f030067

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 332
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070014

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 333
    iget v2, v1, Latx;->a:I

    invoke-static {v2}, Latg;->b(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 334
    sget-object v2, Layl;->a:[I

    aget v2, v2, v5

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 335
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f07001f

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 336
    iget v2, v1, Latx;->a:I

    invoke-static {v2}, Latg;->a(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 337
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f0701b5

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 339
    iget v2, p1, Latu;->a:I

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;->r:Z

    if-eqz v2, :cond_4

    .line 340
    :cond_3
    iget-wide v2, v1, Latx;->e:D

    invoke-direct {p0, v2, v3}, Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;->a(D)D

    move-result-wide v2

    .line 344
    :goto_3
    const-string v9, "%.1f%%"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v10, v11

    invoke-static {v9, v10}, Lazq;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 346
    iget v0, v1, Latx;->a:I

    invoke-direct {p0, v0}, Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;->a(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 347
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 348
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Landroid/view/View;->setClickable(Z)V

    .line 349
    iget v0, v1, Latx;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 350
    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 351
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f0700ed

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 352
    const/4 v0, 0x0

    .line 354
    :goto_4
    iget v2, p1, Latu;->a:I

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v1, v1, Latx;->a:I

    invoke-static {v1}, Latg;->a(I)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 356
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;->p:Z

    .line 325
    :goto_5
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    move-object v2, v6

    move v4, v0

    goto/16 :goto_0

    .line 342
    :cond_4
    iget-wide v2, v1, Latx;->e:D

    goto :goto_3

    .line 359
    :cond_5
    iget-object v1, p0, Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;->j:Landroid/view/ViewGroup;

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 360
    iget-object v1, p0, Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;->j:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;->b()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_5

    .line 374
    :cond_6
    sget-object v3, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v3, 0x7f0700ed

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 378
    :cond_7
    iget-object v0, p0, Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;->j:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_8

    iget v0, p1, Latu;->a:I

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;->p:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;->j:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    .line 380
    :cond_8
    iget-object v0, p0, Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;->i:Lcom/dianxinos/powermanager/usage/MonitorTitleView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/usage/MonitorTitleView;->setVisibility(I)V

    .line 381
    iget-object v0, p0, Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;->j:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 383
    :cond_9
    return-void

    :cond_a
    move v0, v4

    goto :goto_4
.end method

.method public static synthetic a(Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;->b(I)V

    return-void
.end method

.method private a(I)Z
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 413
    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    if-eq p1, v0, :cond_0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    const/4 v1, 0x7

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 395
    const/4 v0, 0x1

    invoke-static {p0, v0}, Liq;->a(Landroid/content/Context;I)I

    move-result v0

    .line 396
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 398
    invoke-virtual {v1, v0, v4, v0, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 400
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 401
    sget-object v2, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v2, 0x7f0203e1

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 402
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 404
    return-object v0
.end method

.method private b(I)V
    .locals 2
    .parameter

    .prologue
    .line 420
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 421
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIFI_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 422
    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;->startActivity(Landroid/content/Intent;)V

    .line 433
    :cond_0
    :goto_0
    return-void

    .line 423
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 424
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.DISPLAY_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 425
    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 426
    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 427
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.BLUETOOTH_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 428
    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 429
    :cond_3
    const/4 v0, 0x7

    if-ne p1, v0, :cond_0

    .line 430
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 431
    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private b(Landroid/view/ViewGroup;JI)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 295
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_0

    .line 296
    invoke-static {p0, p2, p3}, Lazq;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 297
    invoke-direct {p0, p1, v0, p4}, Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;->a(Landroid/view/ViewGroup;Ljava/lang/String;I)Landroid/view/View;

    .line 299
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/dianxinos/powermanager/usage/MonitorTitleView;)V
    .locals 4
    .parameter

    .prologue
    const/16 v2, 0x8

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 438
    iget-object v3, p0, Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;->e:Lcom/dianxinos/powermanager/usage/MonitorTitleView;

    if-ne p1, v3, :cond_3

    .line 439
    iget-object v3, p0, Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;->f:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    .line 440
    :goto_0
    iget-object v3, p0, Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;->f:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    move v1, v2

    :cond_0
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 454
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v1

    .line 439
    goto :goto_0

    .line 441
    :cond_3
    iget-object v3, p0, Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;->g:Lcom/dianxinos/powermanager/usage/MonitorTitleView;

    if-ne p1, v3, :cond_6

    .line 442
    iget-object v3, p0, Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;->h:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v3

    if-nez v3, :cond_4

    .line 443
    :goto_2
    iget-object v3, p0, Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;->h:Landroid/view/ViewGroup;

    if-eqz v0, :cond_5

    :goto_3
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1

    :cond_4
    move v0, v1

    .line 442
    goto :goto_2

    :cond_5
    move v2, v1

    .line 443
    goto :goto_3

    .line 444
    :cond_6
    iget-object v3, p0, Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;->i:Lcom/dianxinos/powermanager/usage/MonitorTitleView;

    if-ne p1, v3, :cond_9

    .line 445
    iget-object v3, p0, Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;->j:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v3

    if-nez v3, :cond_7

    .line 446
    :goto_4
    iget-object v3, p0, Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;->j:Landroid/view/ViewGroup;

    if-eqz v0, :cond_8

    :goto_5
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1

    :cond_7
    move v0, v1

    .line 445
    goto :goto_4

    :cond_8
    move v2, v1

    .line 446
    goto :goto_5

    .line 447
    :cond_9
    iget-object v3, p0, Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;->k:Lcom/dianxinos/powermanager/usage/MonitorTitleView;

    if-ne p1, v3, :cond_c

    .line 448
    iget-object v3, p0, Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;->l:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v3

    if-nez v3, :cond_a

    .line 449
    :goto_6
    iget-object v3, p0, Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;->l:Landroid/view/ViewGroup;

    if-eqz v0, :cond_b

    :goto_7
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1

    :cond_a
    move v0, v1

    .line 448
    goto :goto_6

    :cond_b
    move v2, v1

    .line 449
    goto :goto_7

    .line 450
    :cond_c
    iget-object v3, p0, Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;->m:Lcom/dianxinos/powermanager/usage/MonitorTitleView;

    if-ne p1, v3, :cond_1

    .line 451
    iget-object v3, p0, Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;->n:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v3

    if-nez v3, :cond_d

    .line 452
    :goto_8
    iget-object v3, p0, Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;->n:Landroid/view/ViewGroup;

    if-eqz v0, :cond_e

    :goto_9
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1

    :cond_d
    move v0, v1

    .line 451
    goto :goto_8

    :cond_e
    move v2, v1

    .line 452
    goto :goto_9
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    .line 74
    invoke-super {p0, p1}, Laao;->onCreate(Landroid/os/Bundle;)V

    .line 75
    sget-object v0, Lly;->g:Lcom/dianxinos/dxbs/R$layout;

    const v0, 0x7f030064

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;->setContentView(I)V

    .line 78
    :try_start_0
    invoke-direct {p0}, Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :goto_0
    return-void

    .line 79
    :catch_0
    move-exception v0

    .line 80
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;->finish()V

    .line 81
    const-string v1, "AppPowerUsageDetails"

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
    .locals 0

    .prologue
    .line 409
    invoke-super {p0}, Laao;->onDestroy()V

    .line 410
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 87
    invoke-super {p0}, Laao;->onResume()V

    .line 88
    iget-object v0, p0, Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;->c:Ljava/lang/String;

    invoke-static {p0, v0}, Lazy;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lazf;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;->g:Lcom/dianxinos/powermanager/usage/MonitorTitleView;

    invoke-virtual {v0, v2}, Lcom/dianxinos/powermanager/usage/MonitorTitleView;->setVisibility(I)V

    .line 92
    iget-object v0, p0, Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;->h:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 97
    :goto_0
    return-void

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;->g:Lcom/dianxinos/powermanager/usage/MonitorTitleView;

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/usage/MonitorTitleView;->setVisibility(I)V

    .line 95
    iget-object v0, p0, Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;->h:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method
