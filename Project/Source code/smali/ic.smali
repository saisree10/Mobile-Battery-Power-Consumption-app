.class public Lic;
.super Ljava/lang/Object;
.source "ADNotificationManager.java"


# instance fields
.field public a:Z

.field private b:Landroid/content/Context;

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-boolean v0, p0, Lic;->c:Z

    .line 38
    iput-boolean v0, p0, Lic;->a:Z

    .line 57
    iput-object p1, p0, Lic;->b:Landroid/content/Context;

    .line 58
    return-void
.end method

.method private a(Ljava/lang/String;)I
    .locals 1
    .parameter

    .prologue
    .line 125
    const-string v0, "com.dianxinos.dxbb"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    const/4 v0, 0x1

    .line 149
    :goto_0
    return v0

    .line 129
    :cond_0
    const-string v0, "com.dianxinos.powermanager"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    const/4 v0, 0x3

    goto :goto_0

    .line 133
    :cond_1
    const-string v0, "com.dianxinos.dxhome"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 134
    const/4 v0, 0x4

    goto :goto_0

    .line 137
    :cond_2
    const-string v0, "cn.opda.a.phonoalbumshoushou"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "com.dianxinos.optimizer.play"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 138
    :cond_3
    const/4 v0, 0x2

    goto :goto_0

    .line 141
    :cond_4
    const-string v0, "com.dianxinos.wallpaper"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 142
    const/4 v0, 0x6

    goto :goto_0

    .line 145
    :cond_5
    const-string v0, "com.dianxinos.dxlauncher"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 146
    const/4 v0, 0x5

    goto :goto_0

    .line 149
    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroid/app/Notification;Lhc;)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const v9, 0x7f0201a9

    const/16 v8, 0x96

    const/4 v0, 0x0

    const v7, 0x7f0700e3

    .line 154
    new-instance v4, Landroid/widget/RemoteViews;

    iget-object v2, p0, Lic;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lly;->g:Lcom/dianxinos/dxbs/R$layout;

    const v3, 0x7f03003a

    invoke-direct {v4, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 156
    iget-object v2, p0, Lic;->b:Landroid/content/Context;

    iget-object v3, p2, Lhc;->l:Ljava/lang/String;

    invoke-static {v2, v3}, Lim;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 158
    const-string v2, "ADNotificationManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " setRemoteview. safe ?: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v6, p0, Lic;->c:Z

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lin;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    iget-boolean v2, p0, Lic;->c:Z

    if-eqz v2, :cond_1

    .line 162
    sget-object v1, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    invoke-virtual {v4, v7, v9}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 164
    iput-boolean v0, p0, Lic;->c:Z

    .line 193
    :cond_0
    :goto_0
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070018

    iget-object v1, p2, Lhc;->c:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 195
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070015

    iget-object v1, p2, Lhc;->d:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 197
    iput-object v4, p1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 198
    return-void

    .line 166
    :cond_1
    if-eqz v5, :cond_0

    .line 168
    iget-object v2, p0, Lic;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move v2, v0

    move-object v0, v1

    .line 173
    :goto_1
    add-int/lit8 v3, v2, 0x1

    const/4 v6, 0x3

    if-ge v2, v6, :cond_2

    if-nez v0, :cond_2

    .line 174
    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    move v2, v3

    goto :goto_1

    .line 176
    :cond_2
    if-eqz v0, :cond_5

    .line 177
    const-string v1, "ADNotificationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " bm ;     "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  \t  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lin;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-gt v1, v8, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-le v1, v8, :cond_4

    .line 180
    :cond_3
    const-string v0, "ADNotificationManager"

    const-string v1, " size too big for a notification. force use safety mode. "

    invoke-static {v0, v1}, Lin;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    sget-object v0, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    invoke-virtual {v4, v7, v9}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_0

    .line 185
    :cond_4
    sget-object v1, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    invoke-virtual {v4, v7, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    goto :goto_0

    .line 188
    :cond_5
    new-instance v0, Lie;

    invoke-direct {v0, p0, v1}, Lie;-><init>(Lic;Lid;)V

    throw v0
.end method

.method private c()V
    .locals 10

    .prologue
    const/4 v5, 0x0

    .line 201
    iget-object v0, p0, Lic;->b:Landroid/content/Context;

    invoke-static {v0}, Liq;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 202
    const-string v0, "ADNotificationManager"

    const-string v1, "wifi do not work this time"

    invoke-static {v0, v1}, Lin;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    :cond_0
    return-void

    .line 206
    :cond_1
    iget-object v0, p0, Lic;->b:Landroid/content/Context;

    invoke-static {v0}, Lhn;->c(Landroid/content/Context;)Lhn;

    move-result-object v0

    invoke-virtual {v0}, Lhn;->a()Lhb;

    move-result-object v0

    iget-object v8, v0, Lhb;->b:Lhc;

    .line 207
    iget-object v0, v8, Lhc;->m:[Lhd;

    array-length v9, v0

    move v7, v5

    .line 208
    :goto_0
    if-ge v7, v9, :cond_0

    .line 209
    iget-object v0, v8, Lhc;->m:[Lhd;

    aget-object v4, v0, v7

    .line 210
    iget-object v0, v4, Lhd;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, v4, Lhd;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, v4, Lhd;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 214
    iget-object v0, p0, Lic;->b:Landroid/content/Context;

    invoke-static {v0}, Lhj;->a(Landroid/content/Context;)Lhj;

    move-result-object v0

    iget-object v1, p0, Lic;->b:Landroid/content/Context;

    invoke-static {v1}, Lhn;->c(Landroid/content/Context;)Lhn;

    move-result-object v1

    invoke-virtual {v1}, Lhn;->a()Lhb;

    move-result-object v1

    iget-object v1, v1, Lhb;->c:Ljava/lang/String;

    iget-object v2, v4, Lhd;->g:Ljava/lang/String;

    iget-object v3, v4, Lhd;->f:Ljava/lang/String;

    iget-object v4, v4, Lhd;->h:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lhj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILhk;)V

    .line 208
    :cond_2
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lic;->c:Z

    .line 62
    return-void
.end method

.method public b()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 65
    iget-object v0, p0, Lic;->b:Landroid/content/Context;

    invoke-static {v0}, Lhn;->c(Landroid/content/Context;)Lhn;

    move-result-object v0

    invoke-virtual {v0}, Lhn;->a()Lhb;

    move-result-object v0

    iget-object v2, v0, Lhb;->b:Lhc;

    .line 67
    iget-object v0, p0, Lic;->b:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 70
    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    .line 72
    iget-object v1, v2, Lhc;->h:Ljava/lang/String;

    .line 74
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 75
    invoke-direct {p0, v1}, Lic;->a(Ljava/lang/String;)I

    move-result v1

    .line 80
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 100
    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f0201a8

    .line 103
    :goto_1
    iget-object v3, v2, Lhc;->d:Ljava/lang/String;

    .line 104
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 106
    new-instance v6, Landroid/app/Notification;

    invoke-direct {v6, v1, v3, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 107
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lic;->b:Landroid/content/Context;

    const-class v4, Lcom/dianxinos/acomponent/ui/ADMainActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 109
    iget-object v3, p0, Lic;->b:Landroid/content/Context;

    invoke-static {v3, v7, v1, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 111
    iput-object v1, v6, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 112
    iget v1, v6, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v6, Landroid/app/Notification;->flags:I

    .line 113
    invoke-direct {p0, v6, v2}, Lic;->a(Landroid/app/Notification;Lhc;)V

    .line 115
    const-string v1, "ADNotificationManager"

    const-string v2, " set remoteview ok . "

    invoke-static {v1, v2}, Lin;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const/16 v1, 0x2c22

    .line 118
    invoke-virtual {v0, v1, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 119
    const/4 v0, 0x1

    iput-boolean v0, p0, Lic;->a:Z

    .line 121
    invoke-direct {p0}, Lic;->c()V

    .line 122
    return-void

    .line 77
    :cond_0
    iget-object v1, p0, Lic;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lic;->a(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 82
    :pswitch_0
    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f0201a4

    .line 83
    goto :goto_1

    .line 85
    :pswitch_1
    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f0201ab

    .line 86
    goto :goto_1

    .line 88
    :pswitch_2
    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f0201a5

    .line 89
    goto :goto_1

    .line 91
    :pswitch_3
    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f0201a3

    .line 92
    goto :goto_1

    .line 94
    :pswitch_4
    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f0201a6

    .line 95
    goto :goto_1

    .line 97
    :pswitch_5
    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f0201aa

    .line 98
    goto :goto_1

    .line 80
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
