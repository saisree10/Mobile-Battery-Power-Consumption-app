.class public Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;
.super Lrc;
.source "SmartSettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lavh;


# static fields
.field private static f:I

.field private static g:I

.field private static h:I


# instance fields
.field private A:Landroid/widget/TextView;

.field private B:Lahb;

.field private C:Landroid/view/View;

.field private D:Lcom/dianxinos/common/coins/CoinManager;

.field private E:Laug;

.field private F:Lmc;

.field private e:Lakx;

.field private i:Larr;

.field private j:Lamb;

.field private k:Lcom/dianxinos/powermanager/ui/ModeDxSwitchPreference;

.field private l:Lcom/dianxinos/powermanager/ui/ModeDxSwitchPreference;

.field private m:Lcom/dianxinos/powermanager/ui/ModeDxSwitchPreference;

.field private n:Lcom/dianxinos/powermanager/ui/ModeDxGotoPreference;

.field private o:Lcom/dianxinos/powermanager/ui/ModeDxGotoPreference;

.field private p:Lcom/dianxinos/powermanager/ui/ModeDxGotoPreference;

.field private q:Landroid/view/View;

.field private r:Landroid/widget/Button;

.field private s:Lasr;

.field private t:Landroid/widget/TextView;

.field private u:Z

.field private v:Lamp;

.field private w:Lamh;

.field private x:Lahp;

.field private y:Lahp;

.field private z:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x1

    sput v0, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->f:I

    .line 66
    const/4 v0, 0x2

    sput v0, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->g:I

    .line 67
    const/4 v0, 0x3

    sput v0, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->h:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lrc;-><init>()V

    .line 97
    new-instance v0, Lasl;

    invoke-direct {v0, p0}, Lasl;-><init>(Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;)V

    iput-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->F:Lmc;

    .line 367
    return-void
.end method

