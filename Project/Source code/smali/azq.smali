.class public Lazq;
.super Ljava/lang/Object;
.source "FormatHelper.java"


# direct methods
.method public static a(Landroid/content/Context;I)Ljava/lang/String;
    .locals 9
    .parameter
    .parameter

    .prologue
    const v8, 0x7f0a0232

    const v7, 0x7f0a0231

    const/4 v1, 0x0

    .line 18
    .line 19
    const/16 v0, 0xe10

    if-le p1, v0, :cond_4

    .line 20
    div-int/lit16 v0, p1, 0xe10

    .line 21
    mul-int/lit16 v2, v0, 0xe10

    sub-int v2, p1, v2

    move v3, v0

    .line 23
    :goto_0
    const/16 v0, 0x3c

    if-lt v2, v0, :cond_3

    .line 24
    div-int/lit8 v0, v2, 0x3c

    .line 25
    mul-int/lit8 v4, v0, 0x3c

    sub-int/2addr v2, v4

    .line 28
    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 29
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 30
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 32
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    if-lez v3, :cond_1

    .line 34
    if-nez v0, :cond_0

    .line 35
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    sget-object v0, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    :goto_2
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 39
    :cond_0
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    sget-object v0, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    sget-object v0, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 44
    :cond_1
    if-lez v0, :cond_2

    .line 45
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    sget-object v0, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 48
    :cond_2
    sget-object v0, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v0, 0x7f0a0089

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v1

    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    move v3, v1

    move v2, p1

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;J)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 133
    const-wide/32 v0, 0xf4240

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 134
    const-string v0, "%.2f MB"

    new-array v1, v2, [Ljava/lang/Object;

    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    long-to-float v2, v2

    const/high16 v3, 0x447a

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lazq;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 138
    :goto_0
    return-object v0

    .line 135
    :cond_0
    const-wide/16 v0, 0x400

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    .line 136
    const-string v0, "%.2f KB"

    new-array v1, v2, [Ljava/lang/Object;

    const-wide/16 v2, 0xa

    div-long v2, p1, v2

    long-to-float v2, v2

    const/high16 v3, 0x42c8

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lazq;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 138
    :cond_1
    const-string v0, "%d B"

    new-array v1, v2, [Ljava/lang/Object;

    long-to-int v2, p1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lazq;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static varargs a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 143
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/content/Context;I)Ljava/lang/String;
    .locals 13
    .parameter
    .parameter

    .prologue
    const v12, 0x7f0a0367

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v1, 0x0

    .line 55
    .line 56
    const/16 v0, 0xe10

    if-le p1, v0, :cond_4

    .line 57
    div-int/lit16 v0, p1, 0xe10

    .line 58
    mul-int/lit16 v2, v0, 0xe10

    sub-int v2, p1, v2

    move v3, v0

    .line 60
    :goto_0
    const/16 v0, 0x3c

    if-lt v2, v0, :cond_3

    .line 61
    div-int/lit8 v0, v2, 0x3c

    .line 62
    mul-int/lit8 v4, v0, 0x3c

    sub-int/2addr v2, v4

    .line 65
    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 66
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 67
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 69
    sget-object v6, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v6, 0x7f0a0231

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 70
    sget-object v7, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v7, 0x7f0a0232

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 71
    sget-object v8, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v8, 0x7f0a0089

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 73
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    if-lez v3, :cond_1

    .line 75
    if-nez v0, :cond_0

    .line 76
    sget-object v0, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    new-array v0, v11, [Ljava/lang/Object;

    aput-object v4, v0, v1

    aput-object v6, v0, v10

    invoke-virtual {p0, v12, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    :goto_2
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 79
    :cond_0
    sget-object v0, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    new-array v0, v11, [Ljava/lang/Object;

    aput-object v4, v0, v1

    aput-object v6, v0, v10

    invoke-virtual {p0, v12, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    const-string v0, " "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    sget-object v0, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    new-array v0, v11, [Ljava/lang/Object;

    aput-object v5, v0, v1

    aput-object v7, v0, v10

    invoke-virtual {p0, v12, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 83
    :cond_1
    if-lez v0, :cond_2

    .line 84
    sget-object v0, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    new-array v0, v11, [Ljava/lang/Object;

    aput-object v5, v0, v1

    aput-object v7, v0, v10

    invoke-virtual {p0, v12, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 86
    :cond_2
    sget-object v0, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    new-array v0, v11, [Ljava/lang/Object;

    aput-object v2, v0, v1

    aput-object v8, v0, v10

    invoke-virtual {p0, v12, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    move v0, v1

    goto/16 :goto_1

    :cond_4
    move v3, v1

    move v2, p1

    goto/16 :goto_0
.end method

.method public static c(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 96
    invoke-static {p0, p1}, Lazq;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static d(Landroid/content/Context;I)Ljava/lang/String;
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 100
    .line 101
    const/16 v0, 0xe10

    if-le p1, v0, :cond_4

    .line 102
    div-int/lit16 v0, p1, 0xe10

    .line 103
    mul-int/lit16 v2, v0, 0xe10

    sub-int v2, p1, v2

    move v3, v0

    .line 105
    :goto_0
    const/16 v0, 0x3c

    if-lt v2, v0, :cond_3

    .line 106
    div-int/lit8 v0, v2, 0x3c

    .line 107
    mul-int/lit8 v4, v0, 0x3c

    sub-int/2addr v2, v4

    .line 110
    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 111
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 112
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 114
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    if-lez v3, :cond_1

    .line 116
    if-nez v0, :cond_0

    .line 117
    sget-object v0, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v0, 0x7f0a0086

    new-array v2, v7, [Ljava/lang/Object;

    aput-object v4, v2, v1

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    :goto_2
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 119
    :cond_0
    sget-object v0, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v0, 0x7f0a0084

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v4, v2, v1

    aput-object v5, v2, v7

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 120
    :cond_1
    if-lez v0, :cond_2

    .line 121
    sget-object v0, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v0, 0x7f0a0088

    new-array v2, v7, [Ljava/lang/Object;

    aput-object v5, v2, v1

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 123
    :cond_2
    sget-object v0, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v0, 0x7f0a008a

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v2, v3, v1

    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    move v3, v1

    move v2, p1

    goto :goto_0
.end method
