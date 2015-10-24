.class public Lcom/dianxinos/powermanager/charging/HealthChargingActivity;
.super Laam;
.source "HealthChargingActivity.java"

# interfaces
.implements Ladc;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private A:I

.field private B:I

.field private C:Landroid/widget/TextView;

.field private D:Landroid/widget/TextView;

.field private E:Landroid/widget/TextView;

.field private F:Landroid/widget/LinearLayout;

.field private G:Landroid/widget/LinearLayout;

.field private H:Landroid/widget/LinearLayout;

.field private I:Laff;

.field private J:Lcom/dianxinos/powermanager/ui/DxBatteryGraph;

.field private K:Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;

.field private L:Landroid/widget/TextView;

.field private M:Landroid/widget/TextView;

.field private N:Landroid/widget/TextView;

.field private O:Landroid/widget/ImageView;

.field private P:Landroid/widget/ImageView;

.field private Q:Lafc;

.field a:Ljava/util/ArrayList;

.field private b:Lafn;

.field private c:Lacz;

.field private d:Ladd;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Z

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:I

.field private l:Landroid/widget/ImageView;

.field private m:Landroid/widget/ImageView;

.field private n:Landroid/widget/ImageView;

.field private o:Landroid/widget/ImageView;

.field private p:Landroid/widget/ImageView;

.field private q:Landroid/widget/ImageView;

.field private r:Landroid/widget/ImageView;

.field private s:Landroid/widget/ImageView;

.field private t:Landroid/widget/ImageView;

.field private u:Ljava/util/Calendar;

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:Ladh;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 46
    invoke-direct {p0}, Laam;-><init>()V

    .line 57
    new-instance v0, Lafn;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lafn;-><init>(Lcom/dianxinos/powermanager/charging/HealthChargingActivity;Lafm;)V

    iput-object v0, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->b:Lafn;

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->a:Ljava/util/ArrayList;

    .line 223
    return-void
.end method

.method public static synthetic a(Lcom/dianxinos/powermanager/charging/HealthChargingActivity;)Ladd;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->d:Ladd;

    return-object v0
.end method

.method private a(J)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 395
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 396
    iget-object v1, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->u:Ljava/util/Calendar;

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 397
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->u:Ljava/util/Calendar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->u:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->w:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->u:Ljava/util/Calendar;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 344
    iget-object v0, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->O:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 345
    iget-object v0, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->P:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 346
    iget-object v0, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->O:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 347
    iget-object v0, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->P:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 348
    return-void
.end method

