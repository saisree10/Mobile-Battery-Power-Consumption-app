.class public final Lh;
.super Lae;
.source "BackStackRecord.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final a:Lv;

.field public b:Li;

.field c:Li;

.field public d:I

.field e:I

.field f:I

.field g:I

.field h:I

.field public i:I

.field public j:I

.field public k:Z

.field l:Z

.field public m:Ljava/lang/String;

.field n:Z

.field public o:I

.field public p:I

.field public q:Ljava/lang/CharSequence;

.field public r:I

.field public s:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Lv;)V
    .locals 1
    .parameter

    .prologue
    .line 333
    invoke-direct {p0}, Lae;-><init>()V

    .line 209
    const/4 v0, 0x1

    iput-boolean v0, p0, Lh;->l:Z

    .line 212
    const/4 v0, -0x1

    iput v0, p0, Lh;->o:I

    .line 334
    iput-object p1, p0, Lh;->a:Lv;

    .line 335
    return-void
.end method

.method private a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 394
    iget-object v0, p0, Lh;->a:Lv;

    iput-object v0, p2, Landroid/support/v4/app/Fragment;->mFragmentManager:Lv;

    .line 396
    if-eqz p3, :cond_1

    .line 397
    iget-object v0, p2, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p2, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 398
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t change tag of fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " now "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 402
    :cond_0
    iput-object p3, p2, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    .line 405
    :cond_1
    if-eqz p1, :cond_3

    .line 406
    iget v0, p2, Landroid/support/v4/app/Fragment;->mFragmentId:I

    if-eqz v0, :cond_2

    iget v0, p2, Landroid/support/v4/app/Fragment;->mFragmentId:I

    if-eq v0, p1, :cond_2

    .line 407
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t change container ID of fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Landroid/support/v4/app/Fragment;->mFragmentId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " now "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 411
    :cond_2
    iput p1, p2, Landroid/support/v4/app/Fragment;->mFragmentId:I

    iput p1, p2, Landroid/support/v4/app/Fragment;->mContainerId:I

    .line 414
    :cond_3
    new-instance v0, Li;

    invoke-direct {v0}, Li;-><init>()V

    .line 415
    iput p4, v0, Li;->c:I

    .line 416
    iput-object p2, v0, Li;->d:Landroid/support/v4/app/Fragment;

    .line 417
    invoke-virtual {p0, v0}, Lh;->a(Li;)V

    .line 418
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 574
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lh;->a(Z)I

    move-result v0

    return v0
.end method

.method a(Z)I
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 582
    iget-boolean v0, p0, Lh;->n:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "commit already called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 583
    :cond_0
    sget-boolean v0, Lv;->a:Z

    if-eqz v0, :cond_1

    .line 584
    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Commit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    new-instance v0, Lbp;

    const-string v1, "FragmentManager"

    invoke-direct {v0, v1}, Lbp;-><init>(Ljava/lang/String;)V

    .line 586
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 587
    const-string v0, "  "

    invoke-virtual {p0, v0, v3, v1, v3}, Lh;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 589
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lh;->n:Z

    .line 590
    iget-boolean v0, p0, Lh;->k:Z

    if-eqz v0, :cond_2

    .line 591
    iget-object v0, p0, Lh;->a:Lv;

    invoke-virtual {v0, p0}, Lv;->a(Lh;)I

    move-result v0

    iput v0, p0, Lh;->o:I

    .line 595
    :goto_0
    iget-object v0, p0, Lh;->a:Lv;

    invoke-virtual {v0, p0, p1}, Lv;->a(Ljava/lang/Runnable;Z)V

    .line 596
    iget v0, p0, Lh;->o:I

    return v0

    .line 593
    :cond_2
    const/4 v0, -0x1

    iput v0, p0, Lh;->o:I

    goto :goto_0
.end method

.method public a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Lae;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 389
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lh;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V

    .line 390
    return-object p0
.end method