.method private a(II)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter

    .prologue
    const/16 v2, 0xa

    .line 286
    if-ge p1, v2, :cond_0

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 292
    :goto_0
    if-ge p2, v2, :cond_1

    .line 293
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 298
    :goto_1
    return-object v0

    .line 290
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 296
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static synthetic a(Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->n()V

    return-void
.end method

.method public static synthetic b(Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->o()V

    return-void
.end method

.method public static synthetic c(Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;)Lakx;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->e:Lakx;

    return-object v0
.end method

.method public static synthetic d(Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->k()V

    return-void
.end method

.method public static synthetic e(Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;)Lasr;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->s:Lasr;

    return-object v0
.end method

.method public static synthetic f()I
    .locals 1

    .prologue
    .line 60
    sget v0, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->h:I

    return v0
.end method

.method public static synthetic f(Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->l()V

    return-void
.end method

.method public static synthetic g()I
    .locals 1

    .prologue
    .line 60
    sget v0, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->g:I

    return v0
.end method

.method public static synthetic h()I
    .locals 1

    .prologue
    .line 60
    sget v0, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->f:I

    return v0
.end method

.method private i()V
    .locals 3

    .prologue
    .line 318
    new-instance v0, Lauu;

    invoke-virtual {p0}, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->getActivity()Ln;

    move-result-object v1

    invoke-direct {v0, v1}, Lauu;-><init>(Landroid/content/Context;)V

    .line 319
    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a018d

    invoke-virtual {v0, v1}, Lauu;->setTitle(I)V

    .line 320
    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a018f

    invoke-virtual {v0, v1}, Lauu;->c(I)V

    .line 321
    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a018e

    new-instance v2, Laso;

    invoke-direct {v2, p0}, Laso;-><init>(Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;)V

    invoke-virtual {v0, v1, v2}, Lauu;->a(ILandroid/view/View$OnClickListener;)V

    .line 328
    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0114

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lauu;->b(ILandroid/view/View$OnClickListener;)V

    .line 329
    invoke-virtual {v0}, Lauu;->show()V

    .line 330
    return-void
.end method

.method private j()V
    .locals 3

    .prologue
    .line 333
    new-instance v0, Lauu;

    invoke-virtual {p0}, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->getActivity()Ln;

    move-result-object v1

    invoke-direct {v0, v1}, Lauu;-><init>(Landroid/content/Context;)V

    .line 334
    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a018d

    invoke-virtual {v0, v1}, Lauu;->setTitle(I)V

    .line 335
    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0190

    invoke-virtual {v0, v1}, Lauu;->c(I)V

    .line 336
    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0114

    new-instance v2, Lasp;

    invoke-direct {v2, p0}, Lasp;-><init>(Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;)V

    invoke-virtual {v0, v1, v2}, Lauu;->a(ILandroid/view/View$OnClickListener;)V

    .line 342
    invoke-virtual {v0}, Lauu;->show()V

    .line 343
    return-void
.end method

.method private k()V
    .locals 2

    .prologue
    .line 346
    invoke-static {}, Lbag;->a()Lbag;

    move-result-object v0

    new-instance v1, Lasq;

    invoke-direct {v1, p0}, Lasq;-><init>(Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;)V

    invoke-virtual {v0, v1}, Lbag;->a(Lbai;)V

    .line 365
    return-void
.end method

.method private l()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 395
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->getActivity()Ln;

    move-result-object v0

    invoke-virtual {v0}, Ln;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lazh;->a(Landroid/content/Context;)Lazh;

    move-result-object v0

    .line 397
    invoke-virtual {v0}, Lazh;->e()V

    .line 398
    invoke-virtual {v0}, Lazh;->a()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0, v2}, Lazh;->a(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 399
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->k:Lcom/dianxinos/powermanager/ui/ModeDxSwitchPreference;

    invoke-virtual {v0, v3}, Lcom/dianxinos/powermanager/ui/ModeDxSwitchPreference;->setEnabled(Z)V

    .line 400
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->i:Larr;

    invoke-virtual {v0, v3}, Larr;->k(I)V

    .line 406
    :goto_0
    return-void

    .line 402
    :cond_0
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->getActivity()Ln;

    move-result-object v0

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0192

    invoke-virtual {p0, v1}, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private m()Z
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->e:Lakx;

    invoke-virtual {v0}, Lakx;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->B:Lahb;

    invoke-virtual {v0}, Lahb;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private n()V
    .locals 2

    .prologue
    .line 462
    invoke-direct {p0}, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 463
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->q:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 471
    :goto_0
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->n:Lcom/dianxinos/powermanager/ui/ModeDxGotoPreference;

    invoke-virtual {v0}, Lcom/dianxinos/powermanager/ui/ModeDxGotoPreference;->b()V

    .line 472
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->l:Lcom/dianxinos/powermanager/ui/ModeDxSwitchPreference;

    invoke-virtual {v0}, Lcom/dianxinos/powermanager/ui/ModeDxSwitchPreference;->b()V

    .line 473
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->k:Lcom/dianxinos/powermanager/ui/ModeDxSwitchPreference;

    invoke-virtual {v0}, Lcom/dianxinos/powermanager/ui/ModeDxSwitchPreference;->b()V

    .line 474
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->m:Lcom/dianxinos/powermanager/ui/ModeDxSwitchPreference;

    invoke-virtual {v0}, Lcom/dianxinos/powermanager/ui/ModeDxSwitchPreference;->b()V

    .line 475
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->o:Lcom/dianxinos/powermanager/ui/ModeDxGotoPreference;

    invoke-virtual {v0}, Lcom/dianxinos/powermanager/ui/ModeDxGotoPreference;->b()V

    .line 476
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->p:Lcom/dianxinos/powermanager/ui/ModeDxGotoPreference;

    invoke-virtual {p0}, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->getActivity()Ln;

    move-result-object v1

    invoke-static {v1}, Laje;->a(Landroid/content/Context;)Laje;

    move-result-object v1

    invoke-virtual {v1}, Laje;->a()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/ui/ModeDxGotoPreference;->setADUnlockStatus(Z)V

    .line 478
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->p:Lcom/dianxinos/powermanager/ui/ModeDxGotoPreference;

    invoke-virtual {v0}, Lcom/dianxinos/powermanager/ui/ModeDxGotoPreference;->b()V

    .line 480
    invoke-direct {p0}, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->o()V

    .line 481
    return-void

    .line 465
    :cond_0
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->A:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->B:Lahb;

    invoke-virtual {v1}, Lahb;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 466
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->q:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private o()V
    .locals 2

    .prologue
    .line 484
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->D:Lcom/dianxinos/common/coins/CoinManager;

    invoke-virtual {v0}, Lcom/dianxinos/common/coins/CoinManager;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->m()Z

    move-result v0

    if-nez v0, :cond_0

    .line 485
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->C:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 486
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->E:Laug;

    invoke-virtual {v0}, Laug;->a()V

    .line 490
    :goto_0
    return-void

    .line 488
    :cond_0
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->C:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public a(Lavg;)V
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 410
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->k:Lcom/dianxinos/powermanager/ui/ModeDxSwitchPreference;

    if-ne p1, v0, :cond_4

    .line 411
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->getActivity()Ln;

    move-result-object v0

    invoke-virtual {v0}, Ln;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbaj;->a(Landroid/content/Context;)Lbaj;

    move-result-object v0

    invoke-virtual {v0, v1}, Lbaj;->a(Z)V

    .line 412
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->i:Larr;

    invoke-virtual {v0}, Larr;->r()I

    move-result v0

    if-eq v0, v1, :cond_3

    .line 413
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->u:Z

    if-nez v0, :cond_1

    .line 414
    invoke-direct {p0}, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->i()V

    .line 424
    :goto_0
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->getActivity()Ln;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.dianxinos.dxbs.action.RemainingTimeUpate"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ln;->sendBroadcast(Landroid/content/Intent;)V

    .line 446
    :cond_0
    :goto_1
    return-void

    .line 415
    :cond_1
    invoke-static {}, Lbag;->a()Lbag;

    move-result-object v0

    invoke-virtual {v0}, Lbag;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 416
    invoke-direct {p0}, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->l()V

    goto :goto_0

    .line 418
    :cond_2
    invoke-direct {p0}, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->j()V

    goto :goto_0

    .line 421
    :cond_3
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->k:Lcom/dianxinos/powermanager/ui/ModeDxSwitchPreference;

    invoke-virtual {v0, v2}, Lcom/dianxinos/powermanager/ui/ModeDxSwitchPreference;->setEnabled(Z)V

    .line 422
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->i:Larr;

    invoke-virtual {v0, v2}, Larr;->k(I)V

    goto :goto_0

    .line 425
    :cond_4
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->l:Lcom/dianxinos/powermanager/ui/ModeDxSwitchPreference;

    if-ne p1, v0, :cond_7

    .line 426
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->i:Larr;

    invoke-virtual {v0}, Larr;->c()Z

    move-result v3

    .line 427
    iget-object v4, p0, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->l:Lcom/dianxinos/powermanager/ui/ModeDxSwitchPreference;

    if-nez v3, :cond_5

    move v0, v1

    :goto_2
    invoke-virtual {v4, v0}, Lcom/dianxinos/powermanager/ui/ModeDxSwitchPreference;->setEnabled(Z)V

    .line 428
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->i:Larr;

    if-nez v3, :cond_6

    :goto_3
    invoke-virtual {v0, v1}, Larr;->c(Z)V

    goto :goto_1

    :cond_5
    move v0, v2

    .line 427
    goto :goto_2

    :cond_6
    move v1, v2

    .line 428
    goto :goto_3

    .line 429
    :cond_7
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->m:Lcom/dianxinos/powermanager/ui/ModeDxSwitchPreference;

    if-ne p1, v0, :cond_a

    .line 430
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->i:Larr;

    invoke-virtual {v0}, Larr;->b()Z

    move-result v3

    .line 431
    iget-object v4, p0, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->m:Lcom/dianxinos/powermanager/ui/ModeDxSwitchPreference;

    if-nez v3, :cond_8

    move v0, v1

    :goto_4
    invoke-virtual {v4, v0}, Lcom/dianxinos/powermanager/ui/ModeDxSwitchPreference;->setEnabled(Z)V

    .line 432
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->i:Larr;

    if-nez v3, :cond_9

    :goto_5
    invoke-virtual {v0, v1}, Larr;->b(Z)V

    .line 433
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->i:Larr;

    iget-object v1, p0, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->x:Lahp;

    invoke-virtual {v1}, Lahp;->a()Z

    move-result v1

    iget-object v2, p0, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->y:Lahp;

    invoke-virtual {v2}, Lahp;->a()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Larr;->a(ZZ)V

    goto :goto_1

    :cond_8
    move v0, v2

    .line 431
    goto :goto_4

    :cond_9
    move v1, v2

    .line 432
    goto :goto_5

    .line 434
    :cond_a
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->n:Lcom/dianxinos/powermanager/ui/ModeDxGotoPreference;

    if-ne p1, v0, :cond_b

    .line 435
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->getActivity()Ln;

    move-result-object v0

    invoke-virtual {v0}, Ln;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbaj;->a(Landroid/content/Context;)Lbaj;

    move-result-object v0

    invoke-virtual {v0, v1}, Lbaj;->b(Z)V

    .line 437
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->getActivity()Ln;

    move-result-object v1

    const-class v2, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 438
    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 439
    :cond_b
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->o:Lcom/dianxinos/powermanager/ui/ModeDxGotoPreference;

    if-ne p1, v0, :cond_c

    .line 440
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->getActivity()Ln;

    move-result-object v1

    const-class v2, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 441
    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 442
    :cond_c
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->p:Lcom/dianxinos/powermanager/ui/ModeDxGotoPreference;

    if-ne p1, v0, :cond_0

    .line 443
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->getActivity()Ln;

    move-result-object v1

    const-class v2, Lcom/dianxinos/powermanager/menu/AutoCleanupSettings;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 444
    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 450
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->z:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->b:Landroid/app/Activity;

    sget-object v1, Laoe;->a:Laoe;

    invoke-virtual {v1}, Laoe;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lme;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 452
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->B:Lahb;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lahb;->a(I)V

    .line 454
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 130
    sget-object v0, Lly;->g:Lcom/dianxinos/dxbs/R$layout;

    const v0, 0x7f030083

    const/4 v2, 0x0

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->d:Landroid/view/View;

    .line 132
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->d:Landroid/view/View;

    sget-object v2, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v2, 0x7f070073

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->C:Landroid/view/View;

    .line 133
    new-instance v0, Laug;

    invoke-virtual {p0}, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->getActivity()Ln;

    move-result-object v2

    iget-object v3, p0, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->C:Landroid/view/View;

    invoke-direct {v0, v2, v3}, Laug;-><init>(Landroid/app/Activity;Landroid/view/View;)V

    iput-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->E:Laug;

    .line 134
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->getActivity()Ln;

    move-result-object v0

    invoke-static {v0}, Lcom/dianxinos/common/coins/CoinManager;->a(Landroid/content/Context;)Lcom/dianxinos/common/coins/CoinManager;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->D:Lcom/dianxinos/common/coins/CoinManager;

    .line 136
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070214

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->a(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->q:Landroid/view/View;

    .line 137
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->getActivity()Ln;

    move-result-object v0

    invoke-static {v0}, Larr;->a(Landroid/content/Context;)Larr;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->i:Larr;

    .line 138
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->getActivity()Ln;

    move-result-object v0

    invoke-static {v0}, Lamb;->a(Landroid/content/Context;)Lamb;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->j:Lamb;

    .line 140
    new-instance v0, Lahb;

    invoke-virtual {p0}, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->getActivity()Ln;

    move-result-object v2

    sget-object v3, Laoe;->a:Laoe;

    invoke-virtual {v3}, Laoe;->b()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lahb;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->B:Lahb;

    .line 142
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070217

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->a(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->z:Landroid/view/View;

    .line 143
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->z:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->z:Landroid/view/View;

    sget-object v2, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v2, 0x7f070218

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->A:Landroid/widget/TextView;

    .line 146
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070096

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/powermanager/ui/ModeDxSwitchPreference;

    iput-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->k:Lcom/dianxinos/powermanager/ui/ModeDxSwitchPreference;

    .line 147
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->k:Lcom/dianxinos/powermanager/ui/ModeDxSwitchPreference;

    invoke-virtual {v0, p0}, Lcom/dianxinos/powermanager/ui/ModeDxSwitchPreference;->setOnPreferenceChangeListener(Lavh;)V

    .line 149
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f07021c

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/powermanager/ui/ModeDxGotoPreference;

    iput-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->n:Lcom/dianxinos/powermanager/ui/ModeDxGotoPreference;

    .line 150
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->n:Lcom/dianxinos/powermanager/ui/ModeDxGotoPreference;

    invoke-virtual {v0, p0}, Lcom/dianxinos/powermanager/ui/ModeDxGotoPreference;->setOnPreferenceChangeListener(Lavh;)V

    .line 152
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070219

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/powermanager/ui/ModeDxSwitchPreference;

    iput-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->l:Lcom/dianxinos/powermanager/ui/ModeDxSwitchPreference;

    .line 153
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->l:Lcom/dianxinos/powermanager/ui/ModeDxSwitchPreference;

    invoke-virtual {v0, p0}, Lcom/dianxinos/powermanager/ui/ModeDxSwitchPreference;->setOnPreferenceChangeListener(Lavh;)V

    .line 155
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->l:Lcom/dianxinos/powermanager/ui/ModeDxSwitchPreference;

    iget-object v2, p0, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->i:Larr;

    invoke-virtual {v2}, Larr;->c()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/dianxinos/powermanager/ui/ModeDxSwitchPreference;->setEnabled(Z)V

    .line 157
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f07021d

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/powermanager/ui/ModeDxSwitchPreference;

    iput-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->m:Lcom/dianxinos/powermanager/ui/ModeDxSwitchPreference;

    .line 158
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->m:Lcom/dianxinos/powermanager/ui/ModeDxSwitchPreference;

    invoke-virtual {v0, p0}, Lcom/dianxinos/powermanager/ui/ModeDxSwitchPreference;->setOnPreferenceChangeListener(Lavh;)V

    .line 160
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->m:Lcom/dianxinos/powermanager/ui/ModeDxSwitchPreference;

    iget-object v2, p0, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->i:Larr;

    invoke-virtual {v2}, Larr;->b()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/dianxinos/powermanager/ui/ModeDxSwitchPreference;->setEnabled(Z)V

    .line 162
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f07021b

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/powermanager/ui/ModeDxGotoPreference;

    iput-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->o:Lcom/dianxinos/powermanager/ui/ModeDxGotoPreference;

    .line 163
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->o:Lcom/dianxinos/powermanager/ui/ModeDxGotoPreference;

    invoke-virtual {v0, p0}, Lcom/dianxinos/powermanager/ui/ModeDxGotoPreference;->setOnPreferenceChangeListener(Lavh;)V

    .line 165
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f07021a

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/powermanager/ui/ModeDxGotoPreference;

    iput-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->p:Lcom/dianxinos/powermanager/ui/ModeDxGotoPreference;

    .line 166
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->p:Lcom/dianxinos/powermanager/ui/ModeDxGotoPreference;

    invoke-virtual {v0, p0}, Lcom/dianxinos/powermanager/ui/ModeDxGotoPreference;->setOnPreferenceChangeListener(Lavh;)V

    .line 168
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->getActivity()Ln;

    move-result-object v0

    invoke-static {v0}, Lakx;->a(Landroid/content/Context;)Lakx;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->e:Lakx;

    .line 169
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070216

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->r:Landroid/widget/Button;

    .line 170
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->r:Landroid/widget/Button;

    new-instance v2, Lasm;

    invoke-direct {v2, p0}, Lasm;-><init>(Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->getActivity()Ln;

    move-result-object v0

    invoke-static {v0}, Lbal;->a(Landroid/content/Context;)V

    .line 198
    new-instance v0, Lasr;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lasr;-><init>(Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;Lasl;)V

    iput-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->s:Lasr;

    .line 200
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070018

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->t:Landroid/widget/TextView;

    .line 201
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->getActivity()Ln;

    move-result-object v0

    invoke-static {v0}, Lazp;->a(Landroid/content/Context;)Lazp;

    move-result-object v2

    .line 202
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->t:Landroid/widget/TextView;

    invoke-virtual {v2}, Lazp;->a()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 203
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070213

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v2}, Lazp;->b()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 204
    new-instance v0, Landroid/graphics/LinearGradient;

    invoke-virtual {p0}, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lly;->d:Lcom/dianxinos/dxbs/R$dimen;

    const v3, 0x7f080134

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v4, v2

    invoke-virtual {p0}, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lly;->c:Lcom/dianxinos/dxbs/R$color;

    const v3, 0x7f090063

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {p0}, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lly;->c:Lcom/dianxinos/dxbs/R$color;

    const v3, 0x7f090064

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 209
    iget-object v1, p0, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->t:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 211
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->getActivity()Ln;

    move-result-object v0

    invoke-static {v0}, Lamp;->a(Landroid/content/Context;)Lamp;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->v:Lamp;

    .line 212
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->v:Lamp;

    invoke-virtual {v0}, Lamp;->g()Lamh;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->w:Lamh;

    .line 213
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->w:Lamh;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lamh;->a(I)Lahp;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->x:Lahp;

    .line 214
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->w:Lamh;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lamh;->a(I)Lahp;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->y:Lahp;

    .line 215
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->d:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 303
    invoke-super {p0}, Lrc;->onDestroy()V

    .line 305
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->getActivity()Ln;

    move-result-object v0

    invoke-static {v0}, Lakx;->a(Landroid/content/Context;)Lakx;

    move-result-object v0

    invoke-virtual {v0}, Lakx;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 306
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->getActivity()Ln;

    move-result-object v0

    invoke-static {v0}, Larr;->a(Landroid/content/Context;)Larr;

    move-result-object v0

    invoke-virtual {v0}, Larr;->t()V

    .line 308
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 312
    invoke-super {p0}, Lrc;->onPause()V

    .line 313
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->getActivity()Ln;

    move-result-object v0

    iget-object v1, p0, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->F:Lmc;

    invoke-static {v0, v1}, Lcom/dianxinos/common/coins/CoinManager;->b(Landroid/content/Context;Lmc;)V

    .line 314
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->i:Larr;

    invoke-virtual {v0}, Larr;->e()V

    .line 315
    return-void
.end method

.method public onResume()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 220
    invoke-super {p0}, Lrc;->onResume()V

    .line 221
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->getActivity()Ln;

    move-result-object v0

    iget-object v3, p0, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->F:Lmc;

    invoke-static {v0, v3}, Lcom/dianxinos/common/coins/CoinManager;->a(Landroid/content/Context;Lmc;)V

    .line 223
    invoke-direct {p0}, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->n()V

    .line 224
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->getActivity()Ln;

    move-result-object v0

    invoke-virtual {v0}, Ln;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbag;->a(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->u:Z

    .line 225
    iget-object v3, p0, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->k:Lcom/dianxinos/powermanager/ui/ModeDxSwitchPreference;

    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->i:Larr;

    invoke-virtual {v0}, Larr;->r()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/dianxinos/powermanager/ui/ModeDxSwitchPreference;->setEnabled(Z)V

    .line 227
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->i:Larr;

    invoke-virtual {v0}, Larr;->k()I

    move-result v0

    .line 228
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->getActivity()Ln;

    move-result-object v3

    invoke-virtual {v3}, Ln;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lamp;->a(Landroid/content/Context;)Lamp;

    move-result-object v3

    .line 230
    iget-object v4, p0, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->i:Larr;

    invoke-virtual {v4}, Larr;->i()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 231
    invoke-virtual {v3, v0}, Lamp;->g(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lamp;->c(I)Ljava/lang/String;

    move-result-object v0

    .line 233
    iget-object v4, p0, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->n:Lcom/dianxinos/powermanager/ui/ModeDxGotoPreference;

    invoke-virtual {v4, v1}, Lcom/dianxinos/powermanager/ui/ModeDxGotoPreference;->setEnabled(Z)V

    .line 234
    iget-object v4, p0, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->n:Lcom/dianxinos/powermanager/ui/ModeDxGotoPreference;

    sget-object v5, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v5, 0x7f0a0146

    new-array v6, v8, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->i:Larr;

    invoke-virtual {v7}, Larr;->j()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    aput-object v0, v6, v1

    invoke-virtual {p0, v5, v6}, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/dianxinos/powermanager/ui/ModeDxGotoPreference;->setEnabledSpanned(Landroid/text/Spanned;)V

    .line 243
    :goto_1
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->i:Larr;

    invoke-virtual {v0}, Larr;->m()I

    move-result v0

    .line 244
    invoke-virtual {v3, v0}, Lamp;->g(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lamp;->c(I)Ljava/lang/String;

    move-result-object v0

    .line 246
    iget-object v3, p0, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->i:Larr;

    invoke-virtual {v3}, Larr;->n()[I

    move-result-object v3

    .line 247
    aget v4, v3, v2

    aget v3, v3, v1

    invoke-direct {p0, v4, v3}, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->a(II)Ljava/lang/String;

    move-result-object v3

    .line 248
    iget-object v4, p0, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->i:Larr;

    invoke-virtual {v4}, Larr;->o()[I

    move-result-object v4

    .line 249
    aget v5, v4, v2

    aget v4, v4, v1

    invoke-direct {p0, v5, v4}, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->a(II)Ljava/lang/String;

    move-result-object v4

    .line 250
    iget-object v5, p0, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->i:Larr;

    invoke-virtual {v5}, Larr;->l()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 251
    iget-object v5, p0, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->o:Lcom/dianxinos/powermanager/ui/ModeDxGotoPreference;

    invoke-virtual {v5, v1}, Lcom/dianxinos/powermanager/ui/ModeDxGotoPreference;->setEnabled(Z)V

    .line 252
    iget-object v5, p0, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->o:Lcom/dianxinos/powermanager/ui/ModeDxGotoPreference;

    sget-object v6, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v6, 0x7f0a014f

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v3, v7, v2

    aput-object v4, v7, v1

    aput-object v0, v7, v8

    invoke-virtual {p0, v6, v7}, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/dianxinos/powermanager/ui/ModeDxGotoPreference;->setEnabledSpanned(Landroid/text/Spanned;)V

    .line 261
    :goto_2
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->j:Lamb;

    invoke-virtual {v0}, Lamb;->h()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 262
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->p:Lcom/dianxinos/powermanager/ui/ModeDxGotoPreference;

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/ui/ModeDxGotoPreference;->setEnabled(Z)V

    .line 267
    :goto_3
    invoke-direct {p0}, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->m()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 269
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->getActivity()Ln;

    move-result-object v0

    const-string v2, "mode"

    const-string v3, "smart"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v2, v3, v1}, Lbal;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    .line 281
    :goto_4
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->getActivity()Ln;

    move-result-object v0

    invoke-static {v0}, Lpt;->a(Landroid/content/Context;)V

    .line 282
    return-void

    :cond_0
    move v0, v2

    .line 225
    goto/16 :goto_0

    .line 238
    :cond_1
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->n:Lcom/dianxinos/powermanager/ui/ModeDxGotoPreference;

    invoke-virtual {v0, v2}, Lcom/dianxinos/powermanager/ui/ModeDxGotoPreference;->setEnabled(Z)V

    .line 239
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->n:Lcom/dianxinos/powermanager/ui/ModeDxGotoPreference;

    sget-object v4, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v4, 0x7f0a0149

    invoke-virtual {p0, v4}, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/dianxinos/powermanager/ui/ModeDxGotoPreference;->setEnabledString(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 256
    :cond_2
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->o:Lcom/dianxinos/powermanager/ui/ModeDxGotoPreference;

    invoke-virtual {v0, v2}, Lcom/dianxinos/powermanager/ui/ModeDxGotoPreference;->setEnabled(Z)V

    .line 257
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->o:Lcom/dianxinos/powermanager/ui/ModeDxGotoPreference;

    sget-object v3, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v3, 0x7f0a014e

    invoke-virtual {p0, v3}, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/dianxinos/powermanager/ui/ModeDxGotoPreference;->setEnabledString(Ljava/lang/String;)V

    goto :goto_2

    .line 264
    :cond_3
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->p:Lcom/dianxinos/powermanager/ui/ModeDxGotoPreference;

    invoke-virtual {v0, v2}, Lcom/dianxinos/powermanager/ui/ModeDxGotoPreference;->setEnabled(Z)V

    goto :goto_3

    .line 274
    :cond_4
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->getActivity()Ln;

    move-result-object v0

    const-string v2, "mode"

    const-string v3, "smartiap"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v2, v3, v1}, Lbal;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    .line 278
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->getActivity()Ln;

    move-result-object v0

    invoke-static {v0}, Lme;->i(Landroid/content/Context;)V

    goto :goto_4
.end method