.method private a(Lafh;)V
    .locals 8
    .parameter

    .prologue
    const-wide/16 v6, -0x1

    const v5, 0x7f020178

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 244
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->g:Z

    if-eqz v0, :cond_1

    .line 245
    iget-object v0, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->I:Laff;

    invoke-virtual {v0}, Laff;->f()Lafh;

    move-result-object v0

    invoke-virtual {v0}, Lafh;->c()I

    move-result v0

    .line 246
    int-to-long v1, v0

    cmp-long v1, v1, v6

    if-nez v1, :cond_0

    .line 247
    iget-object v0, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->K:Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;

    invoke-virtual {v0, v3, v3}, Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;->a(II)V

    .line 251
    :goto_0
    iget-object v0, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->M:Landroid/widget/TextView;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0176

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 262
    :goto_1
    iget-object v0, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->d:Ladd;

    iget v0, v0, Ladd;->e:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 263
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f020146

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 265
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 266
    iget-object v1, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->L:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 267
    iget-object v0, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->L:Landroid/widget/TextView;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0364

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 268
    iget-object v0, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->L:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 280
    :goto_2
    iget-object v0, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->I:Laff;

    invoke-virtual {v0}, Laff;->g()Z

    move-result v0

    if-nez v0, :cond_7

    .line 281
    invoke-virtual {p1}, Lafh;->b()Ljava/util/ArrayList;

    move-result-object v0

    .line 284
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lafg;

    .line 288
    iget-object v1, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->a:Ljava/util/ArrayList;

    iget v3, v0, Lafg;->b:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lafo;

    .line 289
    iget-object v3, v1, Lafo;->e:Landroid/widget/TextView;

    iget v4, v0, Lafg;->a:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 290
    iget-object v3, v1, Lafo;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v3, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 291
    invoke-direct {p0, v1, v0}, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->a(Lafo;Lafg;)V

    goto :goto_3

    .line 249
    :cond_0
    iget-object v1, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->K:Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;

    invoke-virtual {v1, v0}, Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;->a(I)V

    goto :goto_0

    .line 253
    :cond_1
    iget-object v0, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->d:Ladd;

    iget v0, v0, Ladd;->k:I

    .line 254
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 255
    iget-object v0, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->K:Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;

    invoke-virtual {v0, v3, v3}, Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;->a(II)V

    .line 259
    :goto_4
    iget-object v0, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->M:Landroid/widget/TextView;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0177

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 257
    :cond_2
    iget-object v1, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->K:Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;

    invoke-virtual {v1, v0}, Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;->a(I)V

    goto :goto_4

    .line 269
    :cond_3
    iget-object v0, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->d:Ladd;

    iget v0, v0, Ladd;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 270
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f020145

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 272
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 273
    iget-object v1, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->L:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 274
    iget-object v0, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->L:Landroid/widget/TextView;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0365

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 275
    iget-object v0, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->L:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 277
    :cond_4
    iget-object v0, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->L:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 293
    :cond_5
    iget-object v0, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->f:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v2, 0x7f0a0058

    invoke-virtual {p0, v2}, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->y:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 297
    iget-object v0, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->z:Ladh;

    invoke-virtual {v0}, Ladh;->c()J

    move-result-wide v0

    .line 298
    cmp-long v2, v6, v0

    if-nez v2, :cond_6

    .line 299
    iget-object v0, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->f:Landroid/widget/TextView;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a017d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 304
    :goto_5
    iget-object v0, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->O:Landroid/widget/ImageView;

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 305
    iget-object v0, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->P:Landroid/widget/ImageView;

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 309
    :goto_6
    return-void

    .line 301
    :cond_6
    sget-object v2, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v2, 0x7f0a017e

    invoke-virtual {p0, v2}, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 302
    iget-object v3, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->f:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, v0, v1}, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->a(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 307
    :cond_7
    invoke-direct {p0, p1}, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->b(Lafh;)V

    goto :goto_6
.end method

.method private a(Lafo;Lafg;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const v4, 0x7f02014f

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 352
    iget-object v0, p1, Lafo;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 353
    iget-object v0, p1, Lafo;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 354
    iget-object v0, p1, Lafo;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 355
    iget-object v0, p1, Lafo;->e:Landroid/widget/TextView;

    iget v1, p2, Lafg;->c:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 357
    invoke-virtual {p2}, Lafg;->d()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 392
    :goto_0
    return-void

    .line 359
    :pswitch_0
    iget-object v0, p1, Lafo;->b:Landroid/widget/ImageView;

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 360
    iget-object v0, p1, Lafo;->c:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 361
    iget-object v0, p1, Lafo;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 362
    iget-object v0, p1, Lafo;->f:Landroid/widget/TextView;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0183

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 363
    iget-object v0, p1, Lafo;->f:Landroid/widget/TextView;

    iget v1, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->B:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 365
    iget-object v0, p1, Lafo;->d:Landroid/widget/ImageView;

    iget v1, p2, Lafg;->e:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 366
    iget-object v0, p1, Lafo;->e:Landroid/widget/TextView;

    iget v1, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->B:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 369
    :pswitch_1
    iget-object v0, p1, Lafo;->b:Landroid/widget/ImageView;

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 370
    iget-object v0, p1, Lafo;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 371
    iget-object v0, p1, Lafo;->c:Landroid/widget/ImageView;

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f0201d1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 372
    sget-object v0, Lly;->a:Lcom/dianxinos/dxbs/R$anim;

    const v0, 0x7f04000b

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 374
    iget-object v1, p1, Lafo;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 375
    iget-object v0, p1, Lafo;->f:Landroid/widget/TextView;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0182

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 376
    iget-object v0, p1, Lafo;->f:Landroid/widget/TextView;

    iget v1, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->A:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 378
    iget-object v0, p1, Lafo;->d:Landroid/widget/ImageView;

    iget v1, p2, Lafg;->f:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 379
    iget-object v0, p1, Lafo;->e:Landroid/widget/TextView;

    iget v1, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->A:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 382
    :pswitch_2
    iget-object v0, p1, Lafo;->b:Landroid/widget/ImageView;

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f020151

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 383
    iget-object v0, p1, Lafo;->c:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 384
    iget-object v0, p1, Lafo;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 385
    iget-object v0, p1, Lafo;->f:Landroid/widget/TextView;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0181

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 386
    iget-object v0, p1, Lafo;->f:Landroid/widget/TextView;

    iget v1, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->A:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 388
    iget-object v0, p1, Lafo;->d:Landroid/widget/ImageView;

    iget v1, p2, Lafg;->f:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 389
    iget-object v0, p1, Lafo;->e:Landroid/widget/TextView;

    iget v1, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->A:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 357
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private b(Lafh;)V
    .locals 8
    .parameter

    .prologue
    const/16 v7, 0x67

    const v6, 0x7f020179

    const v5, 0x7f020178

    .line 313
    invoke-virtual {p1}, Lafh;->b()Ljava/util/ArrayList;

    move-result-object v0

    .line 314
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lafg;

    .line 318
    iget-object v1, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->a:Ljava/util/ArrayList;

    iget v3, v0, Lafg;->b:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lafo;

    .line 319
    iget-object v3, v1, Lafo;->e:Landroid/widget/TextView;

    iget v4, v0, Lafg;->a:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 320
    iget-object v3, v1, Lafo;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v3, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 321
    invoke-direct {p0, v1, v0}, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->a(Lafo;Lafg;)V

    goto :goto_0

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->I:Laff;

    invoke-virtual {v0}, Laff;->e()I

    move-result v0

    const/16 v1, 0x69

    if-ne v0, v1, :cond_1

    .line 326
    sget-object v0, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    sget-object v0, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    invoke-direct {p0, v5, v5}, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->a(II)V

    .line 335
    :goto_1
    iget-object v0, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->I:Laff;

    invoke-virtual {v0}, Laff;->e()I

    move-result v0

    if-ne v0, v7, :cond_4

    .line 336
    iget-object v0, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->f:Landroid/widget/TextView;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0180

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 341
    :goto_2
    return-void

    .line 327
    :cond_1
    iget-object v0, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->I:Laff;

    invoke-virtual {v0}, Laff;->e()I

    move-result v0

    const/16 v1, 0x66

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->I:Laff;

    invoke-virtual {v0}, Laff;->e()I

    move-result v0

    if-ne v0, v7, :cond_3

    .line 329
    :cond_2
    sget-object v0, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    sget-object v0, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    invoke-direct {p0, v6, v6}, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->a(II)V

    goto :goto_1

    .line 331
    :cond_3
    sget-object v0, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    sget-object v0, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    invoke-direct {p0, v6, v5}, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->a(II)V

    goto :goto_1

    .line 338
    :cond_4
    iget-object v0, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->f:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v2, 0x7f0a0058

    invoke-virtual {p0, v2}, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->y:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method public static synthetic b(Lcom/dianxinos/powermanager/charging/HealthChargingActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->g:Z

    return v0
.end method

.method public static synthetic c(Lcom/dianxinos/powermanager/charging/HealthChargingActivity;)Lacz;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->c:Lacz;

    return-object v0
.end method

.method public static synthetic d(Lcom/dianxinos/powermanager/charging/HealthChargingActivity;)Lcom/dianxinos/powermanager/ui/DxBatteryGraph;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->J:Lcom/dianxinos/powermanager/ui/DxBatteryGraph;

    return-object v0
.end method


# virtual methods
.method public a(Ladd;)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 196
    iget-object v0, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->I:Laff;

    if-nez v0, :cond_0

    iget-boolean v0, p1, Ladd;->l:Z

    :goto_0
    iput-boolean v0, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->g:Z

    .line 200
    iput-object p1, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->d:Ladd;

    .line 201
    iget-object v0, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->b:Lafn;

    invoke-virtual {v0, v1}, Lafn;->sendEmptyMessage(I)Z

    .line 202
    return-void

    .line 196
    :cond_0
    iget-boolean v0, p1, Ladd;->l:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->I:Laff;

    invoke-virtual {v0}, Laff;->e()I

    move-result v0

    const/16 v2, 0x64

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->I:Laff;

    invoke-virtual {v0}, Laff;->e()I

    move-result v0

    const/16 v2, 0x67

    if-eq v0, v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Ladd;)V
    .locals 3
    .parameter

    .prologue
    .line 216
    iget-object v0, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->I:Laff;

    invoke-virtual {v0}, Laff;->f()Lafh;

    move-result-object v1

    .line 217
    invoke-virtual {v1}, Lafh;->c()I

    move-result v0

    iput v0, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->k:I

    .line 218
    iget v0, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->k:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->k:I

    .line 219
    iget v0, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->k:I

    invoke-static {p0, v0}, Lazq;->d(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->y:Ljava/lang/String;

    .line 220
    invoke-direct {p0, v1}, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->a(Lafh;)V

    .line 221
    return-void

    .line 218
    :cond_0
    iget v0, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->k:I

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 459
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    .line 460
    if-eqz v0, :cond_0

    .line 461
    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 465
    :goto_0
    return-void

    .line 463
    :cond_0
    invoke-super {p0}, Laam;->onBackPressed()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 411
    iget-object v0, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->e:Landroid/widget/TextView;

    if-ne p1, v0, :cond_1

    .line 412
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dianxinos/powermanager/chargingrecord/ChargerRecordActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 413
    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->startActivity(Landroid/content/Intent;)V

    .line 415
    const-string v0, "record"

    const-string v1, "e"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lbal;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    .line 446
    :cond_0
    :goto_0
    return-void

    .line 420
    :cond_1
    iget-object v0, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->J:Lcom/dianxinos/powermanager/ui/DxBatteryGraph;

    if-ne p1, v0, :cond_2

    .line 421
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 424
    :cond_2
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 430
    iget-object v0, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->Q:Lafc;

    if-nez v0, :cond_5

    .line 431
    new-instance v0, Lafc;

    invoke-direct {v0, p0, v2}, Lafc;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->Q:Lafc;

    .line 436
    :cond_3
    iget-object v0, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->F:Landroid/widget/LinearLayout;

    if-ne p1, v0, :cond_6

    .line 437
    iget-object v0, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->Q:Lafc;

    invoke-virtual {v0, v2}, Lafc;->b(I)V

    .line 445
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->Q:Lafc;

    invoke-virtual {v0}, Lafc;->show()V

    goto :goto_0

    .line 432
    :cond_5
    iget-object v0, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->Q:Lafc;

    invoke-virtual {v0}, Lafc;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 438
    :cond_6
    iget-object v0, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->H:Landroid/widget/LinearLayout;

    if-ne p1, v0, :cond_7

    .line 439
    iget-object v0, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->Q:Lafc;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lafc;->b(I)V

    goto :goto_1

    .line 440
    :cond_7
    iget-object v0, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->G:Landroid/widget/LinearLayout;

    if-ne p1, v0, :cond_8

    .line 441
    iget-object v0, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->Q:Lafc;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lafc;->b(I)V

    goto :goto_1

    .line 442
    :cond_8
    iget-object v0, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->N:Landroid/widget/TextView;

    if-ne p1, v0, :cond_4

    .line 443
    iget-object v0, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->Q:Lafc;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lafc;->b(I)V

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter

    .prologue
    .line 114
    invoke-super {p0, p1}, Laam;->onCreate(Landroid/os/Bundle;)V

    .line 115
    sget-object v0, Lly;->g:Lcom/dianxinos/dxbs/R$layout;

    const v0, 0x7f030040

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->setContentView(I)V

    .line 116
    invoke-static {p0}, Lacz;->a(Landroid/content/Context;)Lacz;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->c:Lacz;

    .line 117
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070102

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->f:Landroid/widget/TextView;

    .line 118
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f07010b

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->h:Landroid/widget/TextView;

    .line 119
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070112

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->i:Landroid/widget/TextView;

    .line 120
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070119

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->j:Landroid/widget/TextView;

    .line 121
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f0700fc

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->M:Landroid/widget/TextView;

    .line 122
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070101

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->N:Landroid/widget/TextView;

    .line 123
    iget-object v0, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->N:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<u>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v2, 0x7f0a0298

    invoke-virtual {p0, v2}, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</u>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    iget-object v0, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->N:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f0700fb

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;

    iput-object v0, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->K:Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;

    .line 129
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f0700fd

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->e:Landroid/widget/TextView;

    .line 130
    iget-object v0, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f0700fe

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;

    iput-object v0, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->J:Lcom/dianxinos/powermanager/ui/DxBatteryGraph;

    .line 133
    iget-object v0, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->J:Lcom/dianxinos/powermanager/ui/DxBatteryGraph;

    invoke-virtual {v0, p0}, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f0700ff

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->L:Landroid/widget/TextView;

    .line 136
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 138
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070108

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->l:Landroid/widget/ImageView;

    .line 139
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f07010f

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->m:Landroid/widget/ImageView;

    .line 140
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070116

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->n:Landroid/widget/ImageView;

    .line 142
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070109

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->o:Landroid/widget/ImageView;

    .line 143
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f07010a

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->p:Landroid/widget/ImageView;

    .line 144
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070110

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->q:Landroid/widget/ImageView;

    .line 145
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070111

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->r:Landroid/widget/ImageView;

    .line 146
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070117

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->s:Landroid/widget/ImageView;

    .line 147
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070118

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->t:Landroid/widget/ImageView;

    .line 149
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070103

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->O:Landroid/widget/ImageView;

    .line 150
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070104

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->P:Landroid/widget/ImageView;

    .line 152
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->u:Ljava/util/Calendar;

    .line 153
    sget-object v0, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v0, 0x7f0a0184

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->v:Ljava/lang/String;

    .line 154
    sget-object v0, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v0, 0x7f0a0185

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->w:Ljava/lang/String;

    .line 155
    sget-object v0, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v0, 0x7f0a0186

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->x:Ljava/lang/String;

    .line 157
    invoke-static {p0}, Ladh;->a(Landroid/content/Context;)Ladh;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->z:Ladh;

    .line 159
    sget-object v0, Lly;->c:Lcom/dianxinos/dxbs/R$color;

    const v0, 0x7f09003e

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->A:I

    .line 160
    sget-object v0, Lly;->c:Lcom/dianxinos/dxbs/R$color;

    const v0, 0x7f090040

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->B:I

    .line 162
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070106

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->F:Landroid/widget/LinearLayout;

    .line 163
    iget-object v0, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->F:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070114

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->G:Landroid/widget/LinearLayout;

    .line 165
    iget-object v0, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->G:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f07010d

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->H:Landroid/widget/LinearLayout;

    .line 167
    iget-object v0, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->H:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f07010c

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->C:Landroid/widget/TextView;

    .line 170
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070113

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->E:Landroid/widget/TextView;

    .line 171
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f07011a

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->D:Landroid/widget/TextView;

    .line 173
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Laff;->a(Landroid/content/Context;)Laff;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->I:Laff;

    .line 174
    iget-object v8, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->a:Ljava/util/ArrayList;

    new-instance v0, Lafo;

    iget-object v2, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->F:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->l:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->o:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->p:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->h:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->C:Landroid/widget/TextView;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lafo;-><init>(Lcom/dianxinos/powermanager/charging/HealthChargingActivity;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    iget-object v8, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->a:Ljava/util/ArrayList;

    new-instance v0, Lafo;

    iget-object v2, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->H:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->m:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->q:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->r:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->i:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->E:Landroid/widget/TextView;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lafo;-><init>(Lcom/dianxinos/powermanager/charging/HealthChargingActivity;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    iget-object v8, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->a:Ljava/util/ArrayList;

    new-instance v0, Lafo;

    iget-object v2, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->G:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->n:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->s:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->t:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->j:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->D:Landroid/widget/TextView;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lafo;-><init>(Lcom/dianxinos/powermanager/charging/HealthChargingActivity;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    invoke-static {}, Lbar;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->getWindow()Landroid/view/Window;

    .line 183
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f0700f9

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lbar;->a(Landroid/view/View;)V

    .line 185
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 450
    iget-object v0, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->Q:Lafc;

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->Q:Lafc;

    invoke-virtual {v0}, Lafc;->dismiss()V

    .line 452
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->Q:Lafc;

    .line 454
    :cond_0
    invoke-super {p0}, Laam;->onDestroy()V

    .line 455
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 403
    iget-object v0, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->c:Lacz;

    invoke-virtual {v0, p0}, Lacz;->b(Ladc;)V

    .line 404
    iget-object v0, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->b:Lafn;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lafn;->removeMessages(I)V

    .line 406
    invoke-super {p0}, Laam;->onPause()V

    .line 407
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 189
    invoke-super {p0}, Laam;->onResume()V

    .line 190
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/powermanager/PowerMgrTabActivity;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0052

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->setTitle(I)V

    .line 191
    iget-object v0, p0, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->c:Lacz;

    invoke-virtual {v0, p0}, Lacz;->a(Ladc;)V

    .line 192
    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 1
    .parameter

    .prologue
    .line 469
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 470
    return-void
.end method
