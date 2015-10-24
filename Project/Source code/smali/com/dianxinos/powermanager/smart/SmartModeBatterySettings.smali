.class public Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;
.super Laao;
.source "SmartModeBatterySettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lavh;


# static fields
.field private static b:Z


# instance fields
.field a:Landroid/os/Handler;

.field private c:Larr;

.field private d:Landroid/widget/SeekBar;

.field private e:Z

.field private f:I

.field private g:Lcom/dianxinos/powermanager/ui/DXSwitchButton;

.field private h:Z

.field private i:I

.field private j:I

.field private k:Lamp;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/ImageView;

.field private n:Landroid/app/Dialog;

.field private o:I

.field private p:Lcom/dianxinos/powermanager/ui/DxGotoPreference;

.field private q:Lcom/dianxinos/powermanager/ui/DxGotoPreference;

.field private r:I

.field private s:I

.field private t:I

.field private u:Laml;

.field private v:Lcom/dianxinos/powermanager/ui/MainTitle;

.field private w:Landroid/widget/SeekBar$OnSeekBarChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    sput-boolean v0, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Laao;-><init>()V

    .line 181
    new-instance v0, Larw;

    invoke-direct {v0, p0}, Larw;-><init>(Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;)V

    iput-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->w:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 283
    new-instance v0, Larz;

    invoke-direct {v0, p0}, Larz;-><init>(Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;)V

    iput-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->a:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic a(Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;)I
    .locals 1
    .parameter

    .prologue
    .line 39
    iget v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->f:I

    return v0
.end method

