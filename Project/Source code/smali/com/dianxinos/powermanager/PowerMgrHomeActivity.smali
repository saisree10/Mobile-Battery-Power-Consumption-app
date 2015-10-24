.class public Lcom/dianxinos/powermanager/PowerMgrHomeActivity;
.super Laam;
.source "PowerMgrHomeActivity.java"

# interfaces
.implements Ladc;
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static a:Ljava/lang/String;

.field private static c:I


# instance fields
.field private b:Labb;

.field private d:Labc;

.field private e:Lacz;

.field private f:Lcom/dianxinos/powermanager/ui/DxBatteryGraph;

.field private g:Landroid/widget/TextView;

.field private h:Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;

.field private i:Landroid/widget/Button;

.field private j:Ladd;

.field private k:Z

.field private l:I

.field private m:Z

.field private n:Laff;

.field private o:Lamb;

.field private p:Lcom/dianxinos/powermanager/ui/BatteryInfoView;

.field private q:Landroid/view/View;

.field private r:Lcom/dianxinos/powermanager/ui/HistoryChartView;

.field private s:Landroid/widget/TextView;

.field private t:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-string v0, "goto_diagnose_page"

    sput-object v0, Lcom/dianxinos/powermanager/PowerMgrHomeActivity;->a:Ljava/lang/String;

    .line 67
    const/4 v0, 0x0

    sput v0, Lcom/dianxinos/powermanager/PowerMgrHomeActivity;->c:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 42
    invoke-direct {p0}, Laam;-><init>()V

    .line 69
    new-instance v0, Labc;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Labc;-><init>(Lcom/dianxinos/powermanager/PowerMgrHomeActivity;Laba;)V

    iput-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrHomeActivity;->d:Labc;

    .line 84
    const/4 v0, -0x1

    iput v0, p0, Lcom/dianxinos/powermanager/PowerMgrHomeActivity;->l:I

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dianxinos/powermanager/PowerMgrHomeActivity;->m:Z

    .line 198
    return-void
.end method

.method public static synthetic a(Lcom/dianxinos/powermanager/PowerMgrHomeActivity;)Laff;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrHomeActivity;->n:Laff;

    return-object v0
.end method

