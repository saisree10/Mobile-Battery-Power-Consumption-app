.class public Lcom/dianxinos/powermanager/WidgetUpdataService1x4;
.super Lacj;
.source "WidgetUpdataService1x4.java"


# static fields
.field private static b:Lamh;


# instance fields
.field private c:Lamp;

.field private d:I

.field private e:I

.field private f:I

.field private g:Z

.field private h:I

.field private final i:Z

.field private final j:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Ljava/lang/String;

.field private o:I

.field private p:I

.field private q:Lbaj;

.field private r:Laff;

.field private s:J

.field private t:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 40
    invoke-direct {p0}, Lacj;-><init>()V

    .line 55
    sget-boolean v0, Lazw;->i:Z

    iput-boolean v0, p0, Lcom/dianxinos/powermanager/WidgetUpdataService1x4;->i:Z

    .line 56
    invoke-static {}, Lazf;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lazw;->h:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/dianxinos/powermanager/WidgetUpdataService1x4;->j:Z

    .line 70
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/dianxinos/powermanager/WidgetUpdataService1x4;->s:J

    .line 71
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/dianxinos/powermanager/WidgetUpdataService1x4;->t:Landroid/os/Handler;

    return-void

    .line 56
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static synthetic a(Lcom/dianxinos/powermanager/WidgetUpdataService1x4;)I
    .locals 1
    .parameter

    .prologue
    .line 40
    iget v0, p0, Lcom/dianxinos/powermanager/WidgetUpdataService1x4;->f:I

    return v0
.end method

