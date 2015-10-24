.class public Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;
.super Laao;
.source "SmartModeTimeSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lavh;
.implements Lawz;


# static fields
.field private static b:Z


# instance fields
.field a:Landroid/os/Handler;

.field private c:Lcom/dianxinos/powermanager/ui/TimePickerView;

.field private d:Lcom/dianxinos/powermanager/ui/TimePickerView;

.field private e:Lcom/dianxinos/powermanager/ui/DXSwitchButton;

.field private f:Z

.field private g:Larr;

.field private h:I

.field private i:I

.field private j:Lamp;

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:Landroid/widget/ImageView;

.field private p:Lcom/dianxinos/powermanager/ui/DxGotoPreference;

.field private q:Lcom/dianxinos/powermanager/ui/DxGotoPreference;

.field private r:I

.field private s:I

.field private t:Landroid/app/Dialog;

.field private u:I

.field private v:I

.field private w:Laml;

.field private x:Lcom/dianxinos/powermanager/ui/MainTitle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    sput-boolean v0, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Laao;-><init>()V

    .line 281
    new-instance v0, Lasi;

    invoke-direct {v0, p0}, Lasi;-><init>(Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;)V

    iput-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->a:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic a(Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    iput p1, p0, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->h:I

    return p1
.end method

.method public static synthetic a(Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;)Landroid/app/Dialog;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->t:Landroid/app/Dialog;

    return-object v0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 193
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    :goto_0
    return-void

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->t:Landroid/app/Dialog;

    if-nez v0, :cond_1

    .line 197
    new-instance v0, Landroid/app/Dialog;

    sget-object v1, Lly;->j:Lcom/dianxinos/dxbs/R$style;

    const v1, 0x7f0b0007

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->t:Landroid/app/Dialog;

    .line 198
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->t:Landroid/app/Dialog;

    sget-object v1, Lly;->g:Lcom/dianxinos/dxbs/R$layout;

    const v1, 0x7f030013

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 200
    :cond_1
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->t:Landroid/app/Dialog;

    sget-object v1, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v1, 0x7f070018

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    check-cast v0, Landroid/widget/TextView;

    .line 201
    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a00f2

    invoke-virtual {p0, v1}, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->t:Landroid/app/Dialog;

    sget-object v1, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v1, 0x7f07005c

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    check-cast v0, Landroid/widget/TextView;

    .line 204
    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a00fe

    invoke-virtual {p0, v1}, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->t:Landroid/app/Dialog;

    sget-object v1, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v1, 0x7f070060

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    check-cast v0, Landroid/widget/Button;

    .line 207
    new-instance v1, Lasg;

    invoke-direct {v1, p0}, Lasg;-><init>(Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->t:Landroid/app/Dialog;

    sget-object v1, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v1, 0x7f07005e

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    check-cast v0, Landroid/widget/Button;

    .line 219
    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0100

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 220
    new-instance v1, Lash;

    invoke-direct {v1, p0}, Lash;-><init>(Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 240
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->t:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0
.end method

.method private a(Z)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 171
    if-eqz p1, :cond_0

    .line 172
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->e:Lcom/dianxinos/powermanager/ui/DXSwitchButton;

    invoke-virtual {v0, p1}, Lcom/dianxinos/powermanager/ui/DXSwitchButton;->setStatus(Z)V

    .line 173
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->p:Lcom/dianxinos/powermanager/ui/DxGotoPreference;

    invoke-virtual {v0, v2}, Lcom/dianxinos/powermanager/ui/DxGotoPreference;->setFocusable(Z)V

    .line 174
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->q:Lcom/dianxinos/powermanager/ui/DxGotoPreference;

    invoke-virtual {v0, v2}, Lcom/dianxinos/powermanager/ui/DxGotoPreference;->setFocusable(Z)V

    .line 175
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->o:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 183
    :goto_0
    return-void

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->e:Lcom/dianxinos/powermanager/ui/DXSwitchButton;

    invoke-virtual {v0, p1}, Lcom/dianxinos/powermanager/ui/DXSwitchButton;->setStatus(Z)V

    .line 179
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->p:Lcom/dianxinos/powermanager/ui/DxGotoPreference;

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/ui/DxGotoPreference;->setFocusable(Z)V

    .line 180
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->q:Lcom/dianxinos/powermanager/ui/DxGotoPreference;

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/ui/DxGotoPreference;->setFocusable(Z)V

    .line 181
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->o:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public static synthetic b(Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;)I
    .locals 1
    .parameter

    .prologue
    .line 38
    iget v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->v:I

    return v0
.end method

.method public static synthetic b(Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    iput p1, p0, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->i:I

    return p1
.end method

.method public static synthetic c(Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;)I
    .locals 1
    .parameter

    .prologue
    .line 38
    iget v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->u:I

    return v0
.end method

.method public static synthetic c(Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    iput p1, p0, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->r:I

    return p1
.end method

.method public static synthetic d(Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    iput p1, p0, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->s:I

    return p1
.end method

.method public static synthetic d(Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;)Lamp;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->j:Lamp;

    return-object v0
.end method

.method public static synthetic e(Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    iput p1, p0, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->u:I

    return p1
.end method

.method public static synthetic e(Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;)Lcom/dianxinos/powermanager/ui/DxGotoPreference;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->p:Lcom/dianxinos/powermanager/ui/DxGotoPreference;

    return-object v0
.end method

.method public static synthetic f(Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    iput p1, p0, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->v:I

    return p1
.end method

.method public static synthetic f(Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;)Lcom/dianxinos/powermanager/ui/DxGotoPreference;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->q:Lcom/dianxinos/powermanager/ui/DxGotoPreference;

    return-object v0
.end method

.method public static synthetic g(Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->a()V

    return-void
.end method


# virtual methods
.method public a(Lavg;)V
    .locals 4
    .parameter

    .prologue
    .line 322
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->p:Lcom/dianxinos/powermanager/ui/DxGotoPreference;

    if-ne p1, v0, :cond_1

    .line 323
    new-instance v0, Laml;

    iget v1, p0, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->h:I

    iget-object v2, p0, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->a:Landroid/os/Handler;

    new-instance v3, Lasj;

    invoke-direct {v3, p0}, Lasj;-><init>(Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;)V

    invoke-direct {v0, p0, v1, v2, v3}, Laml;-><init>(Landroid/content/Context;ILandroid/os/Handler;Lamm;)V

    iput-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->w:Laml;

    .line 339
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->w:Laml;

    invoke-virtual {v0}, Laml;->show()V

    .line 359
    :cond_0
    :goto_0
    return-void

    .line 340
    :cond_1
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->q:Lcom/dianxinos/powermanager/ui/DxGotoPreference;

    if-ne p1, v0, :cond_0

    .line 341
    new-instance v0, Laml;

    iget v1, p0, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->r:I

    iget-object v2, p0, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->a:Landroid/os/Handler;

    new-instance v3, Lask;

    invoke-direct {v3, p0}, Lask;-><init>(Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;)V

    invoke-direct {v0, p0, v1, v2, v3}, Laml;-><init>(Landroid/content/Context;ILandroid/os/Handler;Lamm;)V

    iput-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->w:Laml;

    .line 356
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->w:Laml;

    invoke-virtual {v0}, Laml;->show()V

    goto :goto_0
.end method

.method public a(Lcom/dianxinos/powermanager/ui/TimePickerView;II)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 140
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->c:Lcom/dianxinos/powermanager/ui/TimePickerView;

    if-ne v0, p1, :cond_0

    .line 141
    iput p2, p0, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->k:I

    .line 142
    iput p3, p0, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->l:I

    .line 148
    :goto_0
    return-void

    .line 145
    :cond_0
    iput p2, p0, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->m:I

    .line 146
    iput p3, p0, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->n:I

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 311
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 312
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 313
    const-string v1, "ModeName"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 315
    iget-object v1, p0, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->w:Laml;

    invoke-virtual {v1, v0}, Laml;->a(Ljava/lang/String;)V

    .line 317
    :cond_0
    invoke-super {p0, p1, p2, p3}, Laao;->onActivityResult(IILandroid/content/Intent;)V

    .line 318
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 296
    invoke-super {p0}, Laao;->onBackPressed()V

    .line 297
    iget v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->k:I

    iget v1, p0, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->m:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->l:I

    iget v1, p0, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->n:I

    if-ne v0, v1, :cond_0

    .line 298
    sget-object v0, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v0, 0x7f0a0155

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 307
    :goto_0
    return-void

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->g:Larr;

    iget v1, p0, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->i:I

    invoke-virtual {v0, v1}, Larr;->e(I)V

    .line 302
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->g:Larr;

    iget v1, p0, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->s:I

    invoke-virtual {v0, v1}, Larr;->g(I)V

    .line 303
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->g:Larr;

    iget v1, p0, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->k:I

    iget v2, p0, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->l:I

    invoke-virtual {v0, v1, v2}, Larr;->a(II)V

    .line 304
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->g:Larr;

    iget v1, p0, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->m:I

    iget v2, p0, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->n:I

    invoke-virtual {v0, v1, v2}, Larr;->b(II)V

    .line 305
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->g:Larr;

    iget-object v1, p0, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->j:Lamp;

    iget v2, p0, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->h:I

    invoke-virtual {v1, v2}, Lamp;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Larr;->a(Ljava/lang/String;)V

    .line 306
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lass;->a(Landroid/content/Context;)Lass;

    move-result-object v0

    invoke-virtual {v0}, Lass;->d()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 245
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->e:Lcom/dianxinos/powermanager/ui/DXSwitchButton;

    if-ne p1, v0, :cond_2

    .line 246
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->e:Lcom/dianxinos/powermanager/ui/DXSwitchButton;

    invoke-virtual {v0}, Lcom/dianxinos/powermanager/ui/DXSwitchButton;->getStatus()Z

    move-result v0

    if-nez v0, :cond_1

    .line 247
    iput-boolean v2, p0, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->f:Z

    .line 248
    invoke-direct {p0, v2}, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->a(Z)V

    .line 254
    :goto_0
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->g:Larr;

    iget-boolean v1, p0, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->f:Z

    invoke-virtual {v0, v1}, Larr;->e(Z)V

    .line 255
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.dianxinos.dxbs.action.RemainingTimeUpate"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->sendBroadcast(Landroid/content/Intent;)V

    .line 259
    :cond_0
    :goto_1
    return-void

    .line 251
    :cond_1
    iput-boolean v1, p0, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->f:Z

    .line 252
    invoke-direct {p0, v1}, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->a(Z)V

    goto :goto_0

    .line 256
    :cond_2
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->o:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_0

    .line 257
    sget-object v0, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v0, 0x7f0a0156

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 85
    invoke-super {p0, p1}, Laao;->onCreate(Landroid/os/Bundle;)V

    .line 86
    sget-object v0, Lly;->g:Lcom/dianxinos/dxbs/R$layout;

    const v0, 0x7f030082

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->setContentView(I)V

    .line 87
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070007

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/powermanager/ui/MainTitle;

    iput-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->x:Lcom/dianxinos/powermanager/ui/MainTitle;

    .line 88
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070134

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 89
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lly;->d:Lcom/dianxinos/dxbs/R$dimen;

    const v2, 0x7f0801b7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 90
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->x:Lcom/dianxinos/powermanager/ui/MainTitle;

    sget-object v1, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v1, 0x7f070135

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/ui/MainTitle;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/powermanager/ui/DXSwitchButton;

    iput-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->e:Lcom/dianxinos/powermanager/ui/DXSwitchButton;

    .line 91
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->e:Lcom/dianxinos/powermanager/ui/DXSwitchButton;

    invoke-virtual {v0, v3}, Lcom/dianxinos/powermanager/ui/DXSwitchButton;->setVisibility(I)V

    .line 92
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->e:Lcom/dianxinos/powermanager/ui/DXSwitchButton;

    invoke-virtual {v0, p0}, Lcom/dianxinos/powermanager/ui/DXSwitchButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    invoke-static {p0}, Larr;->a(Landroid/content/Context;)Larr;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->g:Larr;

    .line 95
    invoke-static {p0}, Lamp;->a(Landroid/content/Context;)Lamp;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->j:Lamp;

    .line 96
    invoke-static {p0}, Larr;->a(Landroid/content/Context;)Larr;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->g:Larr;

    .line 97
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->g:Larr;

    invoke-virtual {v0}, Larr;->m()I

    move-result v0

    iput v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->i:I

    .line 98
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->j:Lamp;

    iget v1, p0, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->i:I

    invoke-virtual {v0, v1}, Lamp;->g(I)I

    move-result v0

    iput v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->h:I

    .line 99
    iget v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->h:I

    if-ne v0, v4, :cond_0

    .line 100
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->j:Lamp;

    invoke-virtual {v0, v3}, Lamp;->g(I)I

    move-result v0

    iput v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->h:I

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->g:Larr;

    iget-object v1, p0, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->j:Lamp;

    invoke-virtual {v1}, Lamp;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Larr;->f(I)I

    move-result v0

    iput v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->s:I

    .line 104
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->j:Lamp;

    iget v1, p0, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->s:I

    invoke-virtual {v0, v1}, Lamp;->g(I)I

    move-result v0

    iput v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->r:I

    .line 105
    iget v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->r:I

    if-ne v0, v4, :cond_1

    .line 106
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->j:Lamp;

    invoke-virtual {v0, v3}, Lamp;->g(I)I

    move-result v0

    iput v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->r:I

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->g:Larr;

    invoke-virtual {v0}, Larr;->n()[I

    move-result-object v0

    .line 110
    iget-object v1, p0, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->g:Larr;

    invoke-virtual {v1}, Larr;->o()[I

    move-result-object v1

    .line 111
    aget v2, v0, v3

    iput v2, p0, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->k:I

    .line 112
    aget v0, v0, v5

    iput v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->l:I

    .line 113
    aget v0, v1, v3

    iput v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->m:I

    .line 114
    aget v0, v1, v5

    iput v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->n:I

    .line 115
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f0701e2

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/powermanager/ui/TimePickerView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->c:Lcom/dianxinos/powermanager/ui/TimePickerView;

    .line 116
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->c:Lcom/dianxinos/powermanager/ui/TimePickerView;

    invoke-virtual {v0, p0}, Lcom/dianxinos/powermanager/ui/TimePickerView;->setListener(Lawz;)V

    .line 117
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->c:Lcom/dianxinos/powermanager/ui/TimePickerView;

    iget v1, p0, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->k:I

    iget v2, p0, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->l:I

    invoke-virtual {v0, v1, v2}, Lcom/dianxinos/powermanager/ui/TimePickerView;->a(II)V

    .line 118
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f0701e5

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/powermanager/ui/TimePickerView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->d:Lcom/dianxinos/powermanager/ui/TimePickerView;

    .line 119
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->d:Lcom/dianxinos/powermanager/ui/TimePickerView;

    invoke-virtual {v0, p0}, Lcom/dianxinos/powermanager/ui/TimePickerView;->setListener(Lawz;)V

    .line 120
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->d:Lcom/dianxinos/powermanager/ui/TimePickerView;

    iget v1, p0, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->m:I

    iget v2, p0, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->n:I

    invoke-virtual {v0, v1, v2}, Lcom/dianxinos/powermanager/ui/TimePickerView;->a(II)V

    .line 122
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f07001d

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->o:Landroid/widget/ImageView;

    .line 123
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->o:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070211

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/powermanager/ui/DxGotoPreference;

    iput-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->p:Lcom/dianxinos/powermanager/ui/DxGotoPreference;

    .line 126
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->p:Lcom/dianxinos/powermanager/ui/DxGotoPreference;

    iget-object v1, p0, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->j:Lamp;

    iget v2, p0, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->h:I

    invoke-virtual {v1, v2}, Lamp;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/ui/DxGotoPreference;->setSummary(Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->p:Lcom/dianxinos/powermanager/ui/DxGotoPreference;

    invoke-virtual {v0, p0}, Lcom/dianxinos/powermanager/ui/DxGotoPreference;->setOnPreferenceChangeListener(Lavh;)V

    .line 128
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070212

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/powermanager/ui/DxGotoPreference;

    iput-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->q:Lcom/dianxinos/powermanager/ui/DxGotoPreference;

    .line 129
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->q:Lcom/dianxinos/powermanager/ui/DxGotoPreference;

    iget-object v1, p0, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->j:Lamp;

    iget v2, p0, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->r:I

    invoke-virtual {v1, v2}, Lamp;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/ui/DxGotoPreference;->setSummary(Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->q:Lcom/dianxinos/powermanager/ui/DxGotoPreference;

    invoke-virtual {v0, p0}, Lcom/dianxinos/powermanager/ui/DxGotoPreference;->setOnPreferenceChangeListener(Lavh;)V

    .line 136
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->w:Laml;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->w:Laml;

    invoke-virtual {v0}, Laml;->dismiss()V

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->t:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    .line 78
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->t:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 80
    :cond_1
    invoke-super {p0}, Laao;->onDestroy()V

    .line 81
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 167
    invoke-super {p0}, Laao;->onPause()V

    .line 168
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 152
    invoke-super {p0}, Laao;->onResume()V

    .line 153
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->g:Larr;

    invoke-virtual {v0}, Larr;->l()Z

    move-result v0

    iput-boolean v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->f:Z

    .line 154
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->x:Lcom/dianxinos/powermanager/ui/MainTitle;

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f020450

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/ui/MainTitle;->setLeftButtonIcon(I)V

    .line 155
    iget-object v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->x:Lcom/dianxinos/powermanager/ui/MainTitle;

    new-instance v1, Lasf;

    invoke-direct {v1, p0}, Lasf;-><init>(Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;)V

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/ui/MainTitle;->setLeftButtonOnclickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->f:Z

    invoke-direct {p0, v0}, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->a(Z)V

    .line 163
    return-void
.end method