.method public static synthetic a(Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 39
    iput p1, p0, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->f:I

    return p1
.end method

.method private a()V
    .locals 2

    .prologue
    .line 213
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->n:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 214
    new-instance v0, Landroid/app/Dialog;

    sget-object v1, Lly;->j:Lcom/dianxinos/dxbs/R$style;

    const v1, 0x7f0b0007

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->n:Landroid/app/Dialog;

    .line 215
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->n:Landroid/app/Dialog;

    sget-object v1, Lly;->g:Lcom/dianxinos/dxbs/R$layout;

    const v1, 0x7f030013

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->n:Landroid/app/Dialog;

    sget-object v1, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v1, 0x7f070018

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    check-cast v0, Landroid/widget/TextView;

    .line 218
    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a00f2

    invoke-virtual {p0, v1}, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->n:Landroid/app/Dialog;

    sget-object v1, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v1, 0x7f07005c

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    check-cast v0, Landroid/widget/TextView;

    .line 221
    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a00fc

    invoke-virtual {p0, v1}, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->n:Landroid/app/Dialog;

    sget-object v1, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v1, 0x7f070060

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    check-cast v0, Landroid/widget/Button;

    .line 225
    new-instance v1, Larx;

    invoke-direct {v1, p0}, Larx;-><init>(Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->n:Landroid/app/Dialog;

    sget-object v1, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v1, 0x7f07005e

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    check-cast v0, Landroid/widget/Button;

    .line 237
    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0100

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 238
    new-instance v1, Lary;

    invoke-direct {v1, p0}, Lary;-><init>(Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 260
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->n:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 261
    return-void
.end method

.method private a(Z)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 165
    if-eqz p1, :cond_0

    .line 166
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->g:Lcom/dianxinos/powermanager/ui/DXSwitchButton;

    invoke-virtual {v0, p1}, Lcom/dianxinos/powermanager/ui/DXSwitchButton;->setStatus(Z)V

    .line 167
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->p:Lcom/dianxinos/powermanager/ui/DxGotoPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/ui/DxGotoPreference;->setFocusable(Z)V

    .line 168
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->m:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 175
    :goto_0
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->q:Lcom/dianxinos/powermanager/ui/DxGotoPreference;

    iget-object v1, p0, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->k:Lamp;

    iget v2, p0, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->r:I

    invoke-virtual {v1, v2}, Lamp;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/ui/DxGotoPreference;->setSummary(Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->p:Lcom/dianxinos/powermanager/ui/DxGotoPreference;

    iget-object v1, p0, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->k:Lamp;

    iget v2, p0, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->i:I

    invoke-virtual {v1, v2}, Lamp;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/ui/DxGotoPreference;->setSummary(Ljava/lang/String;)V

    .line 179
    return-void

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->g:Lcom/dianxinos/powermanager/ui/DXSwitchButton;

    invoke-virtual {v0, p1}, Lcom/dianxinos/powermanager/ui/DXSwitchButton;->setStatus(Z)V

    .line 172
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->p:Lcom/dianxinos/powermanager/ui/DxGotoPreference;

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/ui/DxGotoPreference;->setFocusable(Z)V

    .line 173
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->m:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public static synthetic b(Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 39
    iput p1, p0, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->i:I

    return p1
.end method

.method public static synthetic b(Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->l:Landroid/widget/TextView;

    return-object v0
.end method

.method public static synthetic c(Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 39
    iput p1, p0, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->j:I

    return p1
.end method

.method public static synthetic c(Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;)Lcom/dianxinos/powermanager/ui/DxGotoPreference;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->p:Lcom/dianxinos/powermanager/ui/DxGotoPreference;

    return-object v0
.end method

.method public static synthetic d(Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 39
    iput p1, p0, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->r:I

    return p1
.end method

.method public static synthetic d(Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;)Lcom/dianxinos/powermanager/ui/DxGotoPreference;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->q:Lcom/dianxinos/powermanager/ui/DxGotoPreference;

    return-object v0
.end method

.method public static synthetic e(Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 39
    iput p1, p0, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->s:I

    return p1
.end method

.method public static synthetic e(Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;)Z
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->e:Z

    return v0
.end method

.method public static synthetic f(Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 39
    iput p1, p0, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->o:I

    return p1
.end method

.method public static synthetic f(Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;)Landroid/app/Dialog;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->n:Landroid/app/Dialog;

    return-object v0
.end method

.method public static synthetic g(Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;)I
    .locals 1
    .parameter

    .prologue
    .line 39
    iget v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->t:I

    return v0
.end method

.method public static synthetic g(Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 39
    iput p1, p0, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->t:I

    return p1
.end method

.method public static synthetic h(Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;)I
    .locals 1
    .parameter

    .prologue
    .line 39
    iget v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->o:I

    return v0
.end method

.method public static synthetic i(Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;)Lamp;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->k:Lamp;

    return-object v0
.end method

.method public static synthetic j(Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->a()V

    return-void
.end method


# virtual methods
.method public a(Lavg;)V
    .locals 4
    .parameter

    .prologue
    .line 310
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->p:Lcom/dianxinos/powermanager/ui/DxGotoPreference;

    if-ne p1, v0, :cond_1

    .line 311
    new-instance v0, Laml;

    iget v1, p0, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->i:I

    iget-object v2, p0, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->a:Landroid/os/Handler;

    new-instance v3, Lasa;

    invoke-direct {v3, p0}, Lasa;-><init>(Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;)V

    invoke-direct {v0, p0, v1, v2, v3}, Laml;-><init>(Landroid/content/Context;ILandroid/os/Handler;Lamm;)V

    iput-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->u:Laml;

    .line 329
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->u:Laml;

    invoke-virtual {v0}, Laml;->show()V

    .line 351
    :cond_0
    :goto_0
    return-void

    .line 330
    :cond_1
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->q:Lcom/dianxinos/powermanager/ui/DxGotoPreference;

    if-ne p1, v0, :cond_0

    .line 331
    new-instance v0, Laml;

    iget v1, p0, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->r:I

    iget-object v2, p0, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->a:Landroid/os/Handler;

    new-instance v3, Lasb;

    invoke-direct {v3, p0}, Lasb;-><init>(Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;)V

    invoke-direct {v0, p0, v1, v2, v3}, Laml;-><init>(Landroid/content/Context;ILandroid/os/Handler;Lamm;)V

    iput-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->u:Laml;

    .line 349
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->u:Laml;

    invoke-virtual {v0}, Laml;->show()V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 299
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 300
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 301
    const-string v1, "ModeName"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 303
    iget-object v1, p0, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->u:Laml;

    invoke-virtual {v1, v0}, Laml;->a(Ljava/lang/String;)V

    .line 305
    :cond_0
    invoke-super {p0, p1, p2, p3}, Laao;->onActivityResult(IILandroid/content/Intent;)V

    .line 306
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 355
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->c:Larr;

    iget v1, p0, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->j:I

    invoke-virtual {v0, v1}, Larr;->d(I)V

    .line 356
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->c:Larr;

    iget v1, p0, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->s:I

    invoke-virtual {v0, v1}, Larr;->i(I)V

    .line 357
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->c:Larr;

    iget v1, p0, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->f:I

    invoke-virtual {v0, v1}, Larr;->c(I)V

    .line 358
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->c:Larr;

    invoke-virtual {v0}, Larr;->f()V

    .line 359
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lass;->a(Landroid/content/Context;)Lass;

    move-result-object v0

    invoke-virtual {v0}, Lass;->c()V

    .line 360
    invoke-super {p0}, Laao;->onBackPressed()V

    .line 361
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 265
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->g:Lcom/dianxinos/powermanager/ui/DXSwitchButton;

    if-ne p1, v0, :cond_2

    .line 266
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->g:Lcom/dianxinos/powermanager/ui/DXSwitchButton;

    invoke-virtual {v0}, Lcom/dianxinos/powermanager/ui/DXSwitchButton;->getStatus()Z

    move-result v0

    if-nez v0, :cond_1

    .line 267
    iput-boolean v2, p0, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->h:Z

    .line 268
    invoke-direct {p0, v2}, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->a(Z)V

    .line 273
    :goto_0
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->c:Larr;

    iget-boolean v1, p0, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->h:Z

    invoke-virtual {v0, v1}, Larr;->d(Z)V

    .line 274
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.dianxinos.dxbs.action.RemainingTimeUpate"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->sendBroadcast(Landroid/content/Intent;)V

    .line 278
    :cond_0
    :goto_1
    return-void

    .line 270
    :cond_1
    iput-boolean v1, p0, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->h:Z

    .line 271
    invoke-direct {p0, v1}, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->a(Z)V

    goto :goto_0

    .line 275
    :cond_2
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->m:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_0

    .line 276
    sget-object v0, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v0, 0x7f0a0156

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter

    .prologue
    const/4 v3, -0x1

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 75
    invoke-super {p0, p1}, Laao;->onCreate(Landroid/os/Bundle;)V

    .line 76
    sget-object v0, Lly;->g:Lcom/dianxinos/dxbs/R$layout;

    const v0, 0x7f030081

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->setContentView(I)V

    .line 77
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070007

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/powermanager/ui/MainTitle;

    iput-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->v:Lcom/dianxinos/powermanager/ui/MainTitle;

    .line 78
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070134

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 79
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lly;->d:Lcom/dianxinos/dxbs/R$dimen;

    const v2, 0x7f0801b7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v5, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 80
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->v:Lcom/dianxinos/powermanager/ui/MainTitle;

    sget-object v1, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v1, 0x7f070135

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/ui/MainTitle;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/powermanager/ui/DXSwitchButton;

    iput-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->g:Lcom/dianxinos/powermanager/ui/DXSwitchButton;

    .line 82
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->g:Lcom/dianxinos/powermanager/ui/DXSwitchButton;

    invoke-virtual {v0, v5}, Lcom/dianxinos/powermanager/ui/DXSwitchButton;->setVisibility(I)V

    .line 83
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->g:Lcom/dianxinos/powermanager/ui/DXSwitchButton;

    invoke-virtual {v0, p0}, Lcom/dianxinos/powermanager/ui/DXSwitchButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    invoke-static {p0}, Lamp;->a(Landroid/content/Context;)Lamp;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->k:Lamp;

    .line 86
    invoke-static {p0}, Larr;->a(Landroid/content/Context;)Larr;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->c:Larr;

    .line 87
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->c:Larr;

    invoke-virtual {v0}, Larr;->k()I

    move-result v0

    iput v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->j:I

    .line 88
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->k:Lamp;

    iget v1, p0, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->j:I

    invoke-virtual {v0, v1}, Lamp;->g(I)I

    move-result v0

    iput v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->i:I

    .line 89
    iget v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->i:I

    if-ne v0, v3, :cond_0

    .line 90
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->k:Lamp;

    invoke-virtual {v0, v5}, Lamp;->g(I)I

    move-result v0

    iput v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->i:I

    .line 93
    :cond_0
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f07020e

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/powermanager/ui/DxGotoPreference;

    iput-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->p:Lcom/dianxinos/powermanager/ui/DxGotoPreference;

    .line 94
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f07020f

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/powermanager/ui/DxGotoPreference;

    iput-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->q:Lcom/dianxinos/powermanager/ui/DxGotoPreference;

    .line 95
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->p:Lcom/dianxinos/powermanager/ui/DxGotoPreference;

    invoke-virtual {v0, p0}, Lcom/dianxinos/powermanager/ui/DxGotoPreference;->setOnPreferenceChangeListener(Lavh;)V

    .line 96
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->q:Lcom/dianxinos/powermanager/ui/DxGotoPreference;

    invoke-virtual {v0, p0}, Lcom/dianxinos/powermanager/ui/DxGotoPreference;->setOnPreferenceChangeListener(Lavh;)V

    .line 98
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->c:Larr;

    iget-object v1, p0, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->k:Lamp;

    invoke-virtual {v1}, Lamp;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Larr;->h(I)I

    move-result v0

    iput v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->s:I

    .line 99
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->k:Lamp;

    iget v1, p0, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->s:I

    invoke-virtual {v0, v1}, Lamp;->g(I)I

    move-result v0

    iput v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->r:I

    .line 100
    iget v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->r:I

    if-ne v0, v3, :cond_1

    .line 101
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->k:Lamp;

    invoke-virtual {v0, v6}, Lamp;->g(I)I

    move-result v0

    iput v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->r:I

    .line 107
    :cond_1
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f07001d

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->m:Landroid/widget/ImageView;

    .line 108
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->m:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f07020d

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->d:Landroid/widget/SeekBar;

    .line 111
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f07020c

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->l:Landroid/widget/TextView;

    .line 113
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->d:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v2, 0x7f0203d4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 114
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->d:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v2, 0x7f0203d5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 115
    sget-boolean v0, Lazf;->d:Z

    iput-boolean v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->e:Z

    .line 116
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->e:Z

    if-eqz v0, :cond_2

    .line 117
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->d:Landroid/widget/SeekBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 118
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->c:Larr;

    invoke-virtual {v0}, Larr;->j()I

    move-result v0

    iput v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->f:I

    .line 119
    iget v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->f:I

    div-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, -0x1

    .line 120
    iget-object v1, p0, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->d:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 128
    :goto_0
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->l:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->p:Lcom/dianxinos/powermanager/ui/DxGotoPreference;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0147

    new-array v2, v6, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->f:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v1, v2}, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/ui/DxGotoPreference;->setTitle(Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->q:Lcom/dianxinos/powermanager/ui/DxGotoPreference;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0148

    new-array v2, v6, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->f:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v1, v2}, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/ui/DxGotoPreference;->setTitle(Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->d:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->w:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 134
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->p:Lcom/dianxinos/powermanager/ui/DxGotoPreference;

    invoke-virtual {v0, p0}, Lcom/dianxinos/powermanager/ui/DxGotoPreference;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->q:Lcom/dianxinos/powermanager/ui/DxGotoPreference;

    invoke-virtual {v0, p0}, Lcom/dianxinos/powermanager/ui/DxGotoPreference;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    return-void

    .line 123
    :cond_2
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->d:Landroid/widget/SeekBar;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 124
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->c:Larr;

    invoke-virtual {v0}, Larr;->j()I

    move-result v0

    iput v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->f:I

    .line 125
    iget v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->f:I

    add-int/lit8 v0, v0, -0xa

    .line 126
    iget-object v1, p0, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->d:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    goto/16 :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 161
    invoke-super {p0}, Laao;->onPause()V

    .line 162
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 145
    invoke-super {p0}, Laao;->onResume()V

    .line 146
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->v:Lcom/dianxinos/powermanager/ui/MainTitle;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0145

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/ui/MainTitle;->setTitleText(I)V

    .line 147
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->v:Lcom/dianxinos/powermanager/ui/MainTitle;

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f020450

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/ui/MainTitle;->setLeftButtonIcon(I)V

    .line 148
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->v:Lcom/dianxinos/powermanager/ui/MainTitle;

    new-instance v1, Larv;

    invoke-direct {v1, p0}, Larv;-><init>(Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;)V

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/ui/MainTitle;->setLeftButtonOnclickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->c:Larr;

    invoke-virtual {v0}, Larr;->i()Z

    move-result v0

    iput-boolean v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->h:Z

    .line 156
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->h:Z

    invoke-direct {p0, v0}, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->a(Z)V

    .line 157
    return-void
.end method