.method public a(Landroid/support/v4/app/Fragment;)Lae;
    .locals 2
    .parameter

    .prologue
    .line 461
    new-instance v0, Li;

    invoke-direct {v0}, Li;-><init>()V

    .line 462
    const/4 v1, 0x6

    iput v1, v0, Li;->c:I

    .line 463
    iput-object p1, v0, Li;->d:Landroid/support/v4/app/Fragment;

    .line 464
    invoke-virtual {p0, v0}, Lh;->a(Li;)V

    .line 466
    return-object p0
.end method

.method public a(I)V
    .locals 6
    .parameter

    .prologue
    .line 549
    iget-boolean v0, p0, Lh;->k:Z

    if-nez v0, :cond_1

    .line 571
    :cond_0
    return-void

    .line 552
    :cond_1
    sget-boolean v0, Lv;->a:Z

    if-eqz v0, :cond_2

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bump nesting in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    :cond_2
    iget-object v0, p0, Lh;->b:Li;

    move-object v2, v0

    .line 555
    :goto_0
    if-eqz v2, :cond_0

    .line 556
    iget-object v0, v2, Li;->d:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_3

    .line 557
    iget-object v0, v2, Li;->d:Landroid/support/v4/app/Fragment;

    iget v1, v0, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    add-int/2addr v1, p1

    iput v1, v0, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    .line 558
    sget-boolean v0, Lv;->a:Z

    if-eqz v0, :cond_3

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bump nesting of "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v2, Li;->d:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v2, Li;->d:Landroid/support/v4/app/Fragment;

    iget v3, v3, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    :cond_3
    iget-object v0, v2, Li;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    .line 562
    iget-object v0, v2, Li;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_5

    .line 563
    iget-object v0, v2, Li;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 564
    iget v3, v0, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    add-int/2addr v3, p1

    iput v3, v0, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    .line 565
    sget-boolean v3, Lv;->a:Z

    if-eqz v3, :cond_4

    const-string v3, "FragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bump nesting of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v0, v0, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    :cond_4
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    .line 569
    :cond_5
    iget-object v0, v2, Li;->a:Li;

    move-object v2, v0

    goto/16 :goto_0
.end method

