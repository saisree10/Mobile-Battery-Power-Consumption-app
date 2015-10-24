.class public Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;
.super Laao;
.source "BatteryThemeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Ladp;

.field private b:Landroid/app/ProgressDialog;

.field private c:Landroid/net/Uri;

.field private d:Z

.field private e:Lcom/dianxinos/powermanager/ui/DxBatteryGraph;

.field private f:Lcom/dianxinos/powermanager/ui/DxBatteryGraph;

.field private g:Landroid/widget/Button;

.field private h:Lcom/dianxinos/powermanager/batterytheme/BatteryThemeItemView;

.field private i:Lcom/dianxinos/powermanager/batterytheme/BatteryThemeItemView;

.field private j:Lcom/dianxinos/powermanager/batterytheme/BatteryThemeItemView;

.field private k:Lcom/dianxinos/powermanager/batterytheme/BatteryThemeItemView;

.field private l:Landroid/view/View;

.field private m:Lcom/dianxinos/powermanager/batterytheme/BatteryThemeItemView;

.field private n:Lcom/dianxinos/powermanager/batterytheme/BatteryThemeItemView;

.field private o:Lcom/dianxinos/powermanager/batterytheme/BatteryThemeItemView;

.field private p:Landroid/widget/Button;

.field private q:Z

.field private r:Ljava/lang/String;

.field private s:I

.field private t:Ljava/util/ArrayList;

.field private u:J

.field private v:Landroid/widget/ImageView;

.field private w:Ladi;

.field private x:Lazz;

.field private y:Lawg;

.field private z:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 48
    invoke-direct {p0}, Laao;-><init>()V

    .line 70
    iput-boolean v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->d:Z

    .line 86
    iput-boolean v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->q:Z

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->t:Ljava/util/ArrayList;

    .line 101
    new-instance v0, Ladm;

    invoke-direct {v0, p0}, Ladm;-><init>(Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;)V

    iput-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->z:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic a(Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;)Ladp;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->a:Ladp;

    return-object v0
.end method

