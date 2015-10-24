.class public Lzy;
.super Ljava/lang/Object;
.source "StringUtils.java"


# direct methods
.method public static a(Ljava/lang/String;I)I
    .locals 6
    .parameter
    .parameter

    .prologue
    const/16 v5, 0x39

    const/16 v4, 0x30

    .line 73
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 74
    const/4 v0, 0x0

    move v1, v0

    .line 77
    :goto_0
    if-ge v1, v2, :cond_1

    .line 78
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 79
    if-lt v0, v4, :cond_2

    if-gt v0, v5, :cond_2

    .line 82
    add-int/lit8 v0, v1, 0x1

    .line 83
    :goto_1
    if-ge v0, v2, :cond_0

    .line 84
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 85
    if-lt v3, v4, :cond_0

    if-gt v3, v5, :cond_0

    .line 86
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 91
    :cond_0
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 92
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 96
    :cond_1
    return p1

    .line 94
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 95
    goto :goto_0
.end method

.method public static a(Ljava/lang/String;J)J
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 124
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p1

    .line 126
    :goto_0
    return-wide p1

    .line 125
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 154
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 155
    const/4 v0, 0x0

    .line 156
    :goto_0
    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-le v2, v3, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0xa0

    if-ne v2, v3, :cond_1

    .line 157
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 158
    :cond_1
    if-lez v0, :cond_2

    .line 159
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 160
    :cond_2
    return-object p0
.end method

.method public static b(Ljava/lang/String;I)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 111
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    .line 114
    :goto_0
    return p1

    .line 113
    :catch_0
    move-exception v0

    goto :goto_0
.end method
