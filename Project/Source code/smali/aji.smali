.class public Laji;
.super Ljava/lang/Object;
.source "DiagnosticMainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

.field private volatile b:Z

.field private volatile c:Z


# direct methods
.method private constructor <init>(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 601
    iput-object p1, p0, Laji;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 602
    const/4 v0, 0x1

    iput-boolean v0, p0, Laji;->b:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;Lajf;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 601
    invoke-direct {p0, p1}, Laji;-><init>(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 5
    .parameter

    .prologue
    .line 668
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajk;

    .line 669
    iget-object v1, p0, Laji;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    invoke-static {v1}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->a(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Laji;->b:Z

    if-nez v1, :cond_1

    .line 702
    :cond_0
    return-void

    .line 672
    :cond_1
    iget-boolean v1, p0, Laji;->b:Z

    if-nez v1, :cond_0

    .line 675
    iget-object v1, p0, Laji;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    invoke-static {v1}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->z(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;)Landroid/os/Handler;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v0}, Lajk;->c()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 676
    invoke-virtual {v0}, Lajk;->a()V

    .line 678
    iget-object v1, p0, Laji;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    invoke-virtual {v0}, Lajk;->k()I

    move-result v3

    invoke-static {v1, v3}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->b(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;I)I

    .line 680
    iget-boolean v1, p0, Laji;->c:Z

    if-nez v1, :cond_2

    .line 682
    :try_start_0
    iget-object v1, p0, Laji;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    invoke-static {v1}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->j(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;)Ljava/util/List;

    move-result-object v1

    if-ne p1, v1, :cond_3

    .line 683
    const-wide/16 v3, 0x12c

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 700
    :cond_2
    :goto_1
    iget-object v1, p0, Laji;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    invoke-static {v1}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->z(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;)Landroid/os/Handler;

    move-result-object v1

    const/4 v3, 0x2

    invoke-static {v1, v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 685
    :cond_3
    :try_start_1
    iget-object v1, p0, Laji;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    invoke-static {v1}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->k(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;)Ljava/util/List;

    move-result-object v1

    if-ne p1, v1, :cond_4

    .line 686
    const-wide/16 v3, 0xc8

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 696
    :catch_0
    move-exception v1

    .line 697
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 687
    :cond_4
    :try_start_2
    iget-object v1, p0, Laji;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    invoke-static {v1}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->l(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;)Ljava/util/List;

    move-result-object v1

    if-ne p1, v1, :cond_5

    .line 688
    const-wide/16 v3, 0xc8

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_1

    .line 689
    :cond_5
    iget-object v1, p0, Laji;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    invoke-static {v1}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->g(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;)Ljava/util/List;

    move-result-object v1

    if-ne p1, v1, :cond_6

    .line 690
    const-wide/16 v3, 0x64

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_1

    .line 691
    :cond_6
    iget-object v1, p0, Laji;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    invoke-static {v1}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->y(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;)Ljava/util/List;

    move-result-object v1

    if-ne p1, v1, :cond_7

    .line 692
    const-wide/16 v3, 0xc8

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_1

    .line 693
    :cond_7
    iget-object v1, p0, Laji;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    invoke-static {v1}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->C(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;)Ljava/util/List;

    move-result-object v1

    if-ne p1, v1, :cond_2

    .line 694
    const-wide/16 v3, 0xc8

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method

.method private b()V
    .locals 5

    .prologue
    .line 614
    iget-object v0, p0, Laji;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->j(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Laji;->a(Ljava/util/List;)V

    .line 615
    iget-boolean v0, p0, Laji;->b:Z

    if-eqz v0, :cond_1

    .line 665
    :cond_0
    :goto_0
    return-void

    .line 618
    :cond_1
    iget-object v0, p0, Laji;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->x(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;)Laje;

    move-result-object v0

    invoke-virtual {v0}, Laje;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Laji;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    const-string v1, "com.dianxinos.optimizer.duplay"

    invoke-static {v0, v1}, Lazy;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 621
    iget-object v0, p0, Laji;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->y(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 622
    iget-object v0, p0, Laji;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->y(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lajd;

    iget-object v2, p0, Laji;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    iget-object v3, p0, Laji;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    invoke-static {v3}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->z(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Laji;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    invoke-static {v4}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->A(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lajd;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/widget/LinearLayout;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 625
    :cond_2
    iget-object v0, p0, Laji;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->z(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 626
    iget-object v0, p0, Laji;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->y(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Laji;->a(Ljava/util/List;)V

    .line 630
    :goto_1
    iget-boolean v0, p0, Laji;->b:Z

    if-nez v0, :cond_0

    .line 633
    iget-object v0, p0, Laji;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->B(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;)Lazr;

    move-result-object v0

    invoke-virtual {v0}, Lazr;->h()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 634
    iget-object v0, p0, Laji;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->z(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 635
    iget-object v0, p0, Laji;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->C(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Laji;->a(Ljava/util/List;)V

    .line 637
    :cond_3
    iget-boolean v0, p0, Laji;->b:Z

    if-nez v0, :cond_0

    .line 640
    iget-object v0, p0, Laji;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->z(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 641
    iget-object v0, p0, Laji;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->k(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Laji;->a(Ljava/util/List;)V

    .line 642
    iget-boolean v0, p0, Laji;->b:Z

    if-nez v0, :cond_0

    .line 645
    iget-object v0, p0, Laji;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->z(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 646
    iget-object v0, p0, Laji;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->l(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Laji;->a(Ljava/util/List;)V

    .line 647
    iget-boolean v0, p0, Laji;->b:Z

    if-nez v0, :cond_0

    .line 650
    iget-object v0, p0, Laji;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->z(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 651
    iget-object v0, p0, Laji;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->g(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Laji;->a(Ljava/util/List;)V

    .line 652
    iget-boolean v0, p0, Laji;->b:Z

    if-nez v0, :cond_0

    .line 655
    iget-boolean v0, p0, Laji;->c:Z

    if-nez v0, :cond_5

    .line 657
    const-wide/16 v0, 0x12c

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 661
    :goto_2
    iget-object v0, p0, Laji;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->z(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 628
    :cond_4
    iget-object v0, p0, Laji;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->z(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    .line 658
    :catch_0
    move-exception v0

    .line 659
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 663
    :cond_5
    iget-object v0, p0, Laji;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->z(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 610
    const/4 v0, 0x1

    iput-boolean v0, p0, Laji;->b:Z

    .line 611
    return-void
.end method

.method public a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 606
    iput-boolean p1, p0, Laji;->c:Z

    .line 607
    return-void
.end method

.method public run()V
    .locals 1

    .prologue
    .line 706
    iget-boolean v0, p0, Laji;->b:Z

    if-eqz v0, :cond_0

    .line 707
    const/4 v0, 0x0

    iput-boolean v0, p0, Laji;->b:Z

    .line 708
    invoke-direct {p0}, Laji;->b()V

    .line 709
    const/4 v0, 0x1

    iput-boolean v0, p0, Laji;->b:Z

    .line 711
    :cond_0
    return-void
.end method