.method private a()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 215
    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->p:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 217
    iget-object v1, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->m:Lcom/dianxinos/powermanager/batterytheme/BatteryThemeItemView;

    iget-object v2, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->a:Ladp;

    const-string v3, "ct_"

    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v3, v0, v5}, Ladp;->a(Ljava/lang/String;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeItemView;->setThumbnail(Landroid/graphics/Bitmap;)V

    .line 219
    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->m:Lcom/dianxinos/powermanager/batterytheme/BatteryThemeItemView;

    invoke-virtual {v0, v4}, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeItemView;->setVisibility(I)V

    .line 220
    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->m:Lcom/dianxinos/powermanager/batterytheme/BatteryThemeItemView;

    invoke-virtual {v0, v5}, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeItemView;->setClickable(Z)V

    .line 229
    :goto_0
    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v5, :cond_1

    .line 230
    iget-object v1, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->n:Lcom/dianxinos/powermanager/batterytheme/BatteryThemeItemView;

    iget-object v2, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->a:Ladp;

    const-string v3, "ct_"

    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v3, v0, v5}, Ladp;->a(Ljava/lang/String;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeItemView;->setThumbnail(Landroid/graphics/Bitmap;)V

    .line 232
    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->n:Lcom/dianxinos/powermanager/batterytheme/BatteryThemeItemView;

    invoke-virtual {v0, v4}, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeItemView;->setVisibility(I)V

    .line 233
    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->n:Lcom/dianxinos/powermanager/batterytheme/BatteryThemeItemView;

    invoke-virtual {v0, v5}, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeItemView;->setClickable(Z)V

    .line 239
    :goto_1
    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v7, :cond_2

    .line 240
    iget-object v1, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->o:Lcom/dianxinos/powermanager/batterytheme/BatteryThemeItemView;

    iget-object v2, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->a:Ladp;

    const-string v3, "ct_"

    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v3, v0, v5}, Ladp;->a(Ljava/lang/String;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeItemView;->setThumbnail(Landroid/graphics/Bitmap;)V

    .line 242
    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->o:Lcom/dianxinos/powermanager/batterytheme/BatteryThemeItemView;

    invoke-virtual {v0, v4}, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeItemView;->setVisibility(I)V

    .line 243
    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->o:Lcom/dianxinos/powermanager/batterytheme/BatteryThemeItemView;

    invoke-virtual {v0, v5}, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeItemView;->setClickable(Z)V

    .line 249
    :goto_2
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->q:Z

    if-eqz v0, :cond_3

    .line 250
    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->m:Lcom/dianxinos/powermanager/batterytheme/BatteryThemeItemView;

    invoke-virtual {v0}, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeItemView;->b()V

    .line 251
    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->n:Lcom/dianxinos/powermanager/batterytheme/BatteryThemeItemView;

    invoke-virtual {v0}, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeItemView;->b()V

    .line 252
    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->o:Lcom/dianxinos/powermanager/batterytheme/BatteryThemeItemView;

    invoke-virtual {v0}, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeItemView;->b()V

    .line 258
    :goto_3
    return-void

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->p:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 223
    iput-boolean v4, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->q:Z

    .line 224
    invoke-direct {p0}, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->c()V

    .line 225
    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->m:Lcom/dianxinos/powermanager/batterytheme/BatteryThemeItemView;

    invoke-virtual {v0, v6}, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeItemView;->setVisibility(I)V

    .line 226
    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->m:Lcom/dianxinos/powermanager/batterytheme/BatteryThemeItemView;

    invoke-virtual {v0, v4}, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeItemView;->setClickable(Z)V

    goto :goto_0

    .line 235
    :cond_1
    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->n:Lcom/dianxinos/powermanager/batterytheme/BatteryThemeItemView;

    invoke-virtual {v0, v6}, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeItemView;->setVisibility(I)V

    .line 236
    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->n:Lcom/dianxinos/powermanager/batterytheme/BatteryThemeItemView;

    invoke-virtual {v0, v4}, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeItemView;->setClickable(Z)V

    goto :goto_1

    .line 245
    :cond_2
    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->o:Lcom/dianxinos/powermanager/batterytheme/BatteryThemeItemView;

    invoke-virtual {v0, v6}, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeItemView;->setVisibility(I)V

    .line 246
    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->o:Lcom/dianxinos/powermanager/batterytheme/BatteryThemeItemView;

    invoke-virtual {v0, v4}, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeItemView;->setClickable(Z)V

    goto :goto_2

    .line 254
    :cond_3
    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->m:Lcom/dianxinos/powermanager/batterytheme/BatteryThemeItemView;

    invoke-virtual {v0}, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeItemView;->a()V

    .line 255
    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->n:Lcom/dianxinos/powermanager/batterytheme/BatteryThemeItemView;

    invoke-virtual {v0}, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeItemView;->a()V

    .line 256
    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->o:Lcom/dianxinos/powermanager/batterytheme/BatteryThemeItemView;

    invoke-virtual {v0}, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeItemView;->a()V

    goto :goto_3
.end method

.method private a(I)V
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 203
    if-nez p1, :cond_1

    .line 204
    iput-boolean v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->d:Z

    .line 208
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->e:Lcom/dianxinos/powermanager/ui/DxBatteryGraph;

    iget-boolean v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->d:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->setVisibility(I)V

    .line 209
    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->f:Lcom/dianxinos/powermanager/ui/DxBatteryGraph;

    iget-boolean v3, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->d:Z

    if-eqz v3, :cond_3

    :goto_2
    invoke-virtual {v0, v2}, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->setVisibility(I)V

    .line 210
    iget-object v1, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->g:Landroid/widget/Button;

    iget-boolean v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->d:Z

    if-eqz v0, :cond_4

    sget-object v0, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v0, 0x7f0a026f

    :goto_3
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(I)V

    .line 212
    return-void

    .line 205
    :cond_1
    if-ne v0, p1, :cond_0

    .line 206
    iput-boolean v1, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->d:Z

    goto :goto_0

    :cond_2
    move v0, v2

    .line 208
    goto :goto_1

    :cond_3
    move v2, v1

    .line 209
    goto :goto_2

    .line 210
    :cond_4
    sget-object v0, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v0, 0x7f0a026e

    goto :goto_3
.end method

.method public static a(Landroid/content/Context;)V
    .locals 6
    .parameter

    .prologue
    .line 281
    invoke-static {p0}, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->b(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 282
    invoke-static {p0}, Ladp;->a(Landroid/content/Context;)Ladp;

    move-result-object v1

    .line 284
    :try_start_0
    invoke-static {p0}, Lazo;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 285
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tmp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ladp;->d()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 288
    invoke-virtual {v1}, Ladp;->e()V

    .line 289
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tmp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ladp;->d()I

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ".jpg"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 292
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {v0, v2, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 293
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 294
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 295
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 296
    invoke-static {p0}, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 297
    const-string v1, "image/jpeg"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 298
    const-string v1, "android.intent.extra.STREAM"

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 299
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    :goto_0
    return-void

    .line 301
    :catch_0
    move-exception v0

    .line 302
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static synthetic a(Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 261
    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->a:Ladp;

    invoke-virtual {v0}, Ladp;->l()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->t:Ljava/util/ArrayList;

    .line 262
    if-eqz p1, :cond_0

    .line 263
    invoke-direct {p0}, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->a()V

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->h:Lcom/dianxinos/powermanager/batterytheme/BatteryThemeItemView;

    iget-object v3, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->r:Ljava/lang/String;

    const-string v4, "dt"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeItemView;->setSelectedFlag(Z)V

    .line 266
    iget-object v3, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->i:Lcom/dianxinos/powermanager/batterytheme/BatteryThemeItemView;

    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->r:Ljava/lang/String;

    const-string v4, "pt_"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->s:I

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeItemView;->setSelectedFlag(Z)V

    .line 268
    iget-object v3, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->j:Lcom/dianxinos/powermanager/batterytheme/BatteryThemeItemView;

    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->r:Ljava/lang/String;

    const-string v4, "pt_"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->s:I

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeItemView;->setSelectedFlag(Z)V

    .line 270
    iget-object v3, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->k:Lcom/dianxinos/powermanager/batterytheme/BatteryThemeItemView;

    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->r:Ljava/lang/String;

    const-string v4, "pt_"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->s:I

    if-ne v0, v5, :cond_3

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeItemView;->setSelectedFlag(Z)V

    .line 272
    iget-object v3, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->m:Lcom/dianxinos/powermanager/batterytheme/BatteryThemeItemView;

    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->r:Ljava/lang/String;

    const-string v4, "ct_"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->t:Ljava/util/ArrayList;

    iget v4, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->s:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeItemView;->setSelectedFlag(Z)V

    .line 274
    iget-object v3, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->n:Lcom/dianxinos/powermanager/batterytheme/BatteryThemeItemView;

    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->r:Ljava/lang/String;

    const-string v4, "ct_"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->t:Ljava/util/ArrayList;

    iget v4, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->s:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ne v0, v1, :cond_5

    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeItemView;->setSelectedFlag(Z)V

    .line 276
    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->o:Lcom/dianxinos/powermanager/batterytheme/BatteryThemeItemView;

    iget-object v3, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->r:Ljava/lang/String;

    const-string v4, "ct_"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->t:Ljava/util/ArrayList;

    iget v4, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->s:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-ne v3, v5, :cond_6

    :goto_5
    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeItemView;->setSelectedFlag(Z)V

    .line 278
    return-void

    :cond_1
    move v0, v2

    .line 266
    goto/16 :goto_0

    :cond_2
    move v0, v2

    .line 268
    goto :goto_1

    :cond_3
    move v0, v2

    .line 270
    goto :goto_2

    :cond_4
    move v0, v2

    .line 272
    goto :goto_3

    :cond_5
    move v0, v2

    .line 274
    goto :goto_4

    :cond_6
    move v1, v2

    .line 276
    goto :goto_5
.end method

.method public static b(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 9
    .parameter

    .prologue
    const/4 v4, 0x1

    const/high16 v8, 0x438c

    const/4 v7, 0x0

    const/4 v0, 0x0

    .line 308
    const-string v1, "bsnc"

    const-string v2, "bssftg"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p0, v1, v2, v3}, Lbal;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    .line 312
    invoke-static {p0}, Ladp;->a(Landroid/content/Context;)Ladp;

    move-result-object v1

    .line 313
    invoke-virtual {v1}, Ladp;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ladp;->g()I

    move-result v3

    invoke-virtual {v1, v2, v3, v4}, Ladp;->a(Ljava/lang/String;IZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 314
    if-nez v2, :cond_0

    .line 352
    :goto_0
    return-object v0

    .line 318
    :cond_0
    invoke-virtual {v1}, Ladp;->k()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 325
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020406

    invoke-static {v1, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 327
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 329
    const/4 v4, 0x4

    invoke-static {v2, v4}, Lzr;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 330
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget-object v6, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v6, 0x7f020012

    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 332
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 333
    invoke-virtual {v6, v3, v7, v7, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 334
    const/high16 v3, 0x43a4

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v2, v3, v2

    invoke-static {v4, v2}, Lzr;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v2

    const/high16 v3, 0x42e0

    invoke-virtual {v6, v2, v3, v8, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 337
    const/high16 v2, 0x43b4

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v5, v2}, Lzr;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v2

    const/high16 v3, 0x42c8

    invoke-virtual {v6, v2, v3, v8, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    move-object v0, v1

    .line 339
    goto :goto_0

    .line 345
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020405

    invoke-static {v1, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 346
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 348
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 349
    const/high16 v5, 0x4358

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-static {v2, v5}, Lzr;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v2

    const/high16 v5, 0x42ac

    const/high16 v6, 0x433c

    invoke-virtual {v4, v2, v5, v6, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 351
    invoke-virtual {v4, v3, v7, v7, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    move-object v0, v1

    .line 352
    goto/16 :goto_0
.end method

.method public static synthetic b(Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->t:Ljava/util/ArrayList;

    return-object v0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 522
    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->x:Lazz;

    sget-object v1, Lbad;->b:Lbad;

    invoke-virtual {v0, v1}, Lazz;->a(Lbad;)Lbab;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 523
    iget-object v1, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->y:Lawg;

    if-nez v1, :cond_0

    .line 524
    new-instance v1, Lawg;

    invoke-direct {v1, p0}, Lawg;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->y:Lawg;

    .line 526
    :cond_0
    iget-object v1, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->y:Lawg;

    invoke-virtual {v1}, Lawg;->dismiss()V

    .line 527
    iget-object v1, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->y:Lawg;

    sget-object v2, Lbab;->b:Lbab;

    if-ne v0, v2, :cond_2

    sget-object v0, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v0, 0x7f0a0304

    :goto_0
    invoke-virtual {v1, v0}, Lawg;->setTitle(I)V

    .line 530
    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->y:Lawg;

    invoke-virtual {v0}, Lawg;->show()V

    .line 532
    :cond_1
    return-void

    .line 527
    :cond_2
    sget-object v0, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v0, 0x7f0a0305

    goto :goto_0
.end method

.method private b(I)V
    .locals 6
    .parameter

    .prologue
    .line 590
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 591
    iget-wide v2, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->u:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x7d0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 592
    iput-wide v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->u:J

    .line 593
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 595
    :cond_0
    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 535
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->q:Z

    if-eqz v0, :cond_0

    .line 536
    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->p:Landroid/widget/Button;

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f02011a

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 537
    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->p:Landroid/widget/Button;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0115

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 538
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->q:Z

    .line 544
    :goto_0
    return-void

    .line 540
    :cond_0
    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->p:Landroid/widget/Button;

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f020121

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 541
    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->p:Landroid/widget/Button;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a026d

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 542
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->q:Z

    goto :goto_0
.end method

.method private c(I)V
    .locals 3
    .parameter

    .prologue
    .line 598
    new-instance v0, Lauu;

    invoke-direct {v0, p0}, Lauu;-><init>(Landroid/content/Context;)V

    .line 599
    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0285

    invoke-virtual {v0, v1}, Lauu;->setTitle(I)V

    .line 600
    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0286

    invoke-virtual {v0, v1}, Lauu;->c(I)V

    .line 601
    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0114

    new-instance v2, Lado;

    invoke-direct {v2, p0, p1}, Lado;-><init>(Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;I)V

    invoke-virtual {v0, v1, v2}, Lauu;->a(ILandroid/view/View$OnClickListener;)V

    .line 614
    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0115

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lauu;->b(ILandroid/view/View$OnClickListener;)V

    .line 615
    invoke-virtual {v0}, Lauu;->show()V

    .line 616
    return-void
.end method

.method public static synthetic c(Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->e()V

    return-void
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 357
    invoke-static {p0}, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 358
    sget-object v2, Lazg;->b:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 359
    const/4 v0, 0x1

    .line 361
    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz v1, :cond_0

    invoke-static {}, Liq;->a()Z

    move-result v0

    goto :goto_0
.end method

.method private d()V
    .locals 3

    .prologue
    .line 548
    const-string v0, "preuse"

    const-string v1, "bsc"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lbal;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    .line 551
    return-void
.end method

.method public static synthetic d(Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->b()V

    return-void
.end method

.method public static d(Landroid/content/Context;)Z
    .locals 2
    .parameter

    .prologue
    .line 630
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.facebook.katana"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static synthetic e(Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->b:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private static e(Landroid/content/Context;)Ljava/lang/String;
    .locals 10
    .parameter

    .prologue
    const/4 v5, -0x1

    const/4 v2, 0x0

    .line 366
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 367
    const-string v1, "image/jpeg"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 368
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v8

    .line 370
    const v0, 0x7fffffff

    move v1, v2

    move v3, v0

    move v4, v5

    .line 371
    :goto_0
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 372
    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    move v6, v2

    .line 373
    :goto_1
    sget-object v7, Lazg;->b:[Ljava/lang/String;

    array-length v7, v7

    if-ge v6, v7, :cond_0

    .line 374
    sget-object v7, Lazg;->b:[Ljava/lang/String;

    aget-object v7, v7, v6

    .line 375
    iget-object v9, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    if-ge v6, v3, :cond_3

    move v4, v6

    move v7, v1

    .line 373
    :goto_2
    add-int/lit8 v3, v6, 0x1

    move v6, v3

    move v3, v4

    move v4, v7

    goto :goto_1

    .line 371
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 381
    :cond_1
    if-ne v4, v5, :cond_2

    .line 382
    const/4 v0, 0x0

    .line 384
    :goto_3
    return-object v0

    :cond_2
    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move v7, v4

    move v4, v3

    goto :goto_2
.end method

.method private e()V
    .locals 1

    .prologue
    .line 554
    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->a:Ladp;

    invoke-virtual {v0}, Ladp;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->r:Ljava/lang/String;

    .line 555
    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->a:Ladp;

    invoke-virtual {v0}, Ladp;->g()I

    move-result v0

    iput v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->s:I

    .line 556
    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->e:Lcom/dianxinos/powermanager/ui/DxBatteryGraph;

    invoke-virtual {v0}, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->a()V

    .line 557
    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->f:Lcom/dianxinos/powermanager/ui/DxBatteryGraph;

    invoke-virtual {v0}, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->a()V

    .line 558
    return-void
.end method

.method private f()V
    .locals 1

    .prologue
    .line 586
    sget-object v0, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v0, 0x7f0a0283

    invoke-direct {p0, v0}, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->b(I)V

    .line 587
    return-void
.end method

.method private g()V
    .locals 2

    .prologue
    .line 619
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 620
    iget-object v1, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->c:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 621
    const/16 v1, 0x22

    invoke-virtual {p0, v0, v1}, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 622
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 562
    const/16 v0, 0x11

    if-ne p1, v0, :cond_1

    .line 563
    if-ne p2, v1, :cond_0

    if-eqz p3, :cond_0

    .line 564
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->c:Landroid/net/Uri;

    .line 565
    invoke-direct {p0}, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->g()V

    .line 583
    :cond_0
    :goto_0
    return-void

    .line 571
    :cond_1
    const/16 v0, 0x22

    if-ne p1, v0, :cond_3

    .line 572
    if-ne p2, v1, :cond_2

    .line 573
    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->z:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 574
    :cond_2
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 575
    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->z:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 579
    :cond_3
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    .line 580
    if-eqz v0, :cond_0

    .line 581
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/facebook/Session;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)Z

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 626
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->finish()V

    .line 627
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter

    .prologue
    const v5, 0x7f0a02bd

    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 390
    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->v:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_4

    .line 391
    invoke-static {p0}, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 392
    invoke-static {p0}, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 393
    new-instance v3, Ladi;

    invoke-static {p0}, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->b(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v4

    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->a:Ladp;

    invoke-virtual {v0}, Ladp;->k()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-direct {v3, p0, v4, v0}, Ladi;-><init>(Landroid/app/Activity;Landroid/graphics/Bitmap;Z)V

    iput-object v3, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->w:Ladi;

    .line 397
    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->w:Ladi;

    invoke-virtual {v0}, Ladi;->show()V

    .line 518
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v2

    .line 393
    goto :goto_0

    .line 399
    :cond_2
    invoke-static {p0}, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->a(Landroid/content/Context;)V

    goto :goto_1

    .line 403
    :cond_3
    :try_start_0
    invoke-static {p0}, Lazz;->b(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 404
    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 405
    :catch_0
    move-exception v0

    .line 406
    sget-object v0, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v0, 0x7f0a01bc

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 413
    :cond_4
    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->g:Landroid/widget/Button;

    if-ne p1, v0, :cond_7

    .line 414
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->d:Z

    if-eqz v0, :cond_6

    :goto_2
    invoke-direct {p0, v1}, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->a(I)V

    move v0, v2

    .line 512
    :cond_5
    :goto_3
    invoke-direct {p0}, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->e()V

    .line 513
    invoke-direct {p0, v2}, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->a(Z)V

    .line 514
    if-eqz v0, :cond_0

    .line 516
    invoke-static {p0}, Lacz;->a(Landroid/content/Context;)Lacz;

    move-result-object v0

    invoke-virtual {v0}, Lacz;->d()V

    goto :goto_1

    :cond_6
    move v1, v2

    .line 414
    goto :goto_2

    .line 415
    :cond_7
    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->h:Lcom/dianxinos/powermanager/batterytheme/BatteryThemeItemView;

    if-ne p1, v0, :cond_9

    .line 416
    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->a:Ladp;

    invoke-virtual {v0}, Ladp;->f()Ljava/lang/String;

    move-result-object v0

    const-string v3, "dt"

    if-eq v0, v3, :cond_8

    move v0, v1

    .line 417
    :goto_4
    if-eqz v0, :cond_5

    .line 418
    iget-object v1, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->a:Ladp;

    const-string v3, "dt"

    invoke-virtual {v1, v3}, Ladp;->a(Ljava/lang/String;)V

    .line 419
    invoke-direct {p0}, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->b()V

    .line 420
    invoke-direct {p0}, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->d()V

    goto :goto_3

    :cond_8
    move v0, v2

    .line 416
    goto :goto_4

    .line 422
    :cond_9
    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->i:Lcom/dianxinos/powermanager/batterytheme/BatteryThemeItemView;

    if-ne p1, v0, :cond_c

    .line 423
    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->a:Ladp;

    invoke-virtual {v0}, Ladp;->f()Ljava/lang/String;

    move-result-object v0

    const-string v3, "pt_"

    if-ne v0, v3, :cond_a

    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->a:Ladp;

    invoke-virtual {v0}, Ladp;->g()I

    move-result v0

    if-eqz v0, :cond_b

    :cond_a
    move v0, v1

    .line 425
    :goto_5
    if-eqz v0, :cond_5

    .line 426
    iget-object v1, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->a:Ladp;

    const-string v3, "pt_"

    invoke-virtual {v1, v3}, Ladp;->a(Ljava/lang/String;)V

    .line 427
    iget-object v1, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->a:Ladp;

    invoke-virtual {v1, v2}, Ladp;->a(I)V

    .line 428
    invoke-direct {p0}, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->b()V

    .line 429
    invoke-direct {p0}, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->d()V

    goto :goto_3

    :cond_b
    move v0, v2

    .line 423
    goto :goto_5

    .line 431
    :cond_c
    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->j:Lcom/dianxinos/powermanager/batterytheme/BatteryThemeItemView;

    if-ne p1, v0, :cond_f

    .line 432
    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->a:Ladp;

    invoke-virtual {v0}, Ladp;->f()Ljava/lang/String;

    move-result-object v0

    const-string v3, "pt_"

    if-ne v0, v3, :cond_d

    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->a:Ladp;

    invoke-virtual {v0}, Ladp;->g()I

    move-result v0

    if-eq v0, v1, :cond_e

    :cond_d
    move v0, v1

    .line 434
    :goto_6
    if-eqz v0, :cond_5

    .line 435
    iget-object v3, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->a:Ladp;

    const-string v4, "pt_"

    invoke-virtual {v3, v4}, Ladp;->a(Ljava/lang/String;)V

    .line 436
    iget-object v3, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->a:Ladp;

    invoke-virtual {v3, v1}, Ladp;->a(I)V

    .line 437
    invoke-direct {p0}, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->b()V

    .line 438
    invoke-direct {p0}, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->d()V

    goto/16 :goto_3

    :cond_e
    move v0, v2

    .line 432
    goto :goto_6

    .line 440
    :cond_f
    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->k:Lcom/dianxinos/powermanager/batterytheme/BatteryThemeItemView;

    if-ne p1, v0, :cond_12

    .line 441
    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->a:Ladp;

    invoke-virtual {v0}, Ladp;->f()Ljava/lang/String;

    move-result-object v0

    const-string v3, "pt_"

    if-ne v0, v3, :cond_10

    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->a:Ladp;

    invoke-virtual {v0}, Ladp;->g()I

    move-result v0

    if-eq v0, v4, :cond_11

    :cond_10
    move v0, v1

    .line 443
    :goto_7
    if-eqz v0, :cond_5

    .line 444
    iget-object v1, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->a:Ladp;

    const-string v3, "pt_"

    invoke-virtual {v1, v3}, Ladp;->a(Ljava/lang/String;)V

    .line 445
    iget-object v1, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->a:Ladp;

    invoke-virtual {v1, v4}, Ladp;->a(I)V

    .line 446
    invoke-direct {p0}, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->b()V

    .line 447
    invoke-direct {p0}, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->d()V

    goto/16 :goto_3

    :cond_11
    move v0, v2

    .line 441
    goto :goto_7

    .line 449
    :cond_12
    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->l:Landroid/view/View;

    if-ne p1, v0, :cond_14

    .line 450
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->t:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_13

    .line 451
    sget-object v0, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v0, 0x7f0a0284

    invoke-direct {p0, v0}, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->b(I)V

    move v0, v2

    goto/16 :goto_3

    .line 454
    :cond_13
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 455
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 456
    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 457
    const/16 v1, 0x11

    invoke-virtual {p0, v0, v1}, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 458
    :catch_1
    move-exception v0

    .line 459
    const-string v0, "get image failed"

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 463
    :cond_14
    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->m:Lcom/dianxinos/powermanager/batterytheme/BatteryThemeItemView;

    if-ne p1, v0, :cond_17

    .line 464
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->q:Z

    if-eqz v0, :cond_15

    .line 465
    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->a:Ladp;

    const-string v1, "ct_"

    invoke-virtual {v0, v1}, Ladp;->a(Ljava/lang/String;)V

    .line 466
    iget-object v1, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->a:Ladp;

    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Ladp;->a(I)V

    .line 467
    sget-object v0, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    invoke-static {p0, v5, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 469
    invoke-direct {p0}, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->b()V

    move v0, v2

    goto/16 :goto_3

    .line 471
    :cond_15
    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->r:Ljava/lang/String;

    const-string v1, "ct_"

    if-ne v0, v1, :cond_16

    iget v1, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->s:I

    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v1, v0, :cond_16

    .line 473
    invoke-direct {p0}, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->f()V

    move v0, v2

    goto/16 :goto_3

    .line 475
    :cond_16
    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->c(I)V

    move v0, v2

    goto/16 :goto_3

    .line 478
    :cond_17
    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->n:Lcom/dianxinos/powermanager/batterytheme/BatteryThemeItemView;

    if-ne p1, v0, :cond_1a

    .line 479
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->q:Z

    if-eqz v0, :cond_18

    .line 480
    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->a:Ladp;

    const-string v3, "ct_"

    invoke-virtual {v0, v3}, Ladp;->a(Ljava/lang/String;)V

    .line 481
    iget-object v3, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->a:Ladp;

    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v3, v0}, Ladp;->a(I)V

    .line 482
    sget-object v0, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    invoke-static {p0, v5, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 484
    invoke-direct {p0}, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->b()V

    move v0, v2

    goto/16 :goto_3

    .line 486
    :cond_18
    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->r:Ljava/lang/String;

    const-string v3, "ct_"

    if-ne v0, v3, :cond_19

    iget v3, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->s:I

    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v3, v0, :cond_19

    .line 488
    invoke-direct {p0}, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->f()V

    move v0, v2

    goto/16 :goto_3

    .line 490
    :cond_19
    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->c(I)V

    move v0, v2

    goto/16 :goto_3

    .line 493
    :cond_1a
    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->o:Lcom/dianxinos/powermanager/batterytheme/BatteryThemeItemView;

    if-ne p1, v0, :cond_1d

    .line 494
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->q:Z

    if-eqz v0, :cond_1b

    .line 495
    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->a:Ladp;

    const-string v1, "ct_"

    invoke-virtual {v0, v1}, Ladp;->a(Ljava/lang/String;)V

    .line 496
    iget-object v1, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->a:Ladp;

    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Ladp;->a(I)V

    .line 497
    sget-object v0, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    invoke-static {p0, v5, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 499
    invoke-direct {p0}, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->b()V

    move v0, v2

    goto/16 :goto_3

    .line 501
    :cond_1b
    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->r:Ljava/lang/String;

    const-string v1, "ct_"

    if-ne v0, v1, :cond_1c

    iget v1, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->s:I

    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v1, v0, :cond_1c

    .line 503
    invoke-direct {p0}, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->f()V

    move v0, v2

    goto/16 :goto_3

    .line 505
    :cond_1c
    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->c(I)V

    move v0, v2

    goto/16 :goto_3

    .line 508
    :cond_1d
    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->p:Landroid/widget/Button;

    if-ne p1, v0, :cond_1e

    .line 509
    invoke-direct {p0}, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->c()V

    .line 510
    invoke-direct {p0}, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->a()V

    :cond_1e
    move v0, v2

    goto/16 :goto_3
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x1

    .line 124
    invoke-super {p0, p1}, Laao;->onCreate(Landroid/os/Bundle;)V

    .line 125
    sget-object v0, Lly;->g:Lcom/dianxinos/dxbs/R$layout;

    const v0, 0x7f03000e

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->setContentView(I)V

    .line 127
    invoke-static {p0}, Ladp;->a(Landroid/content/Context;)Ladp;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->a:Ladp;

    .line 128
    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->a:Ladp;

    invoke-virtual {v0}, Ladp;->b()V

    .line 130
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070007

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/powermanager/ui/MainTitle;

    .line 131
    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f020450

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/ui/MainTitle;->setLeftButtonIcon(I)V

    .line 132
    new-instance v1, Ladn;

    invoke-direct {v1, p0}, Ladn;-><init>(Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;)V

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/ui/MainTitle;->setLeftButtonOnclickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    invoke-virtual {v0}, Lcom/dianxinos/powermanager/ui/MainTitle;->a()V

    .line 140
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070027

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;

    iput-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->e:Lcom/dianxinos/powermanager/ui/DxBatteryGraph;

    .line 141
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070042

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;

    iput-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->f:Lcom/dianxinos/powermanager/ui/DxBatteryGraph;

    .line 142
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070044

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->g:Landroid/widget/Button;

    .line 143
    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->g:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->a:Ladp;

    invoke-virtual {v0}, Ladp;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->r:Ljava/lang/String;

    .line 146
    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->a:Ladp;

    invoke-virtual {v0}, Ladp;->g()I

    move-result v0

    iput v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->s:I

    .line 148
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070045

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeItemView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->h:Lcom/dianxinos/powermanager/batterytheme/BatteryThemeItemView;

    .line 149
    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->h:Lcom/dianxinos/powermanager/batterytheme/BatteryThemeItemView;

    invoke-virtual {v0, p0}, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->h:Lcom/dianxinos/powermanager/batterytheme/BatteryThemeItemView;

    iget-object v1, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->a:Ladp;

    const-string v2, "dt"

    invoke-virtual {v1, v2, v3, v4}, Ladp;->a(Ljava/lang/String;IZ)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeItemView;->setThumbnail(Landroid/graphics/Bitmap;)V

    .line 152
    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->h:Lcom/dianxinos/powermanager/batterytheme/BatteryThemeItemView;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0280

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeItemView;->setName(I)V

    .line 154
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070046

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeItemView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->i:Lcom/dianxinos/powermanager/batterytheme/BatteryThemeItemView;

    .line 155
    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->i:Lcom/dianxinos/powermanager/batterytheme/BatteryThemeItemView;

    invoke-virtual {v0, p0}, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->i:Lcom/dianxinos/powermanager/batterytheme/BatteryThemeItemView;

    iget-object v1, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->a:Ladp;

    const-string v2, "pt_"

    invoke-virtual {v1, v2, v3, v4}, Ladp;->a(Ljava/lang/String;IZ)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeItemView;->setThumbnail(Landroid/graphics/Bitmap;)V

    .line 159
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070047

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeItemView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->j:Lcom/dianxinos/powermanager/batterytheme/BatteryThemeItemView;

    .line 160
    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->j:Lcom/dianxinos/powermanager/batterytheme/BatteryThemeItemView;

    invoke-virtual {v0, p0}, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->j:Lcom/dianxinos/powermanager/batterytheme/BatteryThemeItemView;

    iget-object v1, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->a:Ladp;

    const-string v2, "pt_"

    invoke-virtual {v1, v2, v4, v4}, Ladp;->a(Ljava/lang/String;IZ)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeItemView;->setThumbnail(Landroid/graphics/Bitmap;)V

    .line 164
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070048

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeItemView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->k:Lcom/dianxinos/powermanager/batterytheme/BatteryThemeItemView;

    .line 165
    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->k:Lcom/dianxinos/powermanager/batterytheme/BatteryThemeItemView;

    invoke-virtual {v0, p0}, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->k:Lcom/dianxinos/powermanager/batterytheme/BatteryThemeItemView;

    iget-object v1, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->a:Ladp;

    const-string v2, "pt_"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3, v4}, Ladp;->a(Ljava/lang/String;IZ)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeItemView;->setThumbnail(Landroid/graphics/Bitmap;)V

    .line 169
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f07004b

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->l:Landroid/view/View;

    .line 170
    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->l:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f07004c

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeItemView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->m:Lcom/dianxinos/powermanager/batterytheme/BatteryThemeItemView;

    .line 173
    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->m:Lcom/dianxinos/powermanager/batterytheme/BatteryThemeItemView;

    invoke-virtual {v0, p0}, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f07004d

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeItemView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->n:Lcom/dianxinos/powermanager/batterytheme/BatteryThemeItemView;

    .line 176
    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->n:Lcom/dianxinos/powermanager/batterytheme/BatteryThemeItemView;

    invoke-virtual {v0, p0}, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f07004e

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeItemView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->o:Lcom/dianxinos/powermanager/batterytheme/BatteryThemeItemView;

    .line 179
    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->o:Lcom/dianxinos/powermanager/batterytheme/BatteryThemeItemView;

    invoke-virtual {v0, p0}, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f07004a

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->p:Landroid/widget/Button;

    .line 182
    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->p:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070043

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->v:Landroid/widget/ImageView;

    .line 185
    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->v:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->v:Landroid/widget/ImageView;

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f02012f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 187
    invoke-direct {p0}, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->e()V

    .line 188
    invoke-direct {p0, v4}, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->a(Z)V

    .line 190
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 191
    if-eqz v0, :cond_1

    .line 193
    const-string v1, "init_show_horizontal"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 194
    if-eq v0, v5, :cond_1

    if-eqz v0, :cond_0

    if-ne v0, v4, :cond_1

    .line 196
    :cond_0
    invoke-direct {p0, v0}, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->a(I)V

    .line 199
    :cond_1
    invoke-static {p0}, Lazz;->a(Landroid/content/Context;)Lazz;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->x:Lazz;

    .line 200
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 635
    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->w:Ladi;

    if-eqz v0, :cond_0

    .line 636
    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->w:Ladi;

    invoke-virtual {v0}, Ladi;->dismiss()V

    .line 638
    :cond_0
    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->y:Lawg;

    if-eqz v0, :cond_1

    .line 639
    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->y:Lawg;

    invoke-virtual {v0}, Lawg;->dismiss()V

    .line 641
    :cond_1
    invoke-super {p0}, Laao;->onDestroy()V

    .line 642
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 646
    invoke-static {p0}, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 647
    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->v:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 651
    :goto_0
    invoke-super {p0}, Laao;->onResume()V

    .line 652
    return-void

    .line 649
    :cond_0
    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->v:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
