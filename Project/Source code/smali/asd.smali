.class Lasd;
.super Ljava/lang/Object;
.source "SmartModeSwitcher.java"


# instance fields
.field final synthetic a:Lasc;

.field private b:I

.field private c:I

.field private d:Ljava/util/ArrayList;

.field private e:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Lasc;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 347
    iput-object p1, p0, Lasd;->a:Lasc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 348
    iput p2, p0, Lasd;->b:I

    .line 349
    const/4 v0, -0x1

    iput v0, p0, Lasd;->c:I

    .line 351
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lasd;->d:Ljava/util/ArrayList;

    .line 352
    invoke-static {p1}, Lasc;->a(Lasc;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "smart_mode_help_stack"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lasd;->e:Landroid/content/SharedPreferences;

    .line 353
    invoke-direct {p0}, Lasd;->a()V

    .line 354
    return-void
.end method

.method private a()V
    .locals 5

    .prologue
    .line 360
    iget-object v0, p0, Lasd;->e:Landroid/content/SharedPreferences;

    const-string v1, "top"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lasd;->c:I

    .line 361
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lasd;->b:I

    if-ge v0, v1, :cond_0

    .line 362
    iget-object v1, p0, Lasd;->d:Ljava/util/ArrayList;

    iget-object v2, p0, Lasd;->e:Landroid/content/SharedPreferences;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 361
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 364
    :cond_0
    return-void
.end method

.method private a(I)V
    .locals 3
    .parameter

    .prologue
    .line 471
    iget-object v0, p0, Lasd;->e:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 472
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 473
    const-string v1, "top"

    add-int/lit8 v2, p1, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 474
    invoke-static {v0}, Lgm;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 475
    return-void
.end method

.method private a(ILjava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 459
    iget-object v0, p0, Lasd;->e:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 460
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 461
    const-string v1, "top"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 462
    invoke-static {v0}, Lgm;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 463
    return-void
.end method

.method private b()Ljava/lang/String;
    .locals 4

    .prologue
    .line 367
    iget v0, p0, Lasd;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 368
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "The stack is empty"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 370
    :cond_0
    iget-object v0, p0, Lasd;->d:Ljava/util/ArrayList;

    iget v1, p0, Lasd;->c:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 372
    iget v1, p0, Lasd;->c:I

    invoke-direct {p0, v1}, Lasd;->a(I)V

    .line 373
    iget-object v1, p0, Lasd;->d:Ljava/util/ArrayList;

    iget v2, p0, Lasd;->c:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 374
    iget v1, p0, Lasd;->c:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lasd;->c:I

    .line 375
    return-object v0
.end method

.method private c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 420
    iget-object v0, p0, Lasd;->d:Ljava/util/ArrayList;

    iget v1, p0, Lasd;->c:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private d()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 445
    iget v0, p0, Lasd;->b:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-eq v0, v1, :cond_0

    .line 446
    invoke-direct {p0, v0}, Lasd;->a(I)V

    .line 445
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 448
    :cond_0
    iput v1, p0, Lasd;->c:I

    .line 449
    return-void
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 384
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lasd;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 394
    :goto_0
    monitor-exit p0

    return-void

    .line 388
    :cond_0
    :try_start_1
    iget v0, p0, Lasd;->c:I

    iget v1, p0, Lasd;->b:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_1

    .line 389
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "The stack is full"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 384
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 391
    :cond_1
    :try_start_2
    iget v0, p0, Lasd;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lasd;->c:I

    .line 392
    iget v0, p0, Lasd;->c:I

    invoke-direct {p0, v0, p1}, Lasd;->a(ILjava/lang/String;)V

    .line 393
    iget-object v0, p0, Lasd;->d:Ljava/util/ArrayList;

    iget v1, p0, Lasd;->c:I

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized b(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 424
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lasd;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 442
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 427
    :cond_1
    :try_start_1
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 429
    :goto_1
    :try_start_2
    invoke-direct {p0}, Lasd;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 430
    invoke-direct {p0}, Lasd;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 438
    :catch_0
    move-exception v0

    .line 439
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 440
    invoke-direct {p0}, Lasd;->d()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 424
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 433
    :cond_2
    :try_start_4
    invoke-direct {p0}, Lasd;->b()Ljava/lang/String;

    .line 435
    :goto_2
    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 436
    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lasd;->a(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2
.end method