.method public a(Li;)V
    .locals 1
    .parameter

    .prologue
    .line 364
    iget-object v0, p0, Lh;->b:Li;

    if-nez v0, :cond_0

    .line 365
    iput-object p1, p0, Lh;->c:Li;

    iput-object p1, p0, Lh;->b:Li;

    .line 371
    :goto_0
    iget v0, p0, Lh;->e:I

    iput v0, p1, Li;->e:I

    .line 372
    iget v0, p0, Lh;->f:I

    iput v0, p1, Li;->f:I

    .line 373
    iget v0, p0, Lh;->g:I

    iput v0, p1, Li;->g:I

    .line 374
    iget v0, p0, Lh;->h:I

    iput v0, p1, Li;->h:I

    .line 375
    iget v0, p0, Lh;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lh;->d:I

    .line 376
    return-void

    .line 367
    :cond_0
    iget-object v0, p0, Lh;->c:Li;

    iput-object v0, p1, Li;->b:Li;

    .line 368
    iget-object v0, p0, Lh;->c:Li;

    iput-object p1, v0, Li;->a:Li;

    .line 369
    iput-object p1, p0, Lh;->c:Li;

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 237
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p3, v0}, Lh;->a(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    .line 238
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/PrintWriter;Z)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 241
    if-eqz p3, :cond_8

    .line 242
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mName="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lh;->m:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 243
    const-string v0, " mIndex="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lh;->o:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 244
    const-string v0, " mCommitted="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lh;->n:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 245
    iget v0, p0, Lh;->i:I

    if-eqz v0, :cond_0

    .line 246
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTransition=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 247
    iget v0, p0, Lh;->i:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 248
    const-string v0, " mTransitionStyle=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 249
    iget v0, p0, Lh;->j:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 251
    :cond_0
    iget v0, p0, Lh;->e:I

    if-nez v0, :cond_1

    iget v0, p0, Lh;->f:I

    if-eqz v0, :cond_2

    .line 252
    :cond_1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mEnterAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 253
    iget v0, p0, Lh;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 254
    const-string v0, " mExitAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 255
    iget v0, p0, Lh;->f:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 257
    :cond_2
    iget v0, p0, Lh;->g:I

    if-nez v0, :cond_3

    iget v0, p0, Lh;->h:I

    if-eqz v0, :cond_4

    .line 258
    :cond_3
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mPopEnterAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 259
    iget v0, p0, Lh;->g:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 260
    const-string v0, " mPopExitAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 261
    iget v0, p0, Lh;->h:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 263
    :cond_4
    iget v0, p0, Lh;->p:I

    if-nez v0, :cond_5

    iget-object v0, p0, Lh;->q:Ljava/lang/CharSequence;

    if-eqz v0, :cond_6

    .line 264
    :cond_5
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mBreadCrumbTitleRes=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 265
    iget v0, p0, Lh;->p:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 266
    const-string v0, " mBreadCrumbTitleText="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 267
    iget-object v0, p0, Lh;->q:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 269
    :cond_6
    iget v0, p0, Lh;->r:I

    if-nez v0, :cond_7

    iget-object v0, p0, Lh;->s:Ljava/lang/CharSequence;

    if-eqz v0, :cond_8

    .line 270
    :cond_7
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mBreadCrumbShortTitleRes=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 271
    iget v0, p0, Lh;->r:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 272
    const-string v0, " mBreadCrumbShortTitleText="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Lh;->s:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 277
    :cond_8
    iget-object v0, p0, Lh;->b:Li;

    if-eqz v0, :cond_10

    .line 278
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Operations:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "    "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 280
    iget-object v0, p0, Lh;->b:Li;

    move v2, v1

    move-object v3, v0

    .line 282
    :goto_0
    if-eqz v3, :cond_10

    .line 284
    iget v0, v3, Li;->c:I

    packed-switch v0, :pswitch_data_0

    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cmd="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v5, v3, Li;->c:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 295
    :goto_1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  Op #"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 296
    const-string v5, ": "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 297
    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v3, Li;->d:Landroid/support/v4/app/Fragment;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 298
    if-eqz p3, :cond_c

    .line 299
    iget v0, v3, Li;->e:I

    if-nez v0, :cond_9

    iget v0, v3, Li;->f:I

    if-eqz v0, :cond_a

    .line 300
    :cond_9
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "enterAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 301
    iget v0, v3, Li;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 302
    const-string v0, " exitAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 303
    iget v0, v3, Li;->f:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 305
    :cond_a
    iget v0, v3, Li;->g:I

    if-nez v0, :cond_b

    iget v0, v3, Li;->h:I

    if-eqz v0, :cond_c

    .line 306
    :cond_b
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "popEnterAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 307
    iget v0, v3, Li;->g:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 308
    const-string v0, " popExitAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 309
    iget v0, v3, Li;->h:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 312
    :cond_c
    iget-object v0, v3, Li;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_f

    iget-object v0, v3, Li;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_f

    move v0, v1

    .line 313
    :goto_2
    iget-object v5, v3, Li;->i:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_f

    .line 314
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 315
    iget-object v5, v3, Li;->i:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_d

    .line 316
    const-string v5, "Removed: "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 324
    :goto_3
    iget-object v5, v3, Li;->i:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 313
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 285
    :pswitch_0
    const-string v0, "NULL"

    goto/16 :goto_1

    .line 286
    :pswitch_1
    const-string v0, "ADD"

    goto/16 :goto_1

    .line 287
    :pswitch_2
    const-string v0, "REPLACE"

    goto/16 :goto_1

    .line 288
    :pswitch_3
    const-string v0, "REMOVE"

    goto/16 :goto_1

    .line 289
    :pswitch_4
    const-string v0, "HIDE"

    goto/16 :goto_1

    .line 290
    :pswitch_5
    const-string v0, "SHOW"

    goto/16 :goto_1

    .line 291
    :pswitch_6
    const-string v0, "DETACH"

    goto/16 :goto_1

    .line 292
    :pswitch_7
    const-string v0, "ATTACH"

    goto/16 :goto_1

    .line 318
    :cond_d
    if-nez v0, :cond_e

    .line 319
    const-string v5, "Removed:"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 321
    :cond_e
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  #"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 322
    const-string v5, ": "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_3

    .line 327
    :cond_f
    iget-object v3, v3, Li;->a:Li;

    .line 328
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    .line 329
    goto/16 :goto_0

    .line 331
    :cond_10
    return-void

    .line 284
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public b()I
    .locals 1

    .prologue
    .line 578
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lh;->a(Z)I

    move-result v0

    return v0
