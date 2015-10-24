.class public Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;
.super Laao;
.source "MessageBoxActivity.java"

# interfaces
.implements Lxw;


# static fields
.field private static final a:[I


# instance fields
.field private b:Lyx;

.field private c:Ljava/util/List;

.field private d:Ljava/util/List;

.field private e:Lcom/dianxinos/optimizer/module/messagebox/DisableScrollListView;

.field private f:Lavc;

.field private g:Lys;

.field private h:Landroid/os/Handler;

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 55
    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget-object v2, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v2, 0x7f020200

    aput v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v2, 0x7f0201fd

    aput v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v2, 0x7f0201fc

    aput v2, v0, v1

    sput-object v0, Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;->a:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Laao;-><init>()V

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;->c:Ljava/util/List;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;->d:Ljava/util/List;

    .line 366
    return-void
.end method

.method private a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter

    .prologue
    .line 359
    iget v0, p0, Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;->i:I

    if-lez v0, :cond_0

    .line 360
    const/high16 v0, 0x3f80

    iget v1, p0, Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;->i:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-static {p1, v0}, Lzr;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 362
    :cond_0
    return-object p1
.end method

.method public static synthetic a(Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private a(I)V
    .locals 3
    .parameter

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;->c()V

    .line 148
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 149
    const-string v0, "action"

    const-string v2, "mbd"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 150
    const-string v2, "id"

    iget-object v0, p0, Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzd;

    iget-object v0, v0, Lzd;->k:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 151
    const/4 v0, 0x1

    const-string v2, "msdc"

    invoke-static {v0, p0, v2, v1}, Lbal;->a(ZLandroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    iget-object v1, p0, Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;->b:Lyx;

    iget-object v0, p0, Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzd;

    invoke-virtual {v1, v0}, Lyx;->b(Lzd;)V

    .line 157
    iget-object v0, p0, Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 158
    iget-object v0, p0, Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;->g:Lys;

    invoke-virtual {v0}, Lys;->notifyDataSetChanged()V

    .line 160
    :goto_0
    return-void

    .line 154
    :catch_0
    move-exception v0

    .line 156
    iget-object v1, p0, Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;->b:Lyx;

    iget-object v0, p0, Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzd;

    invoke-virtual {v1, v0}, Lyx;->b(Lzd;)V

    .line 157
    iget-object v0, p0, Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 158
    iget-object v0, p0, Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;->g:Lys;

    invoke-virtual {v0}, Lys;->notifyDataSetChanged()V

    goto :goto_0

    .line 156
    :catchall_0
    move-exception v0

    move-object v1, v0

    iget-object v2, p0, Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;->b:Lyx;

    iget-object v0, p0, Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzd;

    invoke-virtual {v2, v0}, Lyx;->b(Lzd;)V

    .line 157
    iget-object v0, p0, Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 158
    iget-object v0, p0, Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;->g:Lys;

    invoke-virtual {v0}, Lys;->notifyDataSetChanged()V

    throw v1
.end method

.method private a(Landroid/view/View;I)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 163
    invoke-direct {p0}, Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;->c()V

    .line 164
    iget-object v0, p0, Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;->c:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzd;

    .line 165
    iget v1, v0, Lzd;->g:I

    if-ne v1, v9, :cond_3

    move v1, v2

    .line 166
    :goto_0
    shl-int/lit8 v4, v1, 0x1

    .line 167
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-object v1, v0, Lzd;->c:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x0

    cmp-long v1, v5, v7

    if-lez v1, :cond_4

    move v1, v2

    .line 168
    :goto_1
    if-eqz v1, :cond_5

    move v1, v2

    :goto_2
    add-int/2addr v1, v4

    .line 169
    const-string v4, "mbmc"

    iget-object v5, v0, Lzd;->k:Ljava/lang/String;

    invoke-static {p0, v4, v5, v1}, Lbal;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 172
    iget v1, v0, Lzd;->g:I

    if-eq v1, v9, :cond_1

    .line 173
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lyv;

    if-eqz v1, :cond_0

    .line 174
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyv;

    .line 175
    iget-object v4, v1, Lyv;->b:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 176
    iget-object v1, v1, Lyv;->e:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 178
    :cond_0
    iput v9, v0, Lzd;->g:I

    .line 179
    iget-object v1, p0, Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;->b:Lyx;

    invoke-virtual {v1, v0}, Lyx;->a(Lzd;)V

    .line 182
    :cond_1
    :try_start_0
    invoke-static {p0, v0}, Lzc;->b(Landroid/content/Context;Lzd;)Landroid/content/Intent;

    move-result-object v1

    .line 183
    if-nez v1, :cond_6

    .line 184
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v4, "intent is null when generate Intent"

    invoke-direct {v1, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    :catch_0
    move-exception v1

    .line 191
    iget v4, v0, Lzd;->i:I

    if-ne v4, v9, :cond_8

    .line 192
    sget-object v0, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v0, 0x7f0a02ff

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 196
    :cond_2
    :goto_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 198
    :goto_4
    return-void

    :cond_3
    move v1, v3

    .line 165
    goto :goto_0

    :cond_4
    move v1, v3

    .line 167
    goto :goto_1

    :cond_5
    move v1, v3

    .line 168
    goto :goto_2

    .line 185
    :cond_6
    :try_start_1
    iget v4, v0, Lzd;->a:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_7

    .line 186
    const/16 v4, 0xa

    invoke-virtual {p0, v1, v4}, Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_4

    .line 188
    :cond_7
    invoke-virtual {p0, v1}, Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 193
    :cond_8
    iget v0, v0, Lzd;->i:I

    if-ne v0, v2, :cond_2

    .line 194
    sget-object v0, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v0, 0x7f0a0300

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_3
.end method

.method public static synthetic a(Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;->c()V

    return-void
.end method

.method public static synthetic a(Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;->b(I)V

    return-void
.end method

.method public static synthetic a(Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;Landroid/view/View;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;->a(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic a()[I
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;->a:[I

    return-object v0
.end method

.method public static synthetic b(Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;)Lyx;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;->b:Lyx;

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 93
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070007

    invoke-virtual {p0, v0}, Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/powermanager/ui/MainTitle;

    .line 94
    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f020450

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/ui/MainTitle;->setLeftButtonIcon(I)V

    .line 95
    new-instance v1, Lyo;

    invoke-direct {v1, p0}, Lyo;-><init>(Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;)V

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/ui/MainTitle;->setLeftButtonOnclickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    invoke-virtual {v0}, Lcom/dianxinos/powermanager/ui/MainTitle;->a()V

    .line 102
    new-instance v0, Lys;

    invoke-direct {v0, p0}, Lys;-><init>(Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;)V

    iput-object v0, p0, Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;->g:Lys;

    .line 103
    new-instance v0, Lxv;

    invoke-direct {v0, p0}, Lxv;-><init>(Lxw;)V

    iput-object v0, p0, Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;->h:Landroid/os/Handler;

    .line 104
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f07013c

    invoke-virtual {p0, v0}, Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/optimizer/module/messagebox/DisableScrollListView;

    iput-object v0, p0, Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;->e:Lcom/dianxinos/optimizer/module/messagebox/DisableScrollListView;

    .line 105
    iget-object v0, p0, Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;->e:Lcom/dianxinos/optimizer/module/messagebox/DisableScrollListView;

    iget-object v1, p0, Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;->g:Lys;

    invoke-virtual {v0, v1}, Lcom/dianxinos/optimizer/module/messagebox/DisableScrollListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 106
    iget-object v0, p0, Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;->e:Lcom/dianxinos/optimizer/module/messagebox/DisableScrollListView;

    new-instance v1, Lyp;

    invoke-direct {v1, p0}, Lyp;-><init>(Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;)V

    invoke-virtual {v0, v1}, Lcom/dianxinos/optimizer/module/messagebox/DisableScrollListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 117
    return-void
.end method

.method private b(I)V
    .locals 3
    .parameter

    .prologue
    .line 216
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 217
    const-string v0, "action"

    const-string v2, "mbs"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 218
    const-string v2, "id"

    iget-object v0, p0, Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzd;

    iget-object v0, v0, Lzd;->k:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 219
    const/4 v0, 0x1

    const-string v2, "msdc"

    invoke-static {v0, p0, v2, v1}, Lbal;->a(ZLandroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    :goto_0
    return-void

    .line 221
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static synthetic b(Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;->a(I)V

    return-void
.end method

.method public static synthetic c(Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;->h:Landroid/os/Handler;

    return-object v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lya;

    .line 121
    invoke-virtual {v0}, Lya;->a()V

    goto :goto_0

    .line 123
    :cond_0
    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;->h:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 128
    invoke-static {}, Lazi;->a()Lazi;

    move-result-object v0

    new-instance v1, Lyq;

    invoke-direct {v1, p0}, Lyq;-><init>(Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;)V

    invoke-virtual {v0, v1}, Lazi;->b(Ljava/lang/Runnable;)V

    .line 138
    return-void
.end method

.method public static synthetic d(Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;->e()V

    return-void
.end method

.method public static synthetic e(Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;->c:Ljava/util/List;

    return-object v0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 141
    invoke-static {p0}, Lyy;->a(Landroid/content/Context;)Lyy;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lyy;->a(I)V

    .line 143
    return-void
.end method

.method public static synthetic f(Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;)Lcom/dianxinos/optimizer/module/messagebox/DisableScrollListView;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;->e:Lcom/dianxinos/optimizer/module/messagebox/DisableScrollListView;

    return-object v0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 377
    iget-object v0, p0, Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;->f:Lavc;

    if-nez v0, :cond_0

    .line 378
    new-instance v0, Lavc;

    sget-object v1, Lly;->j:Lcom/dianxinos/dxbs/R$style;

    const v1, 0x7f0b001a

    invoke-direct {v0, p0, v1}, Lavc;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;->f:Lavc;

    .line 380
    :cond_0
    invoke-virtual {p0}, Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 381
    iget-object v0, p0, Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;->f:Lavc;

    invoke-virtual {v0}, Lavc;->show()V

    .line 383
    :cond_1
    return-void
.end method

.method public static synthetic g(Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;->d:Ljava/util/List;

    return-object v0
.end method

.method private g()V
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;->f:Lavc;

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;->f:Lavc;

    invoke-virtual {v0}, Lavc;->dismiss()V

    .line 389
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Message;)V
    .locals 2
    .parameter

    .prologue
    .line 227
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 249
    :goto_0
    :pswitch_0
    return-void

    .line 229
    :pswitch_1
    invoke-direct {p0}, Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;->f()V

    goto :goto_0

    .line 237
    :pswitch_2
    invoke-direct {p0}, Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;->g()V

    .line 238
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .line 239
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 240
    iget-object v1, p0, Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 241
    iget-object v1, p0, Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 242
    iget-object v0, p0, Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;->g:Lys;

    invoke-virtual {v0}, Lys;->notifyDataSetChanged()V

    goto :goto_0

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;->e:Lcom/dianxinos/optimizer/module/messagebox/DisableScrollListView;

    sget-object v1, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v1, 0x7f07013d

    invoke-virtual {p0, v1}, Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dianxinos/optimizer/module/messagebox/DisableScrollListView;->setEmptyView(Landroid/view/View;)V

    goto :goto_0

    .line 227
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 202
    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 203
    invoke-static {}, Lazi;->a()Lazi;

    move-result-object v0

    new-instance v1, Lyr;

    invoke-direct {v1, p0}, Lyr;-><init>(Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;)V

    invoke-virtual {v0, v1}, Lazi;->a(Ljava/lang/Runnable;)V

    .line 212
    :goto_0
    return-void

    .line 211
    :cond_0
    invoke-super {p0, p1, p2, p3}, Laao;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 72
    invoke-super {p0, p1}, Laao;->onCreate(Landroid/os/Bundle;)V

    .line 73
    sget-object v0, Lly;->g:Lcom/dianxinos/dxbs/R$layout;

    const v0, 0x7f030048

    invoke-virtual {p0, v0}, Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;->setContentView(I)V

    .line 74
    new-instance v0, Lyw;

    invoke-virtual {p0}, Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lyw;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lyw;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 76
    new-instance v1, Lyx;

    invoke-direct {v1, v0}, Lyx;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v1, p0, Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;->b:Lyx;

    .line 78
    :try_start_0
    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;->i:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :goto_0
    invoke-direct {p0}, Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;->b()V

    .line 83
    return-void

    .line 80
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 393
    invoke-direct {p0}, Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;->g()V

    .line 394
    invoke-super {p0}, Laao;->onDestroy()V

    .line 395
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 87
    invoke-super {p0}, Laao;->onResume()V

    .line 88
    invoke-direct {p0}, Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;->d()V

    .line 89
    invoke-static {p0}, Laar;->a(Landroid/content/Context;)Laar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Laar;->a(Z)V

    .line 90
    return-void
.end method
