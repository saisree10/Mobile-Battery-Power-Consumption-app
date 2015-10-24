.class public Lbap;
.super Ljava/lang/Object;
.source "TimeUtils.java"


# direct methods
.method public static a(J)I
    .locals 2
    .parameter

    .prologue
    .line 33
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 34
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 35
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public static a()J
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 49
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 51
    const/16 v1, 0xb

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 52
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 53
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 54
    const/16 v1, 0xa

    const/16 v2, -0x18

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 55
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static a(JJ)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-static {p0, p1}, Lbap;->b(J)Lbaq;

    move-result-object v0

    invoke-static {p2, p3}, Lbap;->b(J)Lbaq;

    move-result-object v1

    invoke-static {v0, v1}, Lbap;->a(Lbaq;Lbaq;)Z

    move-result v0

    return v0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 104
    invoke-static {p0}, Lamb;->a(Landroid/content/Context;)Lamb;

    move-result-object v2

    .line 105
    invoke-virtual {v2}, Lamb;->n()Z

    move-result v3

    .line 106
    if-nez v3, :cond_1

    .line 127
    :cond_0
    :goto_0
    return v0

    .line 110
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 111
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 112
    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 113
    const/16 v5, 0xc

    invoke-virtual {v3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 114
    mul-int/lit8 v4, v4, 0x64

    add-int/2addr v3, v4

    .line 115
    invoke-virtual {v2}, Lamb;->o()[I

    move-result-object v2

    .line 117
    aget v4, v2, v1

    aget v5, v2, v0

    if-gt v4, v5, :cond_2

    .line 118
    aget v4, v2, v1

    if-lt v3, v4, :cond_0

    aget v2, v2, v0

    if-ge v3, v2, :cond_0

    move v0, v1

    .line 119
    goto :goto_0

    .line 124
    :cond_2
    aget v4, v2, v0

    if-lt v3, v4, :cond_3

    aget v2, v2, v1

    if-lt v3, v2, :cond_0

    :cond_3
    move v0, v1

    .line 125
    goto :goto_0
.end method

.method public static a(Lbaq;Lbaq;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 43
    iget v0, p0, Lbaq;->a:I

    iget v1, p1, Lbaq;->a:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lbaq;->b:I

    iget v1, p1, Lbaq;->b:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lbaq;->c:I

    iget v1, p1, Lbaq;->c:I

    if-ne v0, v1, :cond_0

    .line 44
    const/4 v0, 0x1

    .line 45
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b()J
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 59
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 60
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 61
    const/16 v1, 0xb

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 62
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 63
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 64
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static b(JJ)J
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 91
    sub-long v0, p2, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    div-long/2addr v0, v2

    .line 92
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 93
    const-wide/16 v0, 0x1

    .line 95
    :cond_0
    cmp-long v2, p2, p0

    if-lez v2, :cond_1

    .line 96
    :goto_0
    return-wide v0

    .line 95
    :cond_1
    neg-long v0, v0

    goto :goto_0
.end method

.method public static b(J)Lbaq;
    .locals 3
    .parameter

    .prologue
    .line 68
    new-instance v0, Lbaq;

    invoke-direct {v0}, Lbaq;-><init>()V

    .line 69
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 70
    invoke-virtual {v1, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 71
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, v0, Lbaq;->a:I

    .line 72
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lbaq;->b:I

    .line 73
    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, v0, Lbaq;->c:I

    .line 74
    return-object v0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 1
    .parameter

    .prologue
    .line 133
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