.end method

.method public b(Landroid/support/v4/app/Fragment;)Lae;
    .locals 2
    .parameter

    .prologue
    .line 470
    new-instance v0, Li;

    invoke-direct {v0}, Li;-><init>()V

    .line 471
    const/4 v1, 0x7

    iput v1, v0, Li;->c:I

    .line 472
    iput-object p1, v0, Li;->d:Landroid/support/v4/app/Fragment;

    .line 473
    invoke-virtual {p0, v0}, Lh;->a(Li;)V

    .line 475
    return-object p0
.end method

.method public b(Z)V
    .locals 7
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v6, -0x1

    const/4 v2, 0x0

    .line 691
    sget-boolean v0, Lv;->a:Z

    if-eqz v0, :cond_0

    .line 692
    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "popFromBackStack: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    new-instance v0, Lbp;

    const-string v1, "FragmentManager"

    invoke-direct {v0, v1}, Lbp;-><init>(Ljava/lang/String;)V

    .line 694
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 695
    const-string v0, "  "

    invoke-virtual {p0, v0, v4, v1, v4}, Lh;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 698
    :cond_0
    invoke-virtual {p0, v6}, Lh;->a(I)V

    .line 700
    iget-object v0, p0, Lh;->c:Li;

    move-object v3, v0

    .line 701
    :goto_0
    if-eqz v3, :cond_3

    .line 702
    iget v0, v3, Li;->c:I

    packed-switch v0, :pswitch_data_0

    .line 756
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown cmd: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v3, Li;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 704
    :pswitch_0
    iget-object v0, v3, Li;->d:Landroid/support/v4/app/Fragment;

    .line 705
    iget v1, v3, Li;->h:I

    iput v1, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 706
    iget-object v1, p0, Lh;->a:Lv;

    iget v4, p0, Lh;->i:I

    invoke-static {v4}, Lv;->c(I)I

    move-result v4

    iget v5, p0, Lh;->j:I

    invoke-virtual {v1, v0, v4, v5}, Lv;->a(Landroid/support/v4/app/Fragment;II)V

    .line 760
    :cond_1
    :goto_1
    iget-object v0, v3, Li;->b:Li;

    move-object v3, v0

    goto :goto_0

    .line 711
    :pswitch_1
    iget-object v0, v3, Li;->d:Landroid/support/v4/app/Fragment;

    .line 712
    if-eqz v0, :cond_2

    .line 713
    iget v1, v3, Li;->h:I

    iput v1, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 714
    iget-object v1, p0, Lh;->a:Lv;

    iget v4, p0, Lh;->i:I

    invoke-static {v4}, Lv;->c(I)I

    move-result v4

    iget v5, p0, Lh;->j:I

    invoke-virtual {v1, v0, v4, v5}, Lv;->a(Landroid/support/v4/app/Fragment;II)V

    .line 718
    :cond_2
    iget-object v0, v3, Li;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    move v1, v2

    .line 719
    :goto_2
    iget-object v0, v3, Li;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 720
    iget-object v0, v3, Li;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 721
    iget v4, v3, Li;->g:I

    iput v4, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 722
    iget-object v4, p0, Lh;->a:Lv;

    invoke-virtual {v4, v0, v2}, Lv;->a(Landroid/support/v4/app/Fragment;Z)V

    .line 719
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 727
    :pswitch_2
    iget-object v0, v3, Li;->d:Landroid/support/v4/app/Fragment;

    .line 728
    iget v1, v3, Li;->g:I

    iput v1, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 729
    iget-object v1, p0, Lh;->a:Lv;

    invoke-virtual {v1, v0, v2}, Lv;->a(Landroid/support/v4/app/Fragment;Z)V

    goto :goto_1

    .line 732
    :pswitch_3
    iget-object v0, v3, Li;->d:Landroid/support/v4/app/Fragment;

    .line 733
    iget v1, v3, Li;->g:I

    iput v1, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 734
    iget-object v1, p0, Lh;->a:Lv;

    iget v4, p0, Lh;->i:I

    invoke-static {v4}, Lv;->c(I)I

    move-result v4

    iget v5, p0, Lh;->j:I

    invoke-virtual {v1, v0, v4, v5}, Lv;->c(Landroid/support/v4/app/Fragment;II)V

    goto :goto_1

    .line 738
    :pswitch_4
    iget-object v0, v3, Li;->d:Landroid/support/v4/app/Fragment;

    .line 739
    iget v1, v3, Li;->h:I

    iput v1, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 740
    iget-object v1, p0, Lh;->a:Lv;

    iget v4, p0, Lh;->i:I

    invoke-static {v4}, Lv;->c(I)I

    move-result v4

    iget v5, p0, Lh;->j:I

    invoke-virtual {v1, v0, v4, v5}, Lv;->b(Landroid/support/v4/app/Fragment;II)V

    goto :goto_1

    .line 744
    :pswitch_5
    iget-object v0, v3, Li;->d:Landroid/support/v4/app/Fragment;

    .line 745
    iget v1, v3, Li;->g:I

    iput v1, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 746
    iget-object v1, p0, Lh;->a:Lv;

    iget v4, p0, Lh;->i:I

    invoke-static {v4}, Lv;->c(I)I

    move-result v4

    iget v5, p0, Lh;->j:I

    invoke-virtual {v1, v0, v4, v5}, Lv;->e(Landroid/support/v4/app/Fragment;II)V

    goto/16 :goto_1

    .line 750
    :pswitch_6
    iget-object v0, v3, Li;->d:Landroid/support/v4/app/Fragment;

    .line 751
    iget v1, v3, Li;->g:I

    iput v1, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 752
    iget-object v1, p0, Lh;->a:Lv;

    iget v4, p0, Lh;->i:I

    invoke-static {v4}, Lv;->c(I)I

    move-result v4

    iget v5, p0, Lh;->j:I

    invoke-virtual {v1, v0, v4, v5}, Lv;->d(Landroid/support/v4/app/Fragment;II)V

    goto/16 :goto_1

    .line 763
    :cond_3
    if-eqz p1, :cond_4

    .line 764
    iget-object v0, p0, Lh;->a:Lv;

    iget-object v1, p0, Lh;->a:Lv;

    iget v1, v1, Lv;->n:I

    iget v2, p0, Lh;->i:I

    invoke-static {v2}, Lv;->c(I)I

    move-result v2

    iget v3, p0, Lh;->j:I

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lv;->a(IIIZ)V

    .line 768
    :cond_4
    iget v0, p0, Lh;->o:I

    if-ltz v0, :cond_5

    .line 769
    iget-object v0, p0, Lh;->a:Lv;

    iget v1, p0, Lh;->o:I

    invoke-virtual {v0, v1}, Lv;->b(I)V

    .line 770
    iput v6, p0, Lh;->o:I

    .line 772
    :cond_5
    return-void

    .line 702
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 775
    iget-object v0, p0, Lh;->m:Ljava/lang/String;

    return-object v0
