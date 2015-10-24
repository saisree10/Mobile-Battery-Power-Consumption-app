.class Lkd;
.super Ljava/lang/Object;
.source "UpdateManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljl;

.field final synthetic b:Lju;

.field final synthetic c:Z

.field final synthetic d:Z

.field final synthetic e:Lka;


# direct methods
.method constructor <init>(Lka;Ljl;Lju;ZZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 655
    iput-object p1, p0, Lkd;->e:Lka;

    iput-object p2, p0, Lkd;->a:Ljl;

    iput-object p3, p0, Lkd;->b:Lju;

    iput-boolean p4, p0, Lkd;->c:Z

    iput-boolean p5, p0, Lkd;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 657
    invoke-static {}, Lka;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 658
    const-string v0, "UpdateManager"

    const-string v1, "Start to check archive"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lkd;->e:Lka;

    invoke-static {v1}, Lka;->b(Lka;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lkd;->e:Lka;

    invoke-static {v1}, Lka;->c(Lka;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 661
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 662
    iget-object v0, p0, Lkd;->a:Ljl;

    if-eqz v0, :cond_1

    .line 663
    iget-object v0, p0, Lkd;->a:Ljl;

    invoke-interface {v0}, Ljl;->a()V

    .line 665
    :cond_1
    iget-object v0, p0, Lkd;->b:Lju;

    if-eqz v0, :cond_2

    .line 666
    iget-object v0, p0, Lkd;->b:Lju;

    invoke-interface {v0}, Lju;->a()V

    .line 756
    :cond_2
    :goto_0
    iget-object v0, p0, Lkd;->e:Lka;

    invoke-static {v0}, Lka;->e(Lka;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 757
    :try_start_0
    iget-object v0, p0, Lkd;->e:Lka;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lka;->a(Lka;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 758
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 759
    return-void

    .line 669
    :cond_3
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 670
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 671
    iget-object v0, p0, Lkd;->e:Lka;

    invoke-static {v0}, Lka;->d(Lka;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lis;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 674
    if-nez v0, :cond_a

    .line 675
    invoke-static {}, Lka;->p()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 676
    const-string v0, "UpdateManager"

    const-string v2, "About to install"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    :cond_4
    iget-object v0, p0, Lkd;->a:Ljl;

    if-eqz v0, :cond_5

    .line 680
    iget-object v0, p0, Lkd;->a:Ljl;

    invoke-interface {v0}, Ljl;->d()V

    .line 682
    :cond_5
    iget-object v0, p0, Lkd;->b:Lju;

    if-eqz v0, :cond_6

    .line 683
    iget-object v0, p0, Lkd;->b:Lju;

    invoke-interface {v0}, Lju;->d()V

    .line 685
    :cond_6
    iget-boolean v0, p0, Lkd;->c:Z

    if-eqz v0, :cond_9

    .line 686
    iget-object v0, p0, Lkd;->e:Lka;

    invoke-static {v0, v1}, Lka;->a(Lka;Ljava/io/File;)Z

    move-result v0

    .line 687
    if-nez v0, :cond_2

    .line 688
    iget-boolean v0, p0, Lkd;->d:Z

    if-eqz v0, :cond_8

    .line 689
    invoke-static {}, Lka;->p()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 690
    const-string v0, "UpdateManager"

    const-string v2, "Slient installation fails, switch to normal mode"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    :cond_7
    iget-object v0, p0, Lkd;->e:Lka;

    invoke-static {v0, v1}, Lka;->b(Lka;Ljava/io/File;)V

    goto :goto_0

    .line 694
    :cond_8
    iget-object v0, p0, Lkd;->b:Lju;

    if-eqz v0, :cond_2

    .line 695
    iget-object v0, p0, Lkd;->b:Lju;

    invoke-interface {v0}, Lju;->e()V

    goto :goto_0

    .line 700
    :cond_9
    iget-object v0, p0, Lkd;->e:Lka;

    invoke-static {v0, v1}, Lka;->b(Lka;Ljava/io/File;)V

    goto/16 :goto_0

    .line 702
    :cond_a
    const/4 v1, 0x3

    if-ne v0, v1, :cond_d

    .line 704
    invoke-static {}, Lka;->p()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 705
    const-string v0, "UpdateManager"

    const-string v1, "Package name mismatches"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    :cond_b
    iget-object v0, p0, Lkd;->a:Ljl;

    if-eqz v0, :cond_c

    .line 708
    iget-object v0, p0, Lkd;->a:Ljl;

    invoke-interface {v0}, Ljl;->b()V

    .line 710
    :cond_c
    iget-object v0, p0, Lkd;->b:Lju;

    if-eqz v0, :cond_2

    .line 711
    iget-object v0, p0, Lkd;->b:Lju;

    invoke-interface {v0}, Lju;->b()V

    goto/16 :goto_0

    .line 713
    :cond_d
    const/4 v1, 0x2

    if-ne v0, v1, :cond_10

    .line 714
    invoke-static {}, Lka;->p()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 715
    const-string v0, "UpdateManager"

    const-string v1, "Version too old"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    :cond_e
    iget-object v0, p0, Lkd;->a:Ljl;

    if-eqz v0, :cond_f

    .line 718
    iget-object v0, p0, Lkd;->a:Ljl;

    invoke-interface {v0}, Ljl;->c()V

    .line 720
    :cond_f
    iget-object v0, p0, Lkd;->b:Lju;

    if-eqz v0, :cond_2

    .line 721
    iget-object v0, p0, Lkd;->b:Lju;

    invoke-interface {v0}, Lju;->c()V

    goto/16 :goto_0

    .line 723
    :cond_10
    const/4 v1, 0x4

    if-ne v0, v1, :cond_13

    .line 724
    invoke-static {}, Lka;->p()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 725
    const-string v0, "UpdateManager"

    const-string v1, "check sum failure"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    :cond_11
    iget-object v0, p0, Lkd;->a:Ljl;

    if-eqz v0, :cond_12

    .line 728
    iget-object v0, p0, Lkd;->a:Ljl;

    invoke-interface {v0}, Ljl;->b()V

    .line 730
    :cond_12
    iget-object v0, p0, Lkd;->b:Lju;

    if-eqz v0, :cond_2

    .line 731
    iget-object v0, p0, Lkd;->b:Lju;

    invoke-interface {v0}, Lju;->b()V

    goto/16 :goto_0

    .line 734
    :cond_13
    invoke-static {}, Lka;->p()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 735
    const-string v0, "UpdateManager"

    const-string v1, "Invalid archive"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    :cond_14
    iget-object v0, p0, Lkd;->a:Ljl;

    if-eqz v0, :cond_15

    .line 738
    iget-object v0, p0, Lkd;->a:Ljl;

    invoke-interface {v0}, Ljl;->b()V

    .line 740
    :cond_15
    iget-object v0, p0, Lkd;->b:Lju;

    if-eqz v0, :cond_2

    .line 741
    iget-object v0, p0, Lkd;->b:Lju;

    invoke-interface {v0}, Lju;->b()V

    goto/16 :goto_0

    .line 745
    :cond_16
    invoke-static {}, Lka;->p()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 746
    const-string v1, "UpdateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "File not found:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    :cond_17
    iget-object v0, p0, Lkd;->a:Ljl;

    if-eqz v0, :cond_18

    .line 749
    iget-object v0, p0, Lkd;->a:Ljl;

    invoke-interface {v0}, Ljl;->a()V

    .line 751
    :cond_18
    iget-object v0, p0, Lkd;->b:Lju;

    if-eqz v0, :cond_2

    .line 752
    iget-object v0, p0, Lkd;->b:Lju;

    invoke-interface {v0}, Lju;->a()V

    goto/16 :goto_0

    .line 758
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