.method private a(I)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 281
    const/16 v0, 0x708

    if-lt p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/dianxinos/powermanager/PowerMgrHomeActivity;->k:Z

    if-nez v0, :cond_0

    .line 282
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/PowerMgrHomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lly;->a:Lcom/dianxinos/dxbs/R$anim;

    const/high16 v1, 0x7f04

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 284
    iget-object v1, p0, Lcom/dianxinos/powermanager/PowerMgrHomeActivity;->s:Landroid/widget/TextView;

    sget-object v2, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v2, 0x7f0a037e

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lazq;->c(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/dianxinos/powermanager/PowerMgrHomeActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    iget-object v1, p0, Lcom/dianxinos/powermanager/PowerMgrHomeActivity;->s:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrHomeActivity;->o:Lamb;

    invoke-virtual {v0, v5}, Lamb;->c(I)V

    .line 289
    return-void
.end method

.method private a(IZ)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 214
    invoke-static {p1}, Lacz;->a(I)I

    move-result v0

    .line 215
    iget-object v1, p0, Lcom/dianxinos/powermanager/PowerMgrHomeActivity;->f:Lcom/dianxinos/powermanager/ui/DxBatteryGraph;

    invoke-virtual {v1, p1, p2, v0}, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->a(IZI)V

    .line 217
    invoke-static {p0, v0}, Lacz;->a(Landroid/content/Context;I)I

    move-result v1

    .line 219
    iget v2, p0, Lcom/dianxinos/powermanager/PowerMgrHomeActivity;->l:I

    if-eq v0, v2, :cond_0

    .line 220
    iput v0, p0, Lcom/dianxinos/powermanager/PowerMgrHomeActivity;->l:I

    .line 221
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrHomeActivity;->f:Lcom/dianxinos/powermanager/ui/DxBatteryGraph;

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->a(I)V

    .line 225
    :cond_0
    if-eqz p2, :cond_2

    .line 226
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrHomeActivity;->g:Landroid/widget/TextView;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0058

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 228
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrHomeActivity;->n:Laff;

    invoke-virtual {v0}, Laff;->f()Lafh;

    move-result-object v0

    invoke-virtual {v0}, Lafh;->c()I

    move-result v0

    .line 229
    int-to-long v1, v0

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 230
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrHomeActivity;->h:Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;

    invoke-virtual {v0, v5, v5}, Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;->a(II)V

    .line 243
    :goto_0
    return-void

    .line 232
    :cond_1
    iget-object v1, p0, Lcom/dianxinos/powermanager/PowerMgrHomeActivity;->h:Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;

    invoke-virtual {v1, v0}, Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;->a(I)V

    goto :goto_0

    .line 235
    :cond_2
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrHomeActivity;->g:Landroid/widget/TextView;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0057

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 236
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrHomeActivity;->j:Ladd;

    iget v0, v0, Ladd;->k:I

    .line 237
    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 238
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrHomeActivity;->h:Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;

    invoke-virtual {v0, v5, v5}, Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;->a(II)V

    goto :goto_0

    .line 240
    :cond_3
    iget-object v1, p0, Lcom/dianxinos/powermanager/PowerMgrHomeActivity;->h:Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;

    invoke-virtual {v1, v0}, Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;->a(I)V

    goto :goto_0
.end method

.method public static synthetic a(Lcom/dianxinos/powermanager/PowerMgrHomeActivity;IZ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/dianxinos/powermanager/PowerMgrHomeActivity;->a(IZ)V

    return-void
.end method

.method public static synthetic b(Lcom/dianxinos/powermanager/PowerMgrHomeActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/PowerMgrHomeActivity;->k:Z

    return v0
.end method

.method public static synthetic c(Lcom/dianxinos/powermanager/PowerMgrHomeActivity;)Ladd;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrHomeActivity;->j:Ladd;

    return-object v0
.end method

.method public static synthetic d(Lcom/dianxinos/powermanager/PowerMgrHomeActivity;)Lcom/dianxinos/powermanager/ui/BatteryInfoView;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrHomeActivity;->p:Lcom/dianxinos/powermanager/ui/BatteryInfoView;

    return-object v0
.end method


# virtual methods
.method public a(Ladd;)V
    .locals 2
    .parameter

    .prologue
    .line 193
    iput-object p1, p0, Lcom/dianxinos/powermanager/PowerMgrHomeActivity;->j:Ladd;

    .line 194
    iget-boolean v0, p1, Ladd;->l:Z

    iput-boolean v0, p0, Lcom/dianxinos/powermanager/PowerMgrHomeActivity;->k:Z

    .line 195
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrHomeActivity;->d:Labc;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Labc;->sendEmptyMessage(I)Z

    .line 196
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 293
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/PowerMgrHomeActivity;->m:Z

    if-eqz v0, :cond_0

    .line 302
    :goto_0
    return-void

    .line 296
    :cond_0
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/PowerMgrHomeActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    .line 297
    if-eqz v0, :cond_1

    .line 298
    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0

    .line 300
    :cond_1
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/PowerMgrHomeActivity;->finish()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 247
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrHomeActivity;->p:Lcom/dianxinos/powermanager/ui/BatteryInfoView;

    if-ne p1, v0, :cond_1

    .line 248
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/PowerMgrHomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 250
    const-string v0, "home"

    const-string v1, "cbs"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lbal;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    .line 278
    :cond_0
    :goto_0
    return-void

    .line 254
    :cond_1
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrHomeActivity;->f:Lcom/dianxinos/powermanager/ui/DxBatteryGraph;

    if-ne p1, v0, :cond_2

    .line 255
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 256
    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/PowerMgrHomeActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 257
    :cond_2
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrHomeActivity;->h:Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;

    if-ne p1, v0, :cond_3

    .line 258
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/PowerMgrHomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 260
    const-string v0, "home"

    const-string v1, "ctr"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lbal;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    goto :goto_0

    .line 264
    :cond_3
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrHomeActivity;->i:Landroid/widget/Button;

    if-ne p1, v0, :cond_4

    .line 265
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 267
    const-string v1, "home"

    const-string v2, "analysis"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p0, v1, v2, v3}, Lbal;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    .line 271
    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/PowerMgrHomeActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 272
    :cond_4
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrHomeActivity;->t:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 273
    const-string v0, "dsbdcc"

    const-string v1, "dsbc"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3, p0, v0, v1, v2}, Lbal;->a(ZLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    .line 276
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dianxinos/powermanager/BoosterActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/PowerMgrHomeActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 100
    invoke-super {p0, p1}, Laam;->onCreate(Landroid/os/Bundle;)V

    .line 101
    sget-object v0, Lly;->g:Lcom/dianxinos/dxbs/R$layout;

    const v0, 0x7f03005f

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/PowerMgrHomeActivity;->setContentView(I)V

    .line 103
    invoke-static {p0}, Lacz;->a(Landroid/content/Context;)Lacz;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrHomeActivity;->e:Lacz;

    .line 104
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070195

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/PowerMgrHomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/powermanager/ui/BatteryInfoView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrHomeActivity;->p:Lcom/dianxinos/powermanager/ui/BatteryInfoView;

    .line 105
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrHomeActivity;->p:Lcom/dianxinos/powermanager/ui/BatteryInfoView;

    invoke-virtual {v0, p0}, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f07018f

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/PowerMgrHomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;

    iput-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrHomeActivity;->f:Lcom/dianxinos/powermanager/ui/DxBatteryGraph;

    .line 107
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrHomeActivity;->f:Lcom/dianxinos/powermanager/ui/DxBatteryGraph;

    invoke-virtual {v0, p0}, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070190

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/PowerMgrHomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrHomeActivity;->g:Landroid/widget/TextView;

    .line 110
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070193

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/PowerMgrHomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;

    iput-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrHomeActivity;->h:Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;

    .line 111
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrHomeActivity;->h:Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;

    invoke-virtual {v0, p0}, Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;->setOnDigitalClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070194

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/PowerMgrHomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrHomeActivity;->i:Landroid/widget/Button;

    .line 114
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrHomeActivity;->i:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/PowerMgrHomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Laff;->a(Landroid/content/Context;)Laff;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrHomeActivity;->n:Laff;

    .line 116
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070196

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/PowerMgrHomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/powermanager/ui/HistoryChartView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrHomeActivity;->r:Lcom/dianxinos/powermanager/ui/HistoryChartView;

    .line 117
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070197

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/PowerMgrHomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrHomeActivity;->q:Landroid/view/View;

    .line 119
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070192

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/PowerMgrHomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrHomeActivity;->s:Landroid/widget/TextView;

    .line 121
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070198

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/PowerMgrHomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrHomeActivity;->t:Landroid/view/View;

    .line 122
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrHomeActivity;->t:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    new-instance v0, Labb;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Labb;-><init>(Lcom/dianxinos/powermanager/PowerMgrHomeActivity;Laba;)V

    iput-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrHomeActivity;->b:Labb;

    .line 125
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 126
    sget-object v1, Lcom/dianxinos/powermanager/PowerMgrHomeActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 127
    iget-object v1, p0, Lcom/dianxinos/powermanager/PowerMgrHomeActivity;->b:Labb;

    invoke-virtual {p0, v1, v0}, Lcom/dianxinos/powermanager/PowerMgrHomeActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 128
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 182
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrHomeActivity;->f:Lcom/dianxinos/powermanager/ui/DxBatteryGraph;

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrHomeActivity;->h:Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;->setOnDigitalClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrHomeActivity;->b:Labb;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrHomeActivity;->b:Labb;

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/PowerMgrHomeActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 188
    :cond_0
    invoke-super {p0}, Laam;->onDestroy()V

    .line 189
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 166
    invoke-super {p0}, Laam;->onPause()V

    .line 170
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrHomeActivity;->s:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearAnimation()V

    .line 171
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dianxinos/powermanager/PowerMgrHomeActivity;->m:Z

    .line 172
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrHomeActivity;->e:Lacz;

    invoke-virtual {v0, p0}, Lacz;->b(Ladc;)V

    .line 173
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 132
    invoke-super {p0}, Laam;->onResume()V

    .line 133
    invoke-static {p0}, Lamb;->a(Landroid/content/Context;)Lamb;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrHomeActivity;->o:Lamb;

    .line 134
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrHomeActivity;->o:Lamb;

    invoke-virtual {v0}, Lamb;->r()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/dianxinos/powermanager/PowerMgrHomeActivity;->a(I)V

    .line 136
    iput-boolean v2, p0, Lcom/dianxinos/powermanager/PowerMgrHomeActivity;->m:Z

    .line 137
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/PowerMgrHomeActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/powermanager/PowerMgrTabActivity;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0228

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->setTitle(I)V

    .line 138
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrHomeActivity;->d:Labc;

    invoke-virtual {v0, v4}, Labc;->sendEmptyMessage(I)Z

    .line 139
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrHomeActivity;->e:Lacz;

    invoke-virtual {v0, p0}, Lacz;->a(Ladc;)V

    .line 140
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrHomeActivity;->r:Lcom/dianxinos/powermanager/ui/HistoryChartView;

    invoke-virtual {v0}, Lcom/dianxinos/powermanager/ui/HistoryChartView;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 141
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrHomeActivity;->r:Lcom/dianxinos/powermanager/ui/HistoryChartView;

    invoke-virtual {v0, v2}, Lcom/dianxinos/powermanager/ui/HistoryChartView;->setVisibility(I)V

    .line 142
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrHomeActivity;->r:Lcom/dianxinos/powermanager/ui/HistoryChartView;

    invoke-virtual {v0}, Lcom/dianxinos/powermanager/ui/HistoryChartView;->a()V

    .line 143
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrHomeActivity;->q:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 149
    :goto_0
    invoke-static {p0}, Lazf;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrHomeActivity;->p:Lcom/dianxinos/powermanager/ui/BatteryInfoView;

    invoke-virtual {v0, v3}, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->setVisibility(I)V

    .line 153
    :cond_0
    const-string v0, "com.dianxinos.optimizer.duplay"

    invoke-static {p0, v0}, Lazy;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lzv;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 155
    :cond_1
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrHomeActivity;->t:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 162
    :goto_1
    return-void

    .line 145
    :cond_2
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrHomeActivity;->r:Lcom/dianxinos/powermanager/ui/HistoryChartView;

    invoke-virtual {v0, v3}, Lcom/dianxinos/powermanager/ui/HistoryChartView;->setVisibility(I)V

    .line 146
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrHomeActivity;->q:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 157
    :cond_3
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrHomeActivity;->t:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 158
    const-string v0, "dsbdcc"

    const-string v1, "dsbd"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v4, p0, v0, v1, v2}, Lbal;->a(ZLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    goto :goto_1
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 1
    .parameter

    .prologue
    .line 306
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/PowerMgrHomeActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 307
    return-void
.end method
