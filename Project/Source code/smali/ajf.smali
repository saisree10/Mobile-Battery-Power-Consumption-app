.class public Lajf;
.super Landroid/os/Handler;
.source "DiagnosticMainActivity.java"


# instance fields
.field final synthetic a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;


# direct methods
.method public constructor <init>(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 142
    iput-object p1, p0, Lajf;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private declared-synchronized a()V
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v6, 0x4

    const/4 v5, 0x3

    .line 332
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lajf;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    invoke-static {v2}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->n(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;)I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lajf;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    invoke-static {v2}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->n(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;)I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lajf;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    invoke-static {v2}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->n(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eq v2, v6, :cond_1

    .line 394
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 336
    :cond_1
    :try_start_1
    iget-object v2, p0, Lajf;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->b(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;Z)V

    .line 337
    iget-object v2, p0, Lajf;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    invoke-static {v2}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->f(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;)Landroid/widget/ProgressBar;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 338
    iget-object v2, p0, Lajf;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    invoke-static {v2}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->p(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;)Lcom/dianxinos/powermanager/diagnostic/DiagnosticTitle;

    move-result-object v2

    iget-object v3, p0, Lajf;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    invoke-static {v3}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->o(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;)Lacz;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticTitle;->setChargingStatus(Lacz;)V

    .line 340
    iget-object v2, p0, Lajf;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    invoke-static {v2}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->n(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 342
    :pswitch_1
    iget-object v2, p0, Lajf;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    invoke-static {v2}, Lajj;->a(Landroid/content/Context;)I

    move-result v2

    .line 343
    iget-object v3, p0, Lajf;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    iget-object v4, p0, Lajf;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    invoke-static {v4}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->j(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;)Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->a(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_2

    move v0, v1

    .line 344
    :cond_2
    iget-object v3, p0, Lajf;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    invoke-static {v3}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->q(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;)I

    move-result v3

    invoke-static {v3, v0}, Lajj;->a(IZ)I

    move-result v0

    .line 345
    if-lt v0, v5, :cond_3

    .line 347
    iget-object v3, p0, Lajf;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lajj;->a(Landroid/content/Context;I)V

    .line 353
    :cond_3
    if-le v2, v0, :cond_4

    if-ne v0, v1, :cond_4

    .line 354
    const/4 v1, 0x3

    invoke-static {v1}, Lajj;->a(I)I

    .line 356
    :cond_4
    if-ne v0, v6, :cond_5

    .line 360
    iget-object v0, p0, Lajf;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->b(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;)Lcom/dianxinos/powermanager/diagnostic/DiagnosticDetail;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticDetail;->setState(I)V

    .line 363
    :cond_5
    :pswitch_2
    iget-object v0, p0, Lajf;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->p(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;)Lcom/dianxinos/powermanager/diagnostic/DiagnosticTitle;

    move-result-object v0

    invoke-static {}, Lajj;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticTitle;->setState(I)V

    .line 365
    iget-object v0, p0, Lajf;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    iget-object v1, p0, Lajf;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    invoke-static {v1}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->j(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->a(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;Ljava/util/List;)I

    move-result v0

    if-gtz v0, :cond_6

    .line 366
    iget-object v0, p0, Lajf;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->b(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;)Lcom/dianxinos/powermanager/diagnostic/DiagnosticDetail;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticDetail;->setState(I)V

    .line 367
    iget-object v0, p0, Lajf;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->h(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;)Lcom/dianxinos/powermanager/diagnostic/StateButton;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/diagnostic/StateButton;->setState(I)V

    .line 369
    :cond_6
    iget-object v0, p0, Lajf;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->b(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;)Lcom/dianxinos/powermanager/diagnostic/DiagnosticDetail;

    move-result-object v0

    iget-object v1, p0, Lajf;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    invoke-static {v1}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->o(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;)Lacz;

    move-result-object v1

    iget-object v2, p0, Lajf;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    invoke-static {v2}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->r(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticDetail;->a(Lacz;I)V

    .line 370
    iget-object v0, p0, Lajf;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->b(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;)Lcom/dianxinos/powermanager/diagnostic/DiagnosticDetail;

    move-result-object v0

    iget-object v1, p0, Lajf;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    invoke-static {v1}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->s(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticDetail;->setTime(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 332
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 373
    :pswitch_3
    :try_start_2
    iget-object v0, p0, Lajf;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->p(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;)Lcom/dianxinos/powermanager/diagnostic/DiagnosticTitle;

    move-result-object v0

    iget-object v1, p0, Lajf;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    invoke-static {v1}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->q(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;)I

    move-result v1

    invoke-static {v1}, Lajj;->b(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticTitle;->setState(I)V

    .line 374
    iget-object v0, p0, Lajf;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->b(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;)Lcom/dianxinos/powermanager/diagnostic/DiagnosticDetail;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticDetail;->setState(I)V

    .line 375
    iget-object v0, p0, Lajf;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->b(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;)Lcom/dianxinos/powermanager/diagnostic/DiagnosticDetail;

    move-result-object v0

    iget-object v1, p0, Lajf;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    invoke-static {v1}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->o(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;)Lacz;

    move-result-object v1

    iget-object v2, p0, Lajf;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    invoke-static {v2}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->r(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticDetail;->a(Lacz;I)V

    .line 376
    iget-object v0, p0, Lajf;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->b(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;)Lcom/dianxinos/powermanager/diagnostic/DiagnosticDetail;

    move-result-object v0

    iget-object v1, p0, Lajf;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    invoke-static {v1}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->s(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticDetail;->setTime(I)V

    .line 377
    iget-object v0, p0, Lajf;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->t(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lajf;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->c(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;Z)Z

    .line 379
    iget-object v0, p0, Lajf;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->u(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;)Lazz;

    move-result-object v0

    sget-object v1, Lbad;->a:Lbad;

    iget-object v2, p0, Lajf;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    invoke-static {v2}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->s(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lazz;->a(Lbad;J)Lbab;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lajf;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->v(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;)Lawg;

    move-result-object v0

    if-nez v0, :cond_7

    .line 381
    iget-object v0, p0, Lajf;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    new-instance v1, Lawg;

    iget-object v2, p0, Lajf;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    invoke-direct {v1, v2}, Lawg;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->a(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;Lawg;)Lawg;

    .line 383
    :cond_7
    iget-object v0, p0, Lajf;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->v(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;)Lawg;

    move-result-object v0

    invoke-virtual {v0}, Lawg;->dismiss()V

    .line 384
    iget-object v0, p0, Lajf;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->v(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;)Lawg;

    move-result-object v0

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0303

    iget-object v2, p0, Lajf;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    invoke-static {v2}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->s(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;)I

    move-result v2

    div-int/lit8 v2, v2, 0x3c

    invoke-virtual {v0, v1, v2}, Lawg;->a(II)V

    .line 386
    iget-object v0, p0, Lajf;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->v(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;)Lawg;

    move-result-object v0

    invoke-virtual {v0}, Lawg;->show()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 340
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .parameter

    .prologue
    const/4 v3, 0x4

    const/4 v9, 0x2

    const v8, 0x7f0700bf

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 145
    iget-object v0, p0, Lajf;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->a(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 326
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 151
    :pswitch_1
    iget-object v1, p0, Lajf;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    sget-object v0, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v2, 0x7f0a0342

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    aput-object v0, v3, v7

    invoke-virtual {v1, v2, v3}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 152
    iget-object v1, p0, Lajf;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    invoke-static {v1}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->b(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;)Lcom/dianxinos/powermanager/diagnostic/DiagnosticDetail;

    move-result-object v1

    invoke-virtual {v1, v6, v0}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticDetail;->a(ILjava/lang/String;)V

    goto :goto_0

    .line 157
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lajk;

    .line 158
    iget-object v1, p0, Lajf;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    invoke-static {v1}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->c(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v0, v1}, Lajk;->a(Landroid/view/LayoutInflater;)V

    .line 159
    iget-object v0, p0, Lajf;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->d(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;)I

    .line 160
    iget-object v0, p0, Lajf;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->f(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    iget-object v1, p0, Lajf;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    invoke-static {v1}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->e(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;)I

    move-result v1

    invoke-static {}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->a()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0

    .line 166
    :pswitch_3
    iget-object v0, p0, Lajf;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    sget-object v1, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v1, 0x7f0700cd

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lajf;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    sget-object v2, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v2, 0x7f0a0352

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lajf;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    iget-object v5, p0, Lajf;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    invoke-static {v5}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->g(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;)Ljava/util/List;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->a(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;Ljava/util/List;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v1, v2, v3}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    iget-object v0, p0, Lajf;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    invoke-static {v0, v9}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->a(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;I)I

    .line 175
    iget-object v0, p0, Lajf;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->h(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;)Lcom/dianxinos/powermanager/diagnostic/StateButton;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/dianxinos/powermanager/diagnostic/StateButton;->setState(I)V

    .line 176
    iget-object v0, p0, Lajf;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->b(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;)Lcom/dianxinos/powermanager/diagnostic/DiagnosticDetail;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticDetail;->setState(I)V

    .line 178
    iget-object v0, p0, Lajf;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    invoke-static {v0, v6}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->a(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;Z)Z

    .line 179
    iget-object v0, p0, Lajf;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.dianxinos.dxbs.action.RemainingTimeUpate"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 184
    :pswitch_4
    iget-object v0, p0, Lajf;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->a(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;I)I

    .line 185
    iget-object v0, p0, Lajf;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->h(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;)Lcom/dianxinos/powermanager/diagnostic/StateButton;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/dianxinos/powermanager/diagnostic/StateButton;->setEnabled(Z)V

    .line 186
    iget-object v0, p0, Lajf;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->i(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;)I

    .line 188
    iget-object v0, p0, Lajf;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    sget-object v1, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    invoke-virtual {v0, v8}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lajf;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    sget-object v2, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v2, 0x7f0a034e

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lajf;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    iget-object v5, p0, Lajf;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    invoke-static {v5}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->j(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;)Ljava/util/List;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->a(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;Ljava/util/List;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v1, v2, v3}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    iget-object v0, p0, Lajf;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    sget-object v1, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v1, 0x7f0700c7

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lajf;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    sget-object v2, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v2, 0x7f0a0350

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lajf;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    iget-object v5, p0, Lajf;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    invoke-static {v5}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->k(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;)Ljava/util/List;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->a(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;Ljava/util/List;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v1, v2, v3}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    iget-object v0, p0, Lajf;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    sget-object v1, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v1, 0x7f0700ca

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lajf;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    sget-object v2, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v2, 0x7f0a01fc

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lajf;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    iget-object v5, p0, Lajf;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    invoke-static {v5}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->l(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;)Ljava/util/List;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->a(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;Ljava/util/List;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v1, v2, v3}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    iget-object v0, p0, Lajf;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    sget-object v1, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v1, 0x7f0700cd

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lajf;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    sget-object v2, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v2, 0x7f0a0352

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lajf;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    iget-object v5, p0, Lajf;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    invoke-static {v5}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->g(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;)Ljava/util/List;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->a(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;Ljava/util/List;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v1, v2, v3}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    iget-object v0, p0, Lajf;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    invoke-static {v0, v6}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->a(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;Z)Z

    .line 202
    iget-object v0, p0, Lajf;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.dianxinos.dxbs.action.RemainingTimeUpate"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 207
    :pswitch_5
    iget-object v1, p0, Lajf;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    sget-object v0, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v2, 0x7f0a034b

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    aput-object v0, v3, v7

    invoke-virtual {v1, v2, v3}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 208
    iget-object v1, p0, Lajf;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    invoke-static {v1}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->b(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;)Lcom/dianxinos/powermanager/diagnostic/DiagnosticDetail;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v0}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticDetail;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 213
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lajk;

    .line 214
    invoke-virtual {v0}, Lajk;->n()V

    .line 215
    iget-object v0, p0, Lajf;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->d(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;)I

    .line 216
    iget-object v0, p0, Lajf;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->f(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    iget-object v1, p0, Lajf;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    invoke-static {v1}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->e(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;)I

    move-result v1

    invoke-static {}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->a()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto/16 :goto_0

    .line 221
    :pswitch_7
    iget-object v0, p0, Lajf;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    sget-object v1, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    invoke-virtual {v0, v8}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lajf;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    invoke-virtual {v1}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lly;->c:Lcom/dianxinos/dxbs/R$color;

    const v2, 0x7f090054

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 224
    iget-object v0, p0, Lajf;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    invoke-static {v0, v3}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->a(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;I)I

    .line 225
    iget-object v0, p0, Lajf;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->b(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;)Lcom/dianxinos/powermanager/diagnostic/DiagnosticDetail;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticDetail;->setState(I)V

    .line 226
    iget-object v0, p0, Lajf;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->h(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;)Lcom/dianxinos/powermanager/diagnostic/StateButton;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/dianxinos/powermanager/diagnostic/StateButton;->setState(I)V

    .line 227
    iget-object v0, p0, Lajf;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->i(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;)I

    .line 230
    iget-object v0, p0, Lajf;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    invoke-static {v0, v6}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->a(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;Z)Z

    .line 231
    iget-object v0, p0, Lajf;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.dianxinos.dxbs.action.RemainingTimeUpate"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 236
    :pswitch_8
    iget-object v0, p0, Lajf;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    sget-object v1, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v1, 0x7f0700c3

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 240
    :pswitch_9
    iget-object v0, p0, Lajf;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    sget-object v1, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v1, 0x7f0700c1

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 244
    :pswitch_a
    iget-object v0, p0, Lajf;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    sget-object v1, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v1, 0x7f0700c1

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 248
    :pswitch_b
    iget-object v1, p0, Lajf;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ladd;

    invoke-static {v1, v0}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->a(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;Ladd;)V

    goto/16 :goto_0

    .line 253
    :pswitch_c
    iget-object v0, p0, Lajf;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    sget-object v1, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    invoke-virtual {v0, v8}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lajf;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    sget-object v2, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v2, 0x7f0a034e

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lajf;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    iget-object v5, p0, Lajf;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    invoke-static {v5}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->j(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;)Ljava/util/List;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->a(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;Ljava/util/List;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v1, v2, v3}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    iget-object v0, p0, Lajf;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    iget-object v1, p0, Lajf;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    invoke-static {v1}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->j(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->a(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;Ljava/util/List;)I

    move-result v0

    if-nez v0, :cond_2

    .line 258
    iget-object v0, p0, Lajf;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    sget-object v1, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    invoke-virtual {v0, v8}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lajf;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    invoke-virtual {v1}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lly;->c:Lcom/dianxinos/dxbs/R$color;

    const v2, 0x7f090054

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 261
    :cond_2
    iget-object v0, p0, Lajf;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->m(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lajf;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    sget-object v1, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v1, 0x7f0700c6

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 269
    :pswitch_d
    iget-object v0, p0, Lajf;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    sget-object v1, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v1, 0x7f0700c7

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lajf;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    sget-object v2, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v2, 0x7f0a0350

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lajf;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    iget-object v5, p0, Lajf;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    invoke-static {v5}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->k(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;)Ljava/util/List;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->a(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;Ljava/util/List;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v1, v2, v3}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    iget-object v0, p0, Lajf;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    sget-object v1, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v1, 0x7f0700c9

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 279
    :pswitch_e
    iget-object v0, p0, Lajf;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    sget-object v1, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v1, 0x7f0700c9

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 280
    iget-object v0, p0, Lajf;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    iget-object v2, p0, Lajf;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    invoke-static {v2}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->l(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;)Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->a(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;Ljava/util/List;)I

    move-result v0

    .line 281
    if-nez v0, :cond_3

    .line 282
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 290
    :goto_1
    iget-object v0, p0, Lajf;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    sget-object v1, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v1, 0x7f0700cc

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 284
    :cond_3
    iget-object v0, p0, Lajf;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    sget-object v2, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v2, 0x7f0700ca

    invoke-virtual {v0, v2}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lajf;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    sget-object v3, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v3, 0x7f0a01fc

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v5, p0, Lajf;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    iget-object v6, p0, Lajf;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    invoke-static {v6}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->l(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;)Ljava/util/List;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->a(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;Ljava/util/List;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v2, v3, v4}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 288
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 295
    :pswitch_f
    iget-object v0, p0, Lajf;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->h(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;)Lcom/dianxinos/powermanager/diagnostic/StateButton;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/dianxinos/powermanager/diagnostic/StateButton;->setEnabled(Z)V

    .line 296
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lajk;

    .line 297
    invoke-virtual {v0, v7}, Lajk;->a(Z)V

    goto/16 :goto_0

    .line 302
    :pswitch_10
    iget-object v0, p0, Lajf;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->h(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;)Lcom/dianxinos/powermanager/diagnostic/StateButton;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/dianxinos/powermanager/diagnostic/StateButton;->setEnabled(Z)V

    .line 303
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lajk;

    .line 304
    invoke-virtual {v0}, Lajk;->g()V

    .line 305
    iget-object v0, p0, Lajf;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->i(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;)I

    .line 307
    iget-object v0, p0, Lajf;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->b(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;)Lcom/dianxinos/powermanager/diagnostic/DiagnosticDetail;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticDetail;->setState(I)V

    .line 309
    iget-object v0, p0, Lajf;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    invoke-static {v0, v6}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->a(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;Z)Z

    goto/16 :goto_0

    .line 314
    :pswitch_11
    invoke-direct {p0}, Lajf;->a()V

    goto/16 :goto_0

    .line 319
    :pswitch_12
    iget-object v0, p0, Lajf;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    invoke-virtual {v0}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 320
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 321
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 322
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto/16 :goto_0

    .line 149
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_c
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_11
        :pswitch_4
        :pswitch_12
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method