.method private a(Landroid/widget/RemoteViews;)V
    .locals 7
    .parameter

    .prologue
    const v6, 0x7f0700f1

    const v5, 0x7f0204ad

    .line 192
    .line 193
    iget v0, p0, Lcom/dianxinos/powermanager/WidgetUpdataService1x4;->f:I

    invoke-virtual {p0}, Lcom/dianxinos/powermanager/WidgetUpdataService1x4;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x58

    invoke-static {v1, v2}, Laxb;->a(Landroid/content/Context;I)I

    move-result v1

    mul-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x64

    add-int/lit8 v0, v0, 0x1

    .line 194
    iget v1, p0, Lcom/dianxinos/powermanager/WidgetUpdataService1x4;->f:I

    const/16 v2, 0x64

    if-ne v1, v2, :cond_2

    .line 195
    iget-object v1, p0, Lcom/dianxinos/powermanager/WidgetUpdataService1x4;->a:Landroid/content/res/Resources;

    sget-object v2, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const/4 v2, 0x0

    invoke-static {v1, v5, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 197
    if-nez v1, :cond_1

    .line 221
    :cond_0
    :goto_0
    return-void

    .line 200
    :cond_1
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 202
    if-lez v1, :cond_0

    if-lez v0, :cond_0

    .line 206
    new-instance v2, Laza;

    iget-object v3, p0, Lcom/dianxinos/powermanager/WidgetUpdataService1x4;->a:Landroid/content/res/Resources;

    sget-object v4, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    add-int/lit8 v0, v0, 0x2

    invoke-direct {v2, v3, v5, v0, v1}, Laza;-><init>(Landroid/content/res/Resources;III)V

    invoke-virtual {v2}, Laza;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 208
    if-eqz v0, :cond_0

    .line 209
    sget-object v1, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    invoke-virtual {p1, v6, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    goto :goto_0

    .line 212
    :cond_2
    iget v1, p0, Lcom/dianxinos/powermanager/WidgetUpdataService1x4;->e:I

    if-nez v1, :cond_3

    .line 213
    iget-object v1, p0, Lcom/dianxinos/powermanager/WidgetUpdataService1x4;->a:Landroid/content/res/Resources;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Laxb;->a(Landroid/content/res/Resources;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 217
    :goto_1
    if-eqz v0, :cond_0

    .line 218
    sget-object v1, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    invoke-virtual {p1, v6, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    goto :goto_0

    .line 215
    :cond_3
    iget-object v1, p0, Lcom/dianxinos/powermanager/WidgetUpdataService1x4;->a:Landroid/content/res/Resources;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Laxb;->a(Landroid/content/res/Resources;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1
.end method

.method private b()Landroid/widget/RemoteViews;
    .locals 8

    .prologue
    const/high16 v7, 0x800

    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 157
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/dianxinos/powermanager/WidgetUpdataService1x4;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lly;->g:Lcom/dianxinos/dxbs/R$layout;

    const v2, 0x7f030060

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 159
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 160
    new-instance v2, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/dianxinos/powermanager/WidgetUpdataService1x4;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/dianxinos/powermanager/PowerMgrTabActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 162
    const-string v2, "From"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 164
    const-string v2, "com.dianxinos.dxbs.MidWidget"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 165
    const/high16 v2, 0x1020

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 168
    invoke-static {p0, v5, v1, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 171
    sget-object v2, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v2, 0x7f0700f2

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 173
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.dianxinos.dxbs.ONEKEY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 174
    invoke-static {p0, v5, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 175
    sget-object v2, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v2, 0x7f0700f5

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 177
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/dianxinos/powermanager/mode/ModeSelectDialog;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 178
    const-string v2, "From"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 179
    const/4 v2, 0x1

    invoke-static {p0, v2, v1, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 181
    sget-object v2, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v2, 0x7f07019c

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 183
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/dianxinos/powermanager/settings/SettingsWidgetActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 184
    invoke-static {p0, v6, v1, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 186
    sget-object v2, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v2, 0x7f07019a

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 188
    return-object v0
.end method

.method private b(Landroid/widget/RemoteViews;)V
    .locals 6
    .parameter

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    const v3, 0x7f0700f4

    const v2, 0x7f0700f3

    .line 225
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/WidgetUpdataService1x4;->g:Z

    if-eqz v0, :cond_0

    .line 226
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    sget-object v0, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v0, 0x7f0204af

    invoke-virtual {p1, v3, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 227
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    invoke-virtual {p1, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 228
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    invoke-virtual {p1, v2, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 237
    :goto_0
    return-void

    .line 232
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/dianxinos/powermanager/WidgetUpdataService1x4;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 233
    sget-object v1, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    invoke-virtual {p1, v2, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 234
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    invoke-virtual {p1, v2, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 235
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    invoke-virtual {p1, v3, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_0
.end method

.method public static synthetic b(Lcom/dianxinos/powermanager/WidgetUpdataService1x4;)Z
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/WidgetUpdataService1x4;->g:Z

    return v0
.end method

.method public static synthetic c(Lcom/dianxinos/powermanager/WidgetUpdataService1x4;)I
    .locals 1
    .parameter

    .prologue
    .line 40
    iget v0, p0, Lcom/dianxinos/powermanager/WidgetUpdataService1x4;->o:I

    return v0
.end method

.method private c(Landroid/widget/RemoteViews;)V
    .locals 9
    .parameter

    .prologue
    const v8, 0x7f0700f7

    const/16 v2, 0x3e7

    const v7, 0x7f0700f8

    const/4 v1, 0x0

    .line 240
    .line 241
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/WidgetUpdataService1x4;->g:Z

    if-eqz v0, :cond_4

    .line 242
    iget v0, p0, Lcom/dianxinos/powermanager/WidgetUpdataService1x4;->o:I

    int-to-long v3, v0

    const-wide/16 v5, -0x1

    cmp-long v0, v3, v5

    if-nez v0, :cond_3

    .line 243
    const-string v0, "WidgetUpdataService1x4"

    const-string v3, " charging time unkonwn "

    invoke-static {v0, v3}, Lazt;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 247
    :goto_0
    sget-object v3, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    sget-object v3, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v3, 0x7f0a0176

    invoke-virtual {p0, v3}, Lcom/dianxinos/powermanager/WidgetUpdataService1x4;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v8, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    move v3, v0

    .line 264
    :goto_1
    const/16 v0, 0xe10

    if-le v3, v0, :cond_7

    .line 265
    div-int/lit16 v0, v3, 0xe10

    .line 266
    mul-int/lit16 v4, v0, 0xe10

    sub-int/2addr v3, v4

    .line 268
    :goto_2
    const/16 v4, 0x3c

    if-lt v3, v4, :cond_0

    .line 269
    div-int/lit8 v1, v3, 0x3c

    .line 270
    mul-int/lit8 v4, v1, 0x3c

    sub-int/2addr v3, v4

    .line 273
    :cond_0
    if-le v0, v2, :cond_1

    move v0, v2

    .line 281
    :cond_1
    div-int/lit8 v2, v0, 0x64

    .line 282
    rem-int/lit8 v3, v0, 0x64

    div-int/lit8 v3, v3, 0xa

    .line 283
    rem-int/lit8 v0, v0, 0xa

    .line 285
    div-int/lit8 v4, v1, 0xa

    .line 286
    rem-int/lit8 v1, v1, 0xa

    .line 293
    mul-int/lit8 v2, v2, 0x64

    mul-int/lit8 v3, v3, 0xa

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 294
    mul-int/lit8 v2, v4, 0xa

    add-int/2addr v1, v2

    .line 295
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 296
    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 297
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 298
    const-string v0, ":"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 299
    if-nez v4, :cond_2

    .line 300
    const-string v0, "0"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 302
    :cond_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 303
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v7, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 304
    iget v0, p0, Lcom/dianxinos/powermanager/WidgetUpdataService1x4;->e:I

    if-nez v0, :cond_6

    .line 305
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    invoke-virtual {p0}, Lcom/dianxinos/powermanager/WidgetUpdataService1x4;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lly;->c:Lcom/dianxinos/dxbs/R$color;

    const v1, 0x7f090087

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v7, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 310
    :goto_3
    return-void

    .line 245
    :cond_3
    iget v0, p0, Lcom/dianxinos/powermanager/WidgetUpdataService1x4;->o:I

    goto :goto_0

    .line 251
    :cond_4
    iget v0, p0, Lcom/dianxinos/powermanager/WidgetUpdataService1x4;->p:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_5

    .line 252
    const-string v0, "WidgetUpdataService1x4"

    const-string v3, " Remaining time unavaiable "

    invoke-static {v0, v3}, Lazt;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 257
    :goto_4
    sget-object v3, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    sget-object v3, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v3, 0x7f0a0177

    invoke-virtual {p0, v3}, Lcom/dianxinos/powermanager/WidgetUpdataService1x4;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v8, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    move v3, v0

    goto/16 :goto_1

    .line 255
    :cond_5
    iget v0, p0, Lcom/dianxinos/powermanager/WidgetUpdataService1x4;->p:I

    goto :goto_4

    .line 307
    :cond_6
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    invoke-virtual {p0}, Lcom/dianxinos/powermanager/WidgetUpdataService1x4;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lly;->c:Lcom/dianxinos/dxbs/R$color;

    const v1, 0x7f090085

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v7, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    goto :goto_3

    :cond_7
    move v0, v1

    goto/16 :goto_2
.end method

.method private c()Z
    .locals 2

    .prologue
    .line 419
    const-string v0, "com.dianxinos.dxhome"

    invoke-static {v0}, Lazy;->b(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x1c1

    if-lt v0, v1, :cond_0

    .line 424
    const/4 v0, 0x1

    .line 426
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static synthetic d(Lcom/dianxinos/powermanager/WidgetUpdataService1x4;)I
    .locals 1
    .parameter

    .prologue
    .line 40
    iget v0, p0, Lcom/dianxinos/powermanager/WidgetUpdataService1x4;->p:I

    return v0
.end method

.method private d(Landroid/widget/RemoteViews;)V
    .locals 7
    .parameter

    .prologue
    const v6, 0x7f020426

    const v5, 0x7f07019b

    const v4, 0x7f070146

    const/16 v3, 0x8

    const v2, 0x7f070149

    .line 313
    iget-object v0, p0, Lcom/dianxinos/powermanager/WidgetUpdataService1x4;->c:Lamp;

    invoke-virtual {v0}, Lamp;->e()Ljava/lang/String;

    move-result-object v0

    .line 314
    sget-object v1, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v1, 0x7f07019d

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 316
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/WidgetUpdataService1x4;->i:Z

    if-nez v0, :cond_1

    invoke-static {p0}, Lazf;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 317
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    invoke-virtual {p1, v4, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 318
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    invoke-virtual {p1, v5, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 319
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    invoke-virtual {p1, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 349
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/WidgetUpdataService1x4;->m:Z

    if-eqz v0, :cond_5

    .line 350
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070148

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f02042c

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 355
    :goto_1
    return-void

    .line 322
    :cond_1
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/WidgetUpdataService1x4;->k:Z

    if-nez v0, :cond_2

    .line 323
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    sget-object v0, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v0, 0x7f020429

    invoke-virtual {p1, v4, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 324
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    sget-object v0, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v0, 0x7f020425

    invoke-virtual {p1, v5, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 331
    :goto_2
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/WidgetUpdataService1x4;->j:Z

    if-eqz v0, :cond_4

    .line 332
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/WidgetUpdataService1x4;->l:Z

    if-eqz v0, :cond_3

    .line 333
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    sget-object v0, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v0, 0x7f020427

    invoke-virtual {p1, v2, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 340
    :goto_3
    invoke-static {}, Lazf;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/dianxinos/powermanager/WidgetUpdataService1x4;->k:Z

    if-eqz v0, :cond_0

    .line 341
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    sget-object v0, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    invoke-virtual {p1, v2, v6}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_0

    .line 327
    :cond_2
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    sget-object v0, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v0, 0x7f020428

    invoke-virtual {p1, v4, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 328
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    sget-object v0, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v0, 0x7f020424

    invoke-virtual {p1, v5, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_2

    .line 336
    :cond_3
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    sget-object v0, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    invoke-virtual {p1, v2, v6}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_3

    .line 345
    :cond_4
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    invoke-virtual {p1, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_0

    .line 353
    :cond_5
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070148

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f02042b

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_1
.end method

.method private d()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 430
    const-string v1, "com.dianxinos.dxlauncher"

    invoke-static {v1}, Lazy;->b(Ljava/lang/String;)I

    move-result v1

    if-lt v1, v0, :cond_0

    .line 433
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static synthetic e(Lcom/dianxinos/powermanager/WidgetUpdataService1x4;)I
    .locals 1
    .parameter

    .prologue
    .line 40
    iget v0, p0, Lcom/dianxinos/powermanager/WidgetUpdataService1x4;->e:I

    return v0
.end method

.method private e()V
    .locals 6

    .prologue
    .line 438
    const-string v0, "com.gau.go.launcherex"

    invoke-static {p0, v0}, Lazy;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 439
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 440
    iget-wide v2, p0, Lcom/dianxinos/powermanager/WidgetUpdataService1x4;->s:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0xc8

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 441
    iput-wide v0, p0, Lcom/dianxinos/powermanager/WidgetUpdataService1x4;->s:J

    .line 442
    iget-object v0, p0, Lcom/dianxinos/powermanager/WidgetUpdataService1x4;->t:Landroid/os/Handler;

    new-instance v1, Laci;

    invoke-direct {v1, p0}, Laci;-><init>(Lcom/dianxinos/powermanager/WidgetUpdataService1x4;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 457
    :cond_0
    return-void
.end method

.method private e(Landroid/widget/RemoteViews;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 358
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/dianxinos/powermanager/PowerMgrMidWidgetProvider;

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 359
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    .line 363
    :try_start_0
    invoke-virtual {v1, v0}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 369
    if-eqz v2, :cond_0

    array-length v2, v2

    if-eqz v2, :cond_0

    .line 370
    invoke-static {p0, v4}, Lapg;->a(Landroid/content/Context;Z)V

    .line 376
    :goto_0
    :try_start_1
    invoke-virtual {v1, v0, p1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 381
    :goto_1
    invoke-direct {p0, p1}, Lcom/dianxinos/powermanager/WidgetUpdataService1x4;->f(Landroid/widget/RemoteViews;)V

    .line 385
    :try_start_2
    new-instance v0, Landroid/content/ComponentName;

    const-class v2, Lcom/dianxinos/powermanager/settings/PowerSettingsWidgetProvider1x4;

    invoke-direct {v0, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v0}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    .line 392
    if-eqz v0, :cond_1

    array-length v0, v0

    if-eqz v0, :cond_1

    .line 393
    invoke-static {p0, v4}, Lapg;->c(Landroid/content/Context;Z)V

    .line 398
    :goto_2
    const-string v0, "WidgetUpdataService1x4"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update Widget RemoteView : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lazt;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    :goto_3
    return-void

    .line 364
    :catch_0
    move-exception v0

    .line 365
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    .line 372
    :cond_0
    invoke-static {p0, v3}, Lapg;->a(Landroid/content/Context;Z)V

    goto :goto_0

    .line 377
    :catch_1
    move-exception v0

    .line 379
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 387
    :catch_2
    move-exception v0

    .line 388
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    .line 395
    :cond_1
    invoke-static {p0, v3}, Lapg;->c(Landroid/content/Context;Z)V

    goto :goto_2
.end method

.method private f(Landroid/widget/RemoteViews;)V
    .locals 3
    .parameter

    .prologue
    .line 402
    invoke-direct {p0}, Lcom/dianxinos/powermanager/WidgetUpdataService1x4;->c()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/dianxinos/powermanager/WidgetUpdataService1x4;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 416
    :cond_0
    :goto_0
    return-void

    .line 406
    :cond_1
    iget-object v0, p0, Lcom/dianxinos/powermanager/WidgetUpdataService1x4;->q:Lbaj;

    invoke-virtual {v0}, Lbaj;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 410
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dianxinos/powermanager/DXWidgetClientService1x4;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 411
    const-string v1, "com.dianxinos.dxbs.action.DXHomeWidgetUpdate"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 412
    const-string v1, "action_type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 414
    const-string v1, "remote_view"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 415
    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/WidgetUpdataService1x4;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method


# virtual methods
.method protected a()V
    .locals 1

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/dianxinos/powermanager/WidgetUpdataService1x4;->e()V

    .line 143
    invoke-direct {p0}, Lcom/dianxinos/powermanager/WidgetUpdataService1x4;->b()Landroid/widget/RemoteViews;

    move-result-object v0

    .line 144
    invoke-direct {p0, v0}, Lcom/dianxinos/powermanager/WidgetUpdataService1x4;->a(Landroid/widget/RemoteViews;)V

    .line 145
    invoke-direct {p0, v0}, Lcom/dianxinos/powermanager/WidgetUpdataService1x4;->b(Landroid/widget/RemoteViews;)V

    .line 146
    invoke-direct {p0, v0}, Lcom/dianxinos/powermanager/WidgetUpdataService1x4;->c(Landroid/widget/RemoteViews;)V

    .line 147
    invoke-direct {p0, v0}, Lcom/dianxinos/powermanager/WidgetUpdataService1x4;->d(Landroid/widget/RemoteViews;)V

    .line 148
    invoke-direct {p0, v0}, Lcom/dianxinos/powermanager/WidgetUpdataService1x4;->e(Landroid/widget/RemoteViews;)V

    .line 149
    return-void
.end method

.method protected b(Ladd;)Z
    .locals 11
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 93
    iget-object v0, p0, Lcom/dianxinos/powermanager/WidgetUpdataService1x4;->r:Laff;

    if-nez v0, :cond_3

    iget-boolean v0, p1, Ladd;->l:Z

    .line 98
    :goto_0
    iget-object v3, p0, Lcom/dianxinos/powermanager/WidgetUpdataService1x4;->c:Lamp;

    invoke-virtual {v3}, Lamp;->b()I

    move-result v3

    .line 99
    iget-object v4, p0, Lcom/dianxinos/powermanager/WidgetUpdataService1x4;->c:Lamp;

    invoke-virtual {v4}, Lamp;->e()Ljava/lang/String;

    move-result-object v4

    .line 100
    sget-object v5, Lcom/dianxinos/powermanager/WidgetUpdataService1x4;->b:Lamh;

    invoke-virtual {v5}, Lamh;->l()Lahd;

    move-result-object v5

    invoke-virtual {v5}, Lahd;->a()Z

    move-result v5

    .line 101
    sget-object v6, Lcom/dianxinos/powermanager/WidgetUpdataService1x4;->b:Lamh;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Lamh;->a(I)Lahp;

    move-result-object v6

    invoke-virtual {v6}, Lahp;->a()Z

    move-result v6

    .line 102
    sget-object v7, Lcom/dianxinos/powermanager/WidgetUpdataService1x4;->b:Lamh;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Lamh;->a(I)Lahp;

    move-result-object v7

    invoke-virtual {v7}, Lahp;->a()Z

    move-result v7

    .line 103
    iget-object v8, p0, Lcom/dianxinos/powermanager/WidgetUpdataService1x4;->r:Laff;

    invoke-virtual {v8}, Laff;->f()Lafh;

    move-result-object v8

    invoke-virtual {v8}, Lafh;->c()I

    move-result v8

    .line 105
    iget v9, p0, Lcom/dianxinos/powermanager/WidgetUpdataService1x4;->f:I

    iget v10, p1, Ladd;->j:I

    if-ne v9, v10, :cond_5

    iget-boolean v9, p0, Lcom/dianxinos/powermanager/WidgetUpdataService1x4;->g:Z

    if-ne v9, v0, :cond_5

    iget v9, p0, Lcom/dianxinos/powermanager/WidgetUpdataService1x4;->h:I

    iget v10, p1, Ladd;->e:I

    if-ne v9, v10, :cond_5

    iget v9, p0, Lcom/dianxinos/powermanager/WidgetUpdataService1x4;->o:I

    if-ne v9, v8, :cond_5

    iget v9, p0, Lcom/dianxinos/powermanager/WidgetUpdataService1x4;->d:I

    if-ne v9, v3, :cond_5

    iget-object v9, p0, Lcom/dianxinos/powermanager/WidgetUpdataService1x4;->n:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    iget-boolean v9, p0, Lcom/dianxinos/powermanager/WidgetUpdataService1x4;->m:Z

    if-ne v9, v7, :cond_5

    if-nez v0, :cond_0

    iget v9, p0, Lcom/dianxinos/powermanager/WidgetUpdataService1x4;->p:I

    iget v10, p1, Ladd;->k:I

    if-ne v9, v10, :cond_5

    :cond_0
    iget-boolean v9, p0, Lcom/dianxinos/powermanager/WidgetUpdataService1x4;->i:Z

    if-eqz v9, :cond_1

    iget-boolean v9, p0, Lcom/dianxinos/powermanager/WidgetUpdataService1x4;->k:Z

    if-ne v9, v5, :cond_5

    :cond_1
    iget-boolean v9, p0, Lcom/dianxinos/powermanager/WidgetUpdataService1x4;->j:Z

    if-eqz v9, :cond_2

    iget-boolean v9, p0, Lcom/dianxinos/powermanager/WidgetUpdataService1x4;->l:Z

    if-ne v9, v6, :cond_5

    .line 137
    :cond_2
    :goto_1
    return v2

    .line 93
    :cond_3
    iget-boolean v0, p1, Ladd;->l:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/dianxinos/powermanager/WidgetUpdataService1x4;->r:Laff;

    invoke-virtual {v0}, Laff;->e()I

    move-result v0

    const/16 v3, 0x64

    if-eq v0, v3, :cond_4

    iget-object v0, p0, Lcom/dianxinos/powermanager/WidgetUpdataService1x4;->r:Laff;

    invoke-virtual {v0}, Laff;->e()I

    move-result v0

    const/16 v3, 0x67

    if-eq v0, v3, :cond_4

    move v0, v1

    goto/16 :goto_0

    :cond_4
    move v0, v2

    goto/16 :goto_0

    .line 120
    :cond_5
    iget v9, p1, Ladd;->j:I

    iput v9, p0, Lcom/dianxinos/powermanager/WidgetUpdataService1x4;->f:I

    .line 121
    iput-boolean v0, p0, Lcom/dianxinos/powermanager/WidgetUpdataService1x4;->g:Z

    .line 122
    iget v0, p1, Ladd;->e:I

    iput v0, p0, Lcom/dianxinos/powermanager/WidgetUpdataService1x4;->h:I

    .line 123
    iput v8, p0, Lcom/dianxinos/powermanager/WidgetUpdataService1x4;->o:I

    .line 124
    iget v0, p1, Ladd;->k:I

    iput v0, p0, Lcom/dianxinos/powermanager/WidgetUpdataService1x4;->p:I

    .line 126
    iput v3, p0, Lcom/dianxinos/powermanager/WidgetUpdataService1x4;->d:I

    .line 127
    iput-object v4, p0, Lcom/dianxinos/powermanager/WidgetUpdataService1x4;->n:Ljava/lang/String;

    .line 128
    iput-boolean v7, p0, Lcom/dianxinos/powermanager/WidgetUpdataService1x4;->m:Z

    .line 129
    iput-boolean v5, p0, Lcom/dianxinos/powermanager/WidgetUpdataService1x4;->k:Z

    .line 130
    iput-boolean v6, p0, Lcom/dianxinos/powermanager/WidgetUpdataService1x4;->l:Z

    .line 132
    iget v0, p0, Lcom/dianxinos/powermanager/WidgetUpdataService1x4;->f:I

    const/16 v3, 0x14

    if-le v0, v3, :cond_6

    .line 133
    iput v2, p0, Lcom/dianxinos/powermanager/WidgetUpdataService1x4;->e:I

    :goto_2
    move v2, v1

    .line 137
    goto :goto_1

    .line 135
    :cond_6
    iput v1, p0, Lcom/dianxinos/powermanager/WidgetUpdataService1x4;->e:I

    goto :goto_2
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 77
    invoke-super {p0}, Lacj;->onCreate()V

    .line 78
    invoke-static {p0}, Lamp;->a(Landroid/content/Context;)Lamp;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/WidgetUpdataService1x4;->c:Lamp;

    .line 79
    iget-object v0, p0, Lcom/dianxinos/powermanager/WidgetUpdataService1x4;->c:Lamp;

    invoke-virtual {v0}, Lamp;->g()Lamh;

    move-result-object v0

    sput-object v0, Lcom/dianxinos/powermanager/WidgetUpdataService1x4;->b:Lamh;

    .line 80
    iget-object v0, p0, Lcom/dianxinos/powermanager/WidgetUpdataService1x4;->c:Lamp;

    invoke-virtual {v0}, Lamp;->b()I

    move-result v0

    iput v0, p0, Lcom/dianxinos/powermanager/WidgetUpdataService1x4;->d:I

    .line 81
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/WidgetUpdataService1x4;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbaj;->a(Landroid/content/Context;)Lbaj;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/WidgetUpdataService1x4;->q:Lbaj;

    .line 82
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/WidgetUpdataService1x4;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Laff;->a(Landroid/content/Context;)Laff;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/WidgetUpdataService1x4;->r:Laff;

    .line 83
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 153
    invoke-super {p0, p1, p2, p3}, Lacj;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method
