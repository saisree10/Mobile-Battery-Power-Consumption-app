.class public Lqp;
.super Lql;
.source "ToolboxListGoldActivity.java"


# instance fields
.field g:Lqr;

.field private h:Lmc;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lql;-><init>()V

    .line 26
    new-instance v0, Lqq;

    invoke-direct {v0, p0}, Lqq;-><init>(Lqp;)V

    iput-object v0, p0, Lqp;->h:Lmc;

    .line 35
    return-void
.end method

.method private b(Ljava/util/List;)V
    .locals 18
    .parameter

    .prologue
    .line 188
    invoke-static/range {p0 .. p0}, Lpi;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 190
    const/4 v1, 0x0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_5

    .line 191
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lou;

    .line 192
    const/4 v4, 0x0

    iput-boolean v4, v1, Lou;->u:Z

    .line 190
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 197
    :cond_0
    invoke-static/range {p0 .. p0}, Lom;->d(Landroid/content/Context;)J

    move-result-wide v9

    .line 198
    const-wide/16 v4, 0x0

    .line 199
    const-wide/16 v7, 0x0

    .line 200
    const/4 v2, -0x1

    .line 201
    const/4 v6, -0x1

    .line 202
    const/4 v3, 0x0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v11

    :goto_1
    if-ge v3, v11, :cond_3

    .line 203
    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lou;

    .line 204
    const/4 v12, 0x0

    iput-boolean v12, v1, Lou;->u:Z

    .line 205
    iget-wide v12, v1, Lou;->v:J

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-gtz v12, :cond_1

    move v1, v6

    move-wide/from16 v16, v7

    move-wide v6, v4

    move-wide/from16 v4, v16

    .line 202
    :goto_2
    add-int/lit8 v3, v3, 0x1

    move-wide/from16 v16, v4

    move-wide v4, v6

    move v6, v1

    move-wide/from16 v7, v16

    goto :goto_1

    .line 210
    :cond_1
    iget-wide v12, v1, Lou;->v:J

    cmp-long v12, v12, v4

    if-lez v12, :cond_2

    .line 211
    iget-wide v4, v1, Lou;->v:J

    move v2, v3

    .line 216
    :cond_2
    iget-wide v12, v1, Lou;->v:J

    cmp-long v12, v12, v9

    if-gez v12, :cond_9

    iget-wide v12, v1, Lou;->v:J

    cmp-long v12, v12, v7

    if-lez v12, :cond_9

    .line 217
    iget-wide v6, v1, Lou;->v:J

    move v1, v3

    move-wide/from16 v16, v6

    move-wide v6, v4

    move-wide/from16 v4, v16

    .line 218
    goto :goto_2

    .line 222
    :cond_3
    const/4 v1, 0x0

    .line 223
    if-lez v6, :cond_6

    .line 224
    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lou;

    .line 225
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 236
    :cond_4
    :goto_3
    if-eqz v1, :cond_5

    .line 237
    const/4 v2, 0x1

    iput-boolean v2, v1, Lou;->u:Z

    .line 238
    iget-wide v1, v1, Lou;->v:J

    move-object/from16 v0, p0

    invoke-static {v0, v1, v2}, Lom;->a(Landroid/content/Context;J)V

    .line 240
    :cond_5
    return-void

    .line 226
    :cond_6
    if-nez v6, :cond_7

    .line 228
    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lou;

    goto :goto_3

    .line 229
    :cond_7
    if-lez v2, :cond_8

    .line 230
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lou;

    .line 231
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_3

    .line 232
    :cond_8
    if-nez v2, :cond_4

    .line 233
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lou;

    goto :goto_3

    :cond_9
    move v1, v6

    move-wide/from16 v16, v7

    move-wide v6, v4

    move-wide/from16 v4, v16

    goto :goto_2
.end method


