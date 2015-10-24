.class Lau;
.super Ljava/lang/Object;
.source "NotificationCompat.java"

# interfaces
.implements Laq;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lao;)Landroid/app/Notification;
    .locals 18
    .parameter

    .prologue
    .line 117
    new-instance v1, Lay;

    move-object/from16 v0, p1

    iget-object v2, v0, Lao;->a:Landroid/content/Context;

    move-object/from16 v0, p1

    iget-object v3, v0, Lao;->r:Landroid/app/Notification;

    move-object/from16 v0, p1

    iget-object v4, v0, Lao;->b:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget-object v5, v0, Lao;->c:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget-object v6, v0, Lao;->h:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget-object v7, v0, Lao;->f:Landroid/widget/RemoteViews;

    move-object/from16 v0, p1

    iget v8, v0, Lao;->i:I

    move-object/from16 v0, p1

    iget-object v9, v0, Lao;->d:Landroid/app/PendingIntent;

    move-object/from16 v0, p1

    iget-object v10, v0, Lao;->e:Landroid/app/PendingIntent;

    move-object/from16 v0, p1

    iget-object v11, v0, Lao;->g:Landroid/graphics/Bitmap;

    move-object/from16 v0, p1

    iget v12, v0, Lao;->n:I

    move-object/from16 v0, p1

    iget v13, v0, Lao;->o:I

    move-object/from16 v0, p1

    iget-boolean v14, v0, Lao;->p:Z

    move-object/from16 v0, p1

    iget-boolean v15, v0, Lao;->k:Z

    move-object/from16 v0, p1

    iget v0, v0, Lao;->j:I

    move/from16 v16, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lao;->m:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    invoke-direct/range {v1 .. v17}, Lay;-><init>(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/graphics/Bitmap;IIZZILjava/lang/CharSequence;)V

    .line 122
    move-object/from16 v0, p1

    iget-object v2, v0, Lao;->q:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lal;

    .line 123
    iget v4, v2, Lal;->a:I

    iget-object v5, v2, Lal;->b:Ljava/lang/CharSequence;

    iget-object v2, v2, Lal;->c:Landroid/app/PendingIntent;

    invoke-virtual {v1, v4, v5, v2}, Lay;->a(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 125
    :cond_0
    move-object/from16 v0, p1

    iget-object v2, v0, Lao;->l:Lav;

    if-eqz v2, :cond_1

    .line 126
    move-object/from16 v0, p1

    iget-object v2, v0, Lao;->l:Lav;

    instance-of v2, v2, Lan;

    if-eqz v2, :cond_2

    .line 127
    move-object/from16 v0, p1

    iget-object v2, v0, Lao;->l:Lav;

    check-cast v2, Lan;

    .line 128
    iget-object v3, v2, Lan;->d:Ljava/lang/CharSequence;

    iget-boolean v4, v2, Lan;->f:Z

    iget-object v5, v2, Lan;->e:Ljava/lang/CharSequence;

    iget-object v2, v2, Lan;->a:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3, v4, v5, v2}, Lay;->a(Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 148
    :cond_1
    :goto_1
    invoke-virtual {v1}, Lay;->a()Landroid/app/Notification;

    move-result-object v1

    return-object v1

    .line 132
    :cond_2
    move-object/from16 v0, p1

    iget-object v2, v0, Lao;->l:Lav;

    instance-of v2, v2, Lap;

    if-eqz v2, :cond_3

    .line 133
    move-object/from16 v0, p1

    iget-object v2, v0, Lao;->l:Lav;

    check-cast v2, Lap;

    .line 134
    iget-object v3, v2, Lap;->d:Ljava/lang/CharSequence;

    iget-boolean v4, v2, Lap;->f:Z

    iget-object v5, v2, Lap;->e:Ljava/lang/CharSequence;

    iget-object v2, v2, Lap;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v3, v4, v5, v2}, Lay;->a(Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Ljava/util/ArrayList;)V

    goto :goto_1

    .line 138
    :cond_3
    move-object/from16 v0, p1

    iget-object v2, v0, Lao;->l:Lav;

    instance-of v2, v2, Lam;

    if-eqz v2, :cond_1

    .line 139
    move-object/from16 v0, p1

    iget-object v2, v0, Lao;->l:Lav;

    move-object v7, v2

    check-cast v7, Lam;

    .line 140
    iget-object v2, v7, Lam;->d:Ljava/lang/CharSequence;

    iget-boolean v3, v7, Lam;->f:Z

    iget-object v4, v7, Lam;->e:Ljava/lang/CharSequence;

    iget-object v5, v7, Lam;->a:Landroid/graphics/Bitmap;

    iget-object v6, v7, Lam;->b:Landroid/graphics/Bitmap;

    iget-boolean v7, v7, Lam;->c:Z

    invoke-virtual/range {v1 .. v7}, Lay;->a(Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)V

    goto :goto_1
.end method
