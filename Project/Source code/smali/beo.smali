.class public Lbeo;
.super Lben;
.source "FitZoom.java"


# direct methods
.method public constructor <init>(Lbdr;)V
    .locals 0
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lben;-><init>(Lbdr;)V

    .line 33
    return-void
.end method


# virtual methods
.method public a()V
    .locals 14

    .prologue
    .line 39
    iget-object v0, p0, Lbeo;->a:Lbdr;

    instance-of v0, v0, Lbdz;

    if-eqz v0, :cond_6

    .line 40
    iget-object v0, p0, Lbeo;->a:Lbdr;

    check-cast v0, Lbdz;

    invoke-virtual {v0}, Lbdz;->d()Lbec;

    move-result-object v0

    if-nez v0, :cond_1

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 43
    :cond_1
    iget-object v0, p0, Lbeo;->b:Lbei;

    invoke-virtual {v0}, Lbei;->ak()I

    move-result v2

    .line 44
    iget-object v0, p0, Lbeo;->b:Lbei;

    invoke-virtual {v0}, Lbei;->ab()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 45
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_0

    .line 46
    iget-object v1, p0, Lbeo;->b:Lbei;

    invoke-virtual {v1, v0}, Lbei;->t(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 47
    iget-object v1, p0, Lbeo;->b:Lbei;

    iget-object v3, p0, Lbeo;->b:Lbei;

    invoke-virtual {v3, v0}, Lbei;->u(I)[D

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Lbei;->a([DI)V

    .line 45
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 51
    :cond_3
    iget-object v0, p0, Lbeo;->a:Lbdr;

    check-cast v0, Lbdz;

    invoke-virtual {v0}, Lbdz;->d()Lbec;

    move-result-object v0

    invoke-virtual {v0}, Lbec;->c()[Lbed;

    move-result-object v3

    .line 53
    array-length v4, v3

    .line 54
    if-lez v4, :cond_0

    .line 55
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v2, :cond_0

    .line 56
    const/4 v1, 0x4

    new-array v5, v1, [D

    fill-array-data v5, :array_0

    .line 58
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v4, :cond_5

    .line 59
    aget-object v6, v3, v1

    invoke-virtual {v6}, Lbed;->a()I

    move-result v6

    if-ne v0, v6, :cond_4

    .line 60
    const/4 v6, 0x0

    const/4 v7, 0x0

    aget-wide v7, v5, v7

    aget-object v9, v3, v1

    invoke-virtual {v9}, Lbed;->f()D

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(DD)D

    move-result-wide v7

    aput-wide v7, v5, v6

    .line 61
    const/4 v6, 0x1

    const/4 v7, 0x1

    aget-wide v7, v5, v7

    aget-object v9, v3, v1

    invoke-virtual {v9}, Lbed;->h()D

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->max(DD)D

    move-result-wide v7

    aput-wide v7, v5, v6

    .line 62
    const/4 v6, 0x2

    const/4 v7, 0x2

    aget-wide v7, v5, v7

    aget-object v9, v3, v1

    invoke-virtual {v9}, Lbed;->g()D

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(DD)D

    move-result-wide v7

    aput-wide v7, v5, v6

    .line 63
    const/4 v6, 0x3

    const/4 v7, 0x3

    aget-wide v7, v5, v7

    aget-object v9, v3, v1

    invoke-virtual {v9}, Lbed;->i()D

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->max(DD)D

    move-result-wide v7

    aput-wide v7, v5, v6

    .line 58
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 66
    :cond_5
    const/4 v1, 0x1

    aget-wide v6, v5, v1

    const/4 v1, 0x0

    aget-wide v8, v5, v1

    sub-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    const-wide/high16 v8, 0x4044

    div-double/2addr v6, v8

    .line 67
    const/4 v1, 0x3

    aget-wide v8, v5, v1

    const/4 v1, 0x2

    aget-wide v10, v5, v1

    sub-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    const-wide/high16 v10, 0x4044

    div-double/2addr v8, v10

    .line 68
    iget-object v1, p0, Lbeo;->b:Lbei;

    const/4 v10, 0x4

    new-array v10, v10, [D

    const/4 v11, 0x0

    const/4 v12, 0x0

    aget-wide v12, v5, v12

    sub-double/2addr v12, v6

    aput-wide v12, v10, v11

    const/4 v11, 0x1

    const/4 v12, 0x1

    aget-wide v12, v5, v12

    add-double/2addr v6, v12

    aput-wide v6, v10, v11

    const/4 v6, 0x2

    const/4 v7, 0x2

    aget-wide v11, v5, v7

    sub-double/2addr v11, v8

    aput-wide v11, v10, v6

    const/4 v6, 0x3

    const/4 v7, 0x3

    aget-wide v11, v5, v7

    add-double v7, v11, v8

    aput-wide v7, v10, v6

    invoke-virtual {v1, v10, v0}, Lbei;->a([DI)V

    .line 55
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .line 74
    :cond_6
    iget-object v0, p0, Lbeo;->a:Lbdr;

    check-cast v0, Lbdw;

    invoke-virtual {v0}, Lbdw;->a()Lbef;

    move-result-object v0

    .line 75
    invoke-virtual {v0}, Lbef;->w()F

    move-result v1

    invoke-virtual {v0, v1}, Lbef;->b(F)V

    goto/16 :goto_0

    .line 56
    :array_0
    .array-data 0x8
        0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xeft 0x7ft
        0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xeft 0xfft
        0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xeft 0x7ft
        0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xeft 0xfft
    .end array-data
.end method