# virtual methods
.method protected a(Ljava/util/List;)Landroid/widget/ArrayAdapter;
    .locals 2
    .parameter

    .prologue
    .line 174
    invoke-direct {p0, p1}, Lqp;->b(Ljava/util/List;)V

    .line 175
    new-instance v0, Lpl;

    iget-object v1, p0, Lqp;->a:Landroid/app/Activity;

    invoke-direct {v0, v1, p1}, Lpl;-><init>(Landroid/content/Context;Ljava/util/List;)V

    return-object v0
.end method

.method protected a(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 151
    iget-object v0, p0, Lqp;->a:Landroid/app/Activity;

    invoke-static {v0}, Lpf;->d(Landroid/content/Context;)V

    .line 152
    iget-object v0, p0, Lqp;->a:Landroid/app/Activity;

    invoke-static {v0}, Lpi;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lqp;->a:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lom;->a(Landroid/content/Context;Z)V

    .line 154
    iget-object v0, p0, Lqp;->a:Landroid/app/Activity;

    invoke-static {v0}, Lpf;->e(Landroid/content/Context;)V

    .line 155
    invoke-static {}, Lmh;->a()V

    .line 159
    :goto_0
    return-void

    .line 157
    :cond_0
    iget-object v0, p0, Lqp;->d:Lpj;

    invoke-virtual {v0}, Lpj;->a()V

    goto :goto_0
.end method

.method protected d()Z
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x1

    return v0
.end method

.method protected e()Z
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x1

    return v0
.end method

.method protected g()V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lqp;->g:Lqr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lqp;->g:Lqr;

    invoke-virtual {v0}, Lqr;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    :goto_0
    return-void

    .line 126
    :cond_0
    new-instance v0, Lqr;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lqr;-><init>(Lqp;Lqq;)V

    iput-object v0, p0, Lqp;->g:Lqr;

    .line 127
    iget-object v0, p0, Lqp;->g:Lqr;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lqr;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method protected i()I
    .locals 1

    .prologue
    .line 139
    sget v0, Loj;->toolbox_list_gold_activity:I

    return v0
.end method

.method public k()V
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lqp;->g:Lqr;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lqp;->g:Lqr;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lqr;->cancel(Z)Z

    .line 135
    :cond_0
    return-void
.end method

.method protected l()Lpj;
    .locals 1

    .prologue
    .line 169
    new-instance v0, Lqs;

    invoke-direct {v0, p0}, Lqs;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method protected n()V
    .locals 3

    .prologue
    .line 144
    iget-object v0, p0, Lqp;->a:Landroid/app/Activity;

    invoke-static {v0}, Lnl;->a(Landroid/content/Context;)Lnl;

    move-result-object v0

    invoke-virtual {v0}, Lnl;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Loj;->tapjoy_entrance:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 146
    invoke-virtual {p0}, Lqp;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 148
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 97
    invoke-super {p0, p1}, Lql;->onCreate(Landroid/os/Bundle;)V

    .line 98
    iget-object v0, p0, Lqp;->h:Lmc;

    invoke-static {p0, v0}, Lcom/dianxinos/common/coins/CoinManager;->a(Landroid/content/Context;Lmc;)V

    .line 99
    invoke-static {p0}, Lcom/dianxinos/common/coins/CoinManager;->a(Landroid/content/Context;)Lcom/dianxinos/common/coins/CoinManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dianxinos/common/coins/CoinManager;->b()Ljava/lang/String;

    move-result-object v0

    .line 100
    invoke-virtual {p0}, Lqp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lmh;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 163
    invoke-super {p0}, Lql;->onDestroy()V

    .line 164
    iget-object v0, p0, Lqp;->h:Lmc;

    invoke-static {p0, v0}, Lcom/dianxinos/common/coins/CoinManager;->b(Landroid/content/Context;Lmc;)V

    .line 165
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 105
    invoke-super {p0}, Lql;->onResume()V

    .line 106
    iget-object v0, p0, Lqp;->a:Landroid/app/Activity;

    invoke-static {v0}, Lpt;->a(Landroid/content/Context;)V

    .line 107
    return-void
.end method