.end method

.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 600
    sget-boolean v0, Lv;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Run: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    :cond_0
    iget-boolean v0, p0, Lh;->k:Z

    if-eqz v0, :cond_1

    .line 603
    iget v0, p0, Lh;->o:I

    if-gez v0, :cond_1

    .line 604
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "addToBackStack() called after commit()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 608
    :cond_1
    invoke-virtual {p0, v8}, Lh;->a(I)V

    .line 610
    iget-object v0, p0, Lh;->b:Li;

    move-object v4, v0

    .line 611
    :goto_0
    if-eqz v4, :cond_b

    .line 612
    iget v0, v4, Li;->c:I

    packed-switch v0, :pswitch_data_0

    .line 675
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown cmd: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v4, Li;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 614
    :pswitch_0
    iget-object v0, v4, Li;->d:Landroid/support/v4/app/Fragment;

    .line 615
    iget v1, v4, Li;->e:I

    iput v1, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 616
    iget-object v1, p0, Lh;->a:Lv;

    invoke-virtual {v1, v0, v2}, Lv;->a(Landroid/support/v4/app/Fragment;Z)V

    .line 679
    :cond_2
    :goto_1
    iget-object v0, v4, Li;->a:Li;

    move-object v4, v0

    goto :goto_0

    .line 619
    :pswitch_1
    iget-object v0, v4, Li;->d:Landroid/support/v4/app/Fragment;

    .line 620
    iget-object v1, p0, Lh;->a:Lv;

    iget-object v1, v1, Lv;->g:Ljava/util/ArrayList;

    if-eqz v1, :cond_9

    move v1, v2

    move-object v3, v0

    .line 621
    :goto_2
    iget-object v0, p0, Lh;->a:Lv;

    iget-object v0, v0, Lv;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_a

    .line 622
    iget-object v0, p0, Lh;->a:Lv;

    iget-object v0, v0, Lv;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 623
    sget-boolean v5, Lv;->a:Z

    if-eqz v5, :cond_3

    const-string v5, "FragmentManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OP_REPLACE: adding="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " old="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    :cond_3
    if-eqz v3, :cond_4

    iget v5, v0, Landroid/support/v4/app/Fragment;->mContainerId:I

    iget v6, v3, Landroid/support/v4/app/Fragment;->mContainerId:I

    if-ne v5, v6, :cond_5

    .line 626
    :cond_4
    if-ne v0, v3, :cond_6

    .line 627
    const/4 v3, 0x0

    iput-object v3, v4, Li;->d:Landroid/support/v4/app/Fragment;

    .line 621
    :cond_5
    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 629
    :cond_6
    iget-object v5, v4, Li;->i:Ljava/util/ArrayList;

    if-nez v5, :cond_7

    .line 630
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v4, Li;->i:Ljava/util/ArrayList;

    .line 632
    :cond_7
    iget-object v5, v4, Li;->i:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 633
    iget v5, v4, Li;->f:I

    iput v5, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 634
    iget-boolean v5, p0, Lh;->k:Z

    if-eqz v5, :cond_8

    .line 635
    iget v5, v0, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v0, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    .line 636
    sget-boolean v5, Lv;->a:Z

    if-eqz v5, :cond_8

    const-string v5, "FragmentManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bump nesting of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    :cond_8
    iget-object v5, p0, Lh;->a:Lv;

    iget v6, p0, Lh;->i:I

    iget v7, p0, Lh;->j:I

    invoke-virtual {v5, v0, v6, v7}, Lv;->a(Landroid/support/v4/app/Fragment;II)V

    goto :goto_3

    :cond_9
    move-object v3, v0

    .line 644
    :cond_a
    if-eqz v3, :cond_2

    .line 645
    iget v0, v4, Li;->e:I

    iput v0, v3, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 646
    iget-object v0, p0, Lh;->a:Lv;

    invoke-virtual {v0, v3, v2}, Lv;->a(Landroid/support/v4/app/Fragment;Z)V

    goto/16 :goto_1

    .line 650
    :pswitch_2
    iget-object v0, v4, Li;->d:Landroid/support/v4/app/Fragment;

    .line 651
    iget v1, v4, Li;->f:I

    iput v1, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 652
    iget-object v1, p0, Lh;->a:Lv;

    iget v3, p0, Lh;->i:I

    iget v5, p0, Lh;->j:I

    invoke-virtual {v1, v0, v3, v5}, Lv;->a(Landroid/support/v4/app/Fragment;II)V

    goto/16 :goto_1

    .line 655
    :pswitch_3
    iget-object v0, v4, Li;->d:Landroid/support/v4/app/Fragment;

    .line 656
    iget v1, v4, Li;->f:I

    iput v1, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 657
    iget-object v1, p0, Lh;->a:Lv;

    iget v3, p0, Lh;->i:I

    iget v5, p0, Lh;->j:I

    invoke-virtual {v1, v0, v3, v5}, Lv;->b(Landroid/support/v4/app/Fragment;II)V

    goto/16 :goto_1

    .line 660
    :pswitch_4
    iget-object v0, v4, Li;->d:Landroid/support/v4/app/Fragment;

    .line 661
    iget v1, v4, Li;->e:I

    iput v1, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 662
    iget-object v1, p0, Lh;->a:Lv;

    iget v3, p0, Lh;->i:I

    iget v5, p0, Lh;->j:I

    invoke-virtual {v1, v0, v3, v5}, Lv;->c(Landroid/support/v4/app/Fragment;II)V

    goto/16 :goto_1

    .line 665
    :pswitch_5
    iget-object v0, v4, Li;->d:Landroid/support/v4/app/Fragment;

    .line 666
    iget v1, v4, Li;->f:I

    iput v1, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 667
    iget-object v1, p0, Lh;->a:Lv;

    iget v3, p0, Lh;->i:I

    iget v5, p0, Lh;->j:I

    invoke-virtual {v1, v0, v3, v5}, Lv;->d(Landroid/support/v4/app/Fragment;II)V

    goto/16 :goto_1

    .line 670
    :pswitch_6
    iget-object v0, v4, Li;->d:Landroid/support/v4/app/Fragment;

    .line 671
    iget v1, v4, Li;->e:I

    iput v1, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 672
    iget-object v1, p0, Lh;->a:Lv;

    iget v3, p0, Lh;->i:I

    iget v5, p0, Lh;->j:I

    invoke-virtual {v1, v0, v3, v5}, Lv;->e(Landroid/support/v4/app/Fragment;II)V

    goto/16 :goto_1

    .line 682
    :cond_b
    iget-object v0, p0, Lh;->a:Lv;

    iget-object v1, p0, Lh;->a:Lv;

    iget v1, v1, Lv;->n:I

    iget v2, p0, Lh;->i:I

    iget v3, p0, Lh;->j:I

    invoke-virtual {v0, v1, v2, v3, v8}, Lv;->a(IIIZ)V

    .line 685
    iget-boolean v0, p0, Lh;->k:Z

    if-eqz v0, :cond_c

    .line 686
    iget-object v0, p0, Lh;->a:Lv;

    invoke-virtual {v0, p0}, Lv;->b(Lh;)V

    .line 688
    :cond_c
    return-void

    .line 612
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 222
    const-string v1, "BackStackEntry{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    iget v1, p0, Lh;->o:I

    if-ltz v1, :cond_0

    .line 225
    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    iget v1, p0, Lh;->o:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 228
    :cond_0
    iget-object v1, p0, Lh;->m:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 229
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    iget-object v1, p0, Lh;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    :cond_1
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
